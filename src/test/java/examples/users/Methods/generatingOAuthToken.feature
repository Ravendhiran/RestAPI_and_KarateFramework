Feature: To get the OAuth Token for user login
 To validate the GET end point response
 
 
 Background:
 	Given url 'https://dev254312.service-now.com'
 	
 	Scenario: To get the data in JSON format and validate responses are macthing
 	Given path '/oauth_token.do'
 	And headers {Accept : 'application/json'}
 	When method get