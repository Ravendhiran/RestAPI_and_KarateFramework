package examples.users;

import com.intuit.karate.junit5.Karate;
import com.intuit.karate.junit5.Karate.Test;

class UsersRunner {
    
    @Test
    public Karate testUsers() {
        return Karate.run("QueryParam").relativeTo(getClass());
    }
    
    
    //Alternate way to mention the feature file in Runner class
    /*
      @Test
    public Karate runTestUsingClasspath() {
		return Karate.run("classpath:examples/users/response.feature");
    	
    }
     */
 
}
