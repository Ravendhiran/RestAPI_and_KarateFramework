package examples.users.Methods;

import java.io.File;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;

import org.apache.commons.io.FileUtils;

import com.intuit.karate.Results;
import com.intuit.karate.Runner;
import com.intuit.karate.junit5.Karate;
import com.intuit.karate.junit5.Karate.Test;

import net.masterthought.cucumber.Configuration;
import net.masterthought.cucumber.ReportBuilder;

class UsersRunner {
    
	@Test
	public Karate testUsers() {
	       Karate karate = Karate.run("classpath:examples/users/Methods").
	        		relativeTo(getClass()).tags("@Regression, @Smoke");
	       Results result = karate.parallel(5);
	       
	       return karate;
	      // return result;
	       
	       
	}
	
	/*
	@Test
    public void testUsers() {
       Karate karate = Karate.run("classpath:examples/users/Methods").
        		relativeTo(getClass()).tags("@Regression, @Smoke");
        
        
       Results result = karate.parallel(5);
        
    	
    	Results result = Runner.path("classpath:examples/users/Methods").outputCucumberJson(true).parallel(5);
        
        generateCucumberReport(result.getReportDir());
        
        
		
    }
    
    private void generateCucumberReport(String reportDirLocation) {
    	
    	File reportDir = new File(reportDirLocation);
    	Collection<File> jsonCollection = FileUtils.listFiles(reportDir, new String[] {"json"}, true);
    	
    	List<String> jsonFiles = new ArrayList<String>(jsonCollection.size());
    	jsonCollection.forEach(file -> jsonFiles.add(file.getAbsolutePath()));
    	
    	Configuration configuration = new Configuration(reportDir, "Karate Frameowrk");
    	ReportBuilder reportBuilder = new ReportBuilder(jsonFiles, configuration);
    	reportBuilder.generateReports();
    	
    	
    }
    */
    
    //Alternate way to mention the feature file in Runner class
    /*
      @Test
    public Karate runTestUsingClasspath() {
		return Karate.run("classpath:examples/users/response.feature");
    	
    }
     */
 
}
