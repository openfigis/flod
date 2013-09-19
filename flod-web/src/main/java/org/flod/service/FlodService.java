/**
 * 
 */
package org.flod.service;

import org.flod.service.dto.FetchLodUrlResponse;

/**
 * @author Erik van Ingen
 * 
 */
public interface FlodService {

	public FetchLodUrlResponse fetchLodUrl(String codeList, String code) throws Exception;

}
