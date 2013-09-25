package org.flod.client;

import org.flod.service.test.FlodAbstractServiceTest;
import org.jglue.cdiunit.AdditionalClasses;
import org.jglue.cdiunit.CdiRunner;
import org.junit.runner.RunWith;

@RunWith(CdiRunner.class)
@AdditionalClasses(FlodClientGet.class)
public class FlodClientGetTest extends FlodAbstractServiceTest {

}
