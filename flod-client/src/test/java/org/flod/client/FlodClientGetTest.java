package org.flod.client;

import org.flod.service.test.FlodAbstractServiceTest;
import org.junit.Before;

public class FlodClientGetTest extends FlodAbstractServiceTest {

	@Before
	public void before() {
		this.service = new FlodClientGet();
	}

}
