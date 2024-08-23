package examples.users;

import org.junit.jupiter.api.Test;

import com.intuit.karate.Results;
import com.intuit.karate.Runner.Builder;

public class parallerRunnerwithExtentReport {
	@Test
	public void executeKarateTest() {
		
		Builder runner = new Builder();
		runner.path("classpath:examples/users");
		runner.tags("@Smoke,@Regression");
		Results result = runner.parallel(5);
		
	
		
		
		
	}
	
}
