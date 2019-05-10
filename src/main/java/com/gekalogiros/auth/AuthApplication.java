package com.gekalogiros.auth;

import org.flywaydb.core.Flyway;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.EnableAutoConfiguration;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpMethod;
import org.springframework.http.MediaType;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.reactive.function.client.WebClient;
import reactor.core.publisher.Mono;

import java.util.concurrent.CompletableFuture;

@SpringBootApplication
@EnableAutoConfiguration
@RestController
@ComponentScan("com.gekalogiros.*")
public class AuthApplication {

    public static void main(String[] args) {
        Flyway.configure()
                .dataSource("jdbc:h2:file:./target/foobar", "sa", null)
                .load()
                .migrate();
        SpringApplication.run(AuthApplication.class, args);
    }
}

