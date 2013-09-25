package org.flod.service;

import java.net.URL;
import java.util.Map;

import org.flod.service.dto.FetchLodUrlResponse;
import org.flod.service.dto.FlodService;

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
		// precondition
		if (!codeList.equals("asfis")) {
			throw new FlodException("Yet only asfis is supported");
		}
		if (!map.containsKey(code)) {
			throw new FlodException("No url found for this asfis code");
		}

		// logic
		FetchLodUrlResponse r = new FetchLodUrlResponse();
		r.setLodUrl(map.get(code));

		// postcondition

		return r;
	}
}
