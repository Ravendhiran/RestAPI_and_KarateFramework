package Validation;

import com.intuit.karate.junit5.Karate;
import com.intuit.karate.junit5.Karate.Test;

public class testRunner {
	  @Test
	    public Karate testUsers() {
	        return Karate.run("fileUpload").relativeTo(getClass());
	    }
	    
}
