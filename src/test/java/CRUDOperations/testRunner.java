package CRUDOperations;

import com.intuit.karate.junit5.Karate;
import com.intuit.karate.junit5.Karate.Test;

public class testRunner {
	  @Test
	    public Karate testUsers() {
	        return Karate.run("postWithExternalFile").relativeTo(getClass());
	    }
	    
}
