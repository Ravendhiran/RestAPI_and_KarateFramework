Feature: To validate the GET method
 To validate the GET end point response
 
 Background:
 	Given url 'https://simple-books-api.glitch.me'
 	
 	Scenario: To get the data in JSON format and validate responses are macthing
 	Given path '/books/6'
 	And header Accept = 'application/json'
 	When method get
 	Then status 200
 	And print response
 	And match response == 
 	"""
 	{
  "id": 6,
  "name": "Viscount Who Loved Me",
  "author": "Julia Quinn",
  "type": "fiction",
  "price": 15.6,
  "current-stock": 1021,
  "available": true
}
 	"""
 	
 	Scenario: To get the data in JSON format and validate responses are not macthing
 	Given path '/books/6'
 	And header Accept = 'application/json'
 	When method get
 	Then status 200
 	And print response
 	And match response != 
 	"""
 	{
  "id": 61,
  "name": "Viscount Who Loved Me",
  "author": "Julia Quinn",
  "type": "fiction",
  "price": 15.6,
  "current-stock": 1021,
  "available": true
}
 	"""
 	
 	Scenario: To get the data in JSON format and validate responses contains Julia Quinn
 	Given path '/books/6'
 	And header Accept = 'application/json'
 	When method get
 	Then status 200
 	And print response
 	And match response contains {"author": "Julia Quinn"}
 	And match header Connection == 'keep-alive'
 	And match header Content-Length == '130'
 	And match header Content-Type == 'application/json; charset=utf-8'
 	And match response.name == "Viscount Who Loved Me"
 	