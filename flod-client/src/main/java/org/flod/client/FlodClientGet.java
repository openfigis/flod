package org.flod.client;

import javax.ws.rs.core.MediaType;

import org.flod.service.dto.FetchURIresponse;
import org.flod.service.dto.FlodService;

import com.sun.jersey.api.client.Client;
import com.sun.jersey.api.client.ClientResponse;
import com.sun.jersey.api.client.WebResource;
import com.sun.jersey.api.client.config.ClientConfig;
import com.sun.jersey.api.client.config.DefaultClientConfig;
import com.sun.jersey.api.json.JSONConfiguration;

public class FlodClientGet implements FlodService {

    public FetchURIresponse fetchURI(String codeList, String code) {
        ClientConfig clientConfig = new DefaultClientConfig();
        clientConfig.getFeatures().put(JSONConfiguration.FEATURE_POJO_MAPPING, Boolean.TRUE);
        Client client = Client.create(clientConfig);

        WebResource webResource = client.resource("http://localhost:8080/flod-web/webservice/codelist/asfis/code/TUN/uri");

        ClientResponse response = webResource.accept(MediaType.APPLICATION_JSON).get(ClientResponse.class);

        if (response.getStatus() != 200) {
            throw new RuntimeException("Failed : HTTP error code : " + response.getStatus());
        }

        FetchURIresponse fetchLodUrlResponse = response.getEntity(FetchURIresponse.class);

        return fetchLodUrlResponse;
    }
}
