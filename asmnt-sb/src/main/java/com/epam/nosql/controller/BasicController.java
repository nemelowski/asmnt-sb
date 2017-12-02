package com.epam.nosql.controller;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.epam.nosql.model.Airport;

@RestController
@RequestMapping(path = "/airport")
public class BasicController
{
    @GetMapping
    public Airport retrieveAirport()
    {
        return new Airport("minsk1");
    }
}
