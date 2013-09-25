package org.flod.service;

import javax.inject.Inject;

import org.flod.service.dto.FlodService;
import org.flod.service.test.FlodAbstractServiceTest;
import org.jglue.cdiunit.AdditionalClasses;
import org.jglue.cdiunit.CdiRunner;
import org.junit.Before;
import org.junit.runner.RunWith;

@RunWith(CdiRunner.class)
@AdditionalClasses(FlodServiceImpl.class)
public class FlodServiceImplTest extends FlodAbstractServiceTest {

	@Inject
	FlodService flodService;

	@Before
	public void before() {
		this.service = flodService;
	}

}
