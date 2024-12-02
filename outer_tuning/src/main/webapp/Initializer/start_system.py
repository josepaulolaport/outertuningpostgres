from flask import Flask, render_template, request, redirect, url_for
import subprocess
import time
import os,json

app = Flask(__name__)

# Defina o caminho para o diretório onde os comandos precisam ser executados
COMMAND_DIR = './../../../../'

def run_commands_in_directory(directory, commands):
    original_dir = os.getcwd()  # Save the original directory
    try:
        os.chdir(directory)  # Temporarily change to the target directory
        # Execute each command in the list
        for command in commands:
            subprocess.run(command, shell=True)
            time.sleep(5)  # Simulating delay between commands
    finally:
        os.chdir(original_dir)  # Always return to the original directory

@app.route('/')
def index():
    run_commands_in_directory(COMMAND_DIR, [
    "make stop"
    ])
    return render_template('index.html')

@app.route('/submit-config', methods=['POST'])
def submit_config():
    # Recuperar os dados do formulário
    dbms = request.form.get('dbms')
    database = request.form.get('database')
    host = request.form.get('host')
    port = request.form.get('port')
    user = request.form.get('user')
    password = request.form.get('password')
    tna = request.form.get('tna')

    run_commands_in_directory(COMMAND_DIR, [
    f"export DBMS={dbms}"
    ])

    # Criar o conteúdo para os arquivos de configuração
    config_content = f"""{{"dbms": "{dbms}", "database": "{database}", "host": "{host}", "port": "{port}", "user": "{user}", "password": "{password}", "tna": "{tna}"}}"""

    # Definir os caminhos dos arquivos de configuração
    mysql_config_path = os.path.join('./../../../..', 'docker-compose', 'tpch_workload_executor', 'mysql.config')
    mysql_docker_config_path = os.path.join('./../../../..', 'docker-compose', 'tpch_workload_executor', 'mysql_docker.config')

    # Salvar os dados no arquivo mysql.config
    with open(mysql_config_path, 'w') as file:
        file.write(config_content)

    # Salvar os dados no arquivo mysql_docker.config
    with open(mysql_docker_config_path, 'w') as file:
        file.write(config_content)

    # Após salvar as configurações, redirecionar para a página de carregamento
    return redirect(url_for('loading'))

@app.route('/loading')
def loading():
    return render_template('loading.html')

@app.route('/configure')
def configure():
    try:

        mysql_config_path = os.path.join('./../../../..', 'docker-compose', 'tpch_workload_executor', 'mysql.config')
        with open(mysql_config_path, 'r') as file:
            config_content = file.read()

        try:
            config_json = json.loads(config_content)
            print(config_json)
        except json.JSONDecodeError:
            print("The content of the configuration file is not in a valid JSON format.")
        dbsm = config_json.get("dbms")
        
        # Executa os comandos necessários
        run_commands_in_directory(COMMAND_DIR, [
            "make stop",
            "docker system prune -a -f",
            f"./mvnw clean install -P docker-{dbsm} -DskipTests -f pom.xml",
            "make image",
            "make deploy"
        ])

        # Simula um tempo de carregamento
        time.sleep(5)
        
        # Redireciona para o sistema (localhost)
        return redirect('http://localhost/')
    except Exception as e:
        return f"Erro ao configurar o sistema: {e}"

if __name__ == '__main__':
    app.run(debug=True)
