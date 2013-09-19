/**
 * 
 */
package org.vme.service.search.vme;

import org.vme.service.dto.FetchLodUrlResponse;

/**
 * @author Erik van Ingen
 * 
 */
public interface FlodService {

	public FetchLodUrlResponse fetchLodUrl(String codeList, String code) throws Exception;

}
