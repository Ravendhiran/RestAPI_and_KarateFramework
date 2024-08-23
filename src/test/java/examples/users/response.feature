@Smoke
Feature: To validate the GET method
 To validate the GET end point response
 
 Background:
 	Given url 'https://simple-books-api.glitch.me'
 	
 	
 	Scenario: To get the data in JSON format
 	Given path '/books/6'
 	And header Accept = 'application/json'
 	When method get
 	Then status 200
 	And print response
 	
 	
 	Scenario: To get the data in XML format
 	Given path '/books/6'
 	And header Accept = 'application/xml'
 	When method get
 	Then status 200
 	And print response
 
