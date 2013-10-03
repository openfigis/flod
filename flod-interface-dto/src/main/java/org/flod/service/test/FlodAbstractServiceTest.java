package org.flod.service.test;

import javax.inject.Inject;
import org.flod.service.dto.FetchURIresponse;
import org.flod.service.dto.FlodService;
import org.junit.Test;
import static org.junit.Assert.*;


public abstract class FlodAbstractServiceTest {

	private String URI = "http://www.fao.org/figis/flod/entities/codedentity/3ff3592a-a24e-4da9-9ba7-983c09355018";

	@Inject
	protected FlodService flodService;

	@Test
	public void testFetchLodUrl() {
		String codeList = "asfis";
		String code = "TUN";
		FetchURIresponse response = flodService.fetchURI(codeList, code);
		assertEquals(URI, response.getURI().toString());
	}
}
