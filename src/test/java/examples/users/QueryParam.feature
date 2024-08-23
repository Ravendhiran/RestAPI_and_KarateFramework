Feature: To validate the GET method
 To validate the GET end point response
 
 Background:
 	Given url 'https://dev254312.service-now.com/api/now/table/'
 	
 
 	Scenario: To get the data in JSON format
 	Given path 'incident'
 	And param number = 'INC0009002'
 	And headers {Accept : 'application/json', Authorization: 'Basic YWRtaW46U2Z5QVhhQnE0Kjcr' }
 	When method get
 	Then status 200
 	And print response