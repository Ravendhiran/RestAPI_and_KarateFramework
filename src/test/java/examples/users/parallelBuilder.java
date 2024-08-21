package examples.users;

import org.junit.jupiter.api.Test;
import com.intuit.karate.Runner.Builder;

public class parallelBuilder {
	
	@Test
	public void executeKarateTest() {
		
		Builder runner = new Builder();
		runner.path("classpath:examples/users");
		runner.parallel(5);
	}

}
