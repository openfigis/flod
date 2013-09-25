package org.flod.service;

import static org.junit.Assert.assertEquals;

import javax.inject.Inject;

import org.flod.service.dto.FetchLodUrlResponse;
import org.jglue.cdiunit.AdditionalClasses;
import org.jglue.cdiunit.CdiRunner;
import org.junit.Test;
import org.junit.runner.RunWith;

@RunWith(CdiRunner.class)
@AdditionalClasses(FlodServiceImpl.class)
public class FlodServiceImplTest {

	private String URL = "http://www.fao.org/figis/flod/entities/codedentity/3ff3592a-a24e-4da9-9ba7-983c09355018";

	@Inject
	FlodService flodService;

	@Test
	public void testFetchLodUrl() {
		String codeList = "ASFIS";
		String code = "TUN";
		FetchLodUrlResponse response = flodService.fetchLodUrl(codeList, code);
		assertEquals(URL, response.getLodUrl().toString());
	}
}
