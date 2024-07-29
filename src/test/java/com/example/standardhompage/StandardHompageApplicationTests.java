package com.example.standardhompage;

import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

import standardhompage.service.UserService;

@SpringBootTest
class StandardHompageApplicationTests {

	@Autowired
	SiteService siteService;

	@Test
	void contextLoads() {
	}

}
