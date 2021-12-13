#language:en

Feature: VR API

Scenario: Get one Type of Establishment

    When a Get request is made 
    Then the response has the key "typeOfEstablishment"
    And one Type of Establishment is printed