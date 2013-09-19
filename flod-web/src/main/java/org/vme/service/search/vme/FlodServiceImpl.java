package org.vme.service.search.vme;

import java.net.URL;

import org.vme.service.dto.FetchLodUrlResponse;

/**
 * @author Erik van Ingen
 * 
 */
public class FlodServiceImpl implements FlodService {

	@Override
	public FetchLodUrlResponse fetchLodUrl(String codeList, String code) throws Exception {

		FetchLodUrlResponse r = new FetchLodUrlResponse();
		URL url = new URL("www.fao.org/figis/flod/ws/codelist/asfis/code/TUN/789-354-Wjdfksahf");
		r.setLodUrl(url);

		return r;
	}
}
