package org.flod.service.test;

import static org.junit.Assert.assertEquals;

import org.flod.service.dto.FetchLodUrlResponse;
import org.flod.service.dto.FlodService;
import org.junit.Test;

public abstract class FlodAbstractServiceTest {

	private String URL = "http://www.fao.org/figis/flod/entities/codedentity/3ff3592a-a24e-4da9-9ba7-983c09355018";

	protected FlodService service;

	@Test
	public void testFetchLodUrl() {
		String codeList = "ASFIS";
		String code = "TUN";
		FetchLodUrlResponse response = service.fetchLodUrl(codeList, code);
		assertEquals(URL, response.getLodUrl().toString());
	}
}
