package examples.users;

import org.junit.jupiter.api.Test;

import com.intuit.karate.junit5.Karate;





public class parallelRunner {
	
	@Test
	public void executeKarateTest() {
		
		Karate.run("classpath:examples/users").tags("@Smoke","@Regression").parallel(5);
		
		
		
	}

}
