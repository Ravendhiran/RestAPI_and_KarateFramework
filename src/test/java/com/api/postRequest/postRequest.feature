Feature: To create the data and validate the POST response 
  To validate the POST response

  Background: Setup the Base path
    Given url 'https://dev203779.service-now.com/api/now/table/'

  Scenario: To create the data and validate JSON response
    Given path 'incident'
    And headers { Authorization:'Basic YWRtaW46b20kN01tS2dDNEgl', Accept:'application/json', Content-Type:'application/json' }
    #Request body should be in a single line
    And request {"short_description": "Laptop Service", "description": "Laptop charging problem"}
    When method post
    Then status 201
    Then print response
    
  
   