Feature: To validate the POST method
 To validate the POST response
 
 Background:
 	Given url 'https://dev254312.service-now.com/api/now/table/'
 	
 	Scenario: To post the data using JSON format
 	Given path 'incident'
 	And headers { Accept: "application/json",Content-Type: "application/json", Authorization:"Basic YWRtaW46U2Z5QVhhQnE0Kjcr"}
 	And request {    "short_description": "Laptop Service",    "description": "Laptop charging problem"}
 	When method post
 	Then status 201
 	And print response