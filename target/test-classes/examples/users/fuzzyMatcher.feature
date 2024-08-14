Feature: To validate the GET method
 To validate the GET end point response
 
 Background:
 	Given url 'https://simple-books-api.glitch.me'
 	
 	Scenario: To get the data in JSON format and validate using Fuzzy Matcher
 	Given path '/books/6'
 	And header Accept = 'application/json'
 	When method get
 	Then status 200
 	And print response
 	And match response.name == "#present"
 	And match response.name == "#notnull"