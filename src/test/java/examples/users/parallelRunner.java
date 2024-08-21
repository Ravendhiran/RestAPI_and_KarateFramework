package examples.users;

import org.junit.jupiter.api.Test;

import com.intuit.karate.Runner;
import com.intuit.karate.Runner.Builder;


public class parallelRunner {
	
	@Test
	public void executeKarateTest() {
		
		//Runner.parallel(getClass(),5);
		
		Builder runner = new Builder();
		runner.path("classpath:examples/users");
		runner.parallel(7);
		
	}

}
