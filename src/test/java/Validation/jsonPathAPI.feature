Feature: To validate the JSONPath API expressions
 To validate the JSONPath API expressions from response
 
 Background:
 	Given url 'https://simple-books-api.glitch.me'
 	
 	Scenario: To get the data from response and match using JSONPath API expressions
 	Given path '/books/6'
 	And header Accept = 'application/json'
 	When method get
 	Then status 200
 	And print response
 	* def resID = karate.jsonPath(response,"$.id")
 	And match resID == 6
 		* def resAuthor = karate.jsonPath(response,"$.author")
 	And match resAuthor == "Julia Quinn"
 	
 	
 	Scenario: To get the data from response and match using JSONPath API expressions
 	Given path '/books'
 	And header Accept = 'application/json'
 	When method get
 	Then status 200
 	* def response = 
"""
{
  "store": {
    "book": [
      { "category": "fiction", "title": "The Great Gatsby", "price": 10.99 },
      { "category": "fiction", "title": "1984", "price": 8.99 },
      { "category": "non-fiction", "title": "Sapiens", "price": 15.99 },
      { "category": "fiction", "title": "Brave New World", "price": 7.99 }
    ],
    "bicycle": { "color": "red", "price": 19.95 }
  }
}
"""
* def bookTitles = karate.jsonPath(response,"$.store.book[*].title")
And match bookTitles == ['The Great Gatsby', '1984', 'Sapiens', 'Brave New World']

 
 	
 
 	
