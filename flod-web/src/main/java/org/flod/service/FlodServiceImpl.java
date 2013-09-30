package org.flod.service;

import java.net.URL;
import java.util.Map;

import org.flod.service.dto.FetchURIresponse;
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
	public FetchURIresponse fetchURI(String codeList, String code) {
		// precondition
		if (!codeList.equals("asfis")) {
			throw new FlodException("Yet only asfis is supported");
		}
		if (!map.containsKey(code)) {
			throw new FlodException("No url found for this asfis code");
		}

		// logic
		FetchURIresponse r = new FetchURIresponse();
		r.setURI(map.get(code.toUpperCase()));

		// postcondition

		return r;
	}
}
