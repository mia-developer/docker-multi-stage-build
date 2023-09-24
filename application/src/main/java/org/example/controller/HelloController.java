package org.example.controller;

import org.example.Hello;
import org.springframework.web.bind.annotation.*;

@RestController
@RequestMapping("/hello")
public class HelloController {

    @GetMapping
    public String hello() {
        return Hello.result;
    }
}
