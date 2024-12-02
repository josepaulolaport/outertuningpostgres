package demo;

import org.springframework.web.bind.annotation.*;

@RestController
@RequestMapping("/api")
public class ApiController {

    @PostMapping("/receiveData")
    public String receiveData(@RequestBody String jsonPayload) {
        // Aqui você pode adicionar lógica para processar os JSONs recebidos
        System.out.println("Received JSON: " + jsonPayload);
        return "JSON received successfully!";
    }
}
