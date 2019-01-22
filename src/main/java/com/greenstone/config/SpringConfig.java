package com.greenstone.config;

import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;

@Configuration
@ComponentScan(basePackages = {"com.greenstone.service", "com.greenstone.dao", "com.greenstone.validator"})
public class SpringConfig {
}