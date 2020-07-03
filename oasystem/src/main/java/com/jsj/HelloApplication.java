package com.jsj;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

@SpringBootApplication  //本注解是用来标注一个主程序类，说明它是一个springboot应用
public class HelloApplication {

    public static void main(String[] args) {

        //Springboot应用启动程序
        SpringApplication.run(HelloApplication.class, args);

    }

}