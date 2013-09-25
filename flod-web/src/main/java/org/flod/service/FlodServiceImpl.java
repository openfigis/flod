package org.flod.service;

import java.net.URL;
import java.util.Map;

import org.flod.service.dto.FetchLodUrlResponse;

/**
 * @author Erik van Ingen
 * 
 */

public class FlodServiceImpl implements FlodService {

	private static Map<String, URL> map;

	static {
		CsvFileParser csvFile = new CsvFileParser();
		map = csvFile.read();
	}

	@Override
	public FetchLodUrlResponse fetchLodUrl(String codeList, String code) {
		FetchLodUrlResponse r = new FetchLodUrlResponse();
		r.setLodUrl(map.get(code));
		return r;
	}
}
