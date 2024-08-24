Feature: To validate the GET method
 To validate the GET end point response
 	
 	Scenario Outline: To get the data using Data Driven test data with CSV file
 	Given url "<url>"
 	Given path "<path>"
 	And header Accept = 'application/json'
 	When method get
 	Then status <status>
 	And print response
 	
 	Examples:
 	|read("testData.csv")|
 	
 	
 	Scenario Outline: To get the data using Data Driven test data
 	Given url "<url>"
 	Given path "<path>"
 	And header Accept = 'application/json'
 	When method get
 	Then status <status>
 	And print response
 	
 	Examples:
 	|url|path|status|
 	|https://simple-books-api.glitch.me|/books/6|200|
 	|https://simple-books-api.glitch.me|/books/1|200|
 	|https://simple-books-api.glitch.me|/books/2|200|
 	
 	
 	