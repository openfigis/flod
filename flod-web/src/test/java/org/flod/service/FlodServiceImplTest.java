package org.flod.service;

import org.flod.service.test.FlodAbstractServiceTest;
import org.jglue.cdiunit.AdditionalClasses;
import org.jglue.cdiunit.CdiRunner;
import org.junit.runner.RunWith;

@RunWith(CdiRunner.class)
@AdditionalClasses(FlodServiceImpl.class)
public class FlodServiceImplTest extends FlodAbstractServiceTest {

	// @Inject
	// FlodService flodService;
	//
	// @Before
	// public void before() {
	// this.service = flodService;
	// }

}
