package org.flod.service;

import java.net.MalformedURLException;
import java.net.URL;

import org.flod.service.dto.FetchLodUrlResponse;

/**
 * @author Erik van Ingen
 * 
 */

public class FlodServiceImpl implements FlodService {

	public static final String URL = "http://www.fao.org/figis/flod/ws/codelist/asfis/code/TUN/789";

	@Override
	public FetchLodUrlResponse fetchLodUrl(String codeList, String code) {

		FetchLodUrlResponse r = new FetchLodUrlResponse();
		URL url;
		try {
			url = new URL(URL);
		} catch (MalformedURLException e) {
			throw new FlodException(e);
		}
		r.setLodUrl(url);

		return r;
	}
}
