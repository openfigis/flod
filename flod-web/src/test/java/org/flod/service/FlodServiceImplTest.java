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

	@Inject
	FlodService flodService;

	@Test
	public void testFetchLodUrl() {
		String codeList = "ASFIS";
		String code = "TUN";
		FetchLodUrlResponse response = flodService.fetchLodUrl(codeList, code);
		assertEquals(FlodServiceImpl.URL, response.getLodUrl().toString());
	}
}
