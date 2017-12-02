package com.epam.nosql.controller

import spock.lang.Specification

class BasicControllerTest extends Specification {

    def 'Call the controller'() {
        expect: 'Airport retrieved'
        BasicController controller = new BasicController();
        controller.retrieveAirport().name == 'minsk1';
    }

}