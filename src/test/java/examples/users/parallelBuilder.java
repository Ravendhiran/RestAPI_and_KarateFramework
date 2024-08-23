package examples.users;

import java.io.File;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;

import org.apache.commons.io.FileUtils;
import org.junit.jupiter.api.Test;

import com.intuit.karate.Results;
import com.intuit.karate.Runner;
import com.intuit.karate.Runner.Builder;

import net.masterthought.cucumber.Configuration;
import net.masterthought.cucumber.ReportBuilder;

public class parallelBuilder {
	
	@Test
	public void executeKarateTest() {
		
		Builder runner = new Builder();
		runner.path("classpath:examples/users");
		runner.tags("@Smoke,@Regression");
		Results result = runner.parallel(5);
		
	
		generateCucumberReport(result.getReportDir());
		
		
	}
	
private void generateCucumberReport(String reportDirLocation) {
    	
    	File reportDir = new File(reportDirLocation);
    	Collection<File> jsonCollection = FileUtils.listFiles(reportDir, new String[] {"json"}, true);
    	
    	List<String> jsonFiles = new ArrayList<String>();
    	jsonCollection.forEach(file -> jsonFiles.add(file.getAbsolutePath()));
    	
    	Configuration configuration = new Configuration(reportDir, "Karate Frameowrk");
    	ReportBuilder reportBuilder = new ReportBuilder(jsonFiles, configuration);
    	reportBuilder.generateReports();
    	
    	
    }

}
