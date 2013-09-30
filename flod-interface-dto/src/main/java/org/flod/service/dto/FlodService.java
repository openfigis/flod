/**
 * 
 */
package org.flod.service.dto;

import org.flod.service.dto.FetchURIresponse;

/**
 * @author Erik van Ingen
 * 
 */
public interface FlodService {

	public FetchURIresponse fetchURI(String codeList, String code);

}
