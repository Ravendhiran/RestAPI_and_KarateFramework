package com.api.postRequest;

import com.intuit.karate.junit5.Karate;
import com.intuit.karate.junit5.Karate.Test;

public class TestRunner {
	@Test
	public Karate testRun() {
		return Karate.run("postRequest").relativeTo(getClass());
	}

}
