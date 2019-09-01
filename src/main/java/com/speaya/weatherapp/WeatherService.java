package com.speaya.weatherapp;

import com.netflix.hystrix.contrib.javanica.annotation.HystrixCommand;
import org.springframework.stereotype.Service;
import org.springframework.web.client.RestTemplate;

import javax.inject.Inject;

@Service
public class WeatherService {
    @Inject
    private RestTemplate restTemplate;

    @HystrixCommand(fallbackMethod = "unknow")
    public String getWeather(){
        return  restTemplate.getForEntity("http://weather-service/weather", String.class).getBody();
    }
    public String unknow(){
        return "Service is not available right now";
    }
}
