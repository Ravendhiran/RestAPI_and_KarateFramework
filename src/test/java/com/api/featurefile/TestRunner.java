package com.api.featurefile;

import com.intuit.karate.junit5.Karate;
import com.intuit.karate.junit5.Karate.Test;

public class TestRunner {

	@Test
	public Karate testRun() {
		return Karate.run("Test").relativeTo(getClass());
	}
}
