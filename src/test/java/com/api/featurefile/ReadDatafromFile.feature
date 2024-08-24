Feature: To validate the GET end point 
  To validate the GET end point response

  Background: Setup the Base path
    Given url 'https://dev254312.service-now.com/now/table/'

  Scenario: To access the GET end point in JSON format
    Given path 'incident/5c87334b83b74210c8d696d6feaad359'
    And headers { Authorization:'Basic YWRtaW46U2Z5QVhhQnE0Kjcr', Accept:'application/json' }
    When method get 
    Then status 200

    * def actualResponse = read("JSONresponse.json")
		And print actualResponse
		And print response