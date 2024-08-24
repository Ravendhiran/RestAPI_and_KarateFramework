Feature: To validate the File Upload method
 To validate the File Upload method and response
 
 Background:
 	Given url 'https://v2.convertapi.com'
 	
 	Scenario: To validate the File Upload method and response
 	Given path '/upload'
 	And multipart file file2 = {read:'../logback-test.xml', filename:'logback-test.xml',Content-Type: 'multipart/form-data' }
 	When method post
 	Then status 200
 	And print response
 	
 