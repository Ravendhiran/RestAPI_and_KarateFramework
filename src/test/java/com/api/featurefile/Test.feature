Feature: To validate the GET end point 
  To validate the GET end point response

  Background: Setup the Base path
    Given url 'https://simple-books-api.glitch.me/'

  Scenario: To access the GET end point in JSON format
    Given path 'books/6'
    
    And headers {Accept:'application/json' }
    When method get 
    Then status 200
    Then print response
    And match response ==
    """
    {
  "current-stock": 1021,
  "author": "Julia Quinn",
  "price": 15.6,
  "name": "Viscount Who Loved Me",
  "available": true,
  "id": 6,
  "type": "fiction"
}
"""

Scenario: To access the GET end point in JSON format
    Given path 'books/6'
    
    And headers {Accept:'application/json' }
    When method get 
    Then status 200
    Then print response
    * def actualResponse = read("JSONresponse.json")
    And match response == actualResponse
    And print actualResponse