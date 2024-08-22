package examples.users.Methods;

import com.intuit.karate.Results;
import com.intuit.karate.junit5.Karate;
import com.intuit.karate.junit5.Karate.Test;

class UsersRunner {
    
    @Test
    public Results testUsers() {
        return Karate.run("classpath:examples/users/Methods").
        		relativeTo(getClass()).tags("@Regression","~@Smoke").parallel(5);
        System.out.println(relativeTo(getClass()));
		
    }
    
    
    //Alternate way to mention the feature file in Runner class
    /*
      @Test
    public Karate runTestUsingClasspath() {
		return Karate.run("classpath:examples/users/response.feature");
    	
    }
     */
 
}
