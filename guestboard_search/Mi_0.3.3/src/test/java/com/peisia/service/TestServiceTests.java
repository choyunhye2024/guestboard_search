package com.peisia.service;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import lombok.Setter;
import lombok.extern.log4j.Log4j;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")
@Log4j
public class TestServiceTests {

	@Setter(onMethod_ = @Autowired)
	private TestService service;

	@Test
	public void testService() {
		String s1 = service.getOne();
		String s2 = service.getTwo();
		int n1 = Integer.parseInt(s1);
		int n2 = Integer.parseInt(s2);
		int sum = n1 + n2;
		log.info("(서비스 테스트임 ) 1+2 는 =========================:" + sum);
	}

}
