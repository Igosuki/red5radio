package com.gepsensradio.ws;

import java.net.URI;

import javax.ws.rs.core.UriBuilder;

public class HelloClientTest {
	
	private static final int[] LICENSE_CHARS = { 11, 0, 8, 12, 26, 2, 3, 25, 1 };
	
	private static final String LK = "7P9EJDVXZE1J99DEH554QNY53ZERZERTYY";
	
	public static void main(String[] args) {
//		ClientConfig config = new DefaultClientConfig();
//		Client client = Client.create(config);
//		WebResource service = client.resource(getBaseURI());
//		// Fluent interfaces
//		System.out.println(service.path("rest").path("media/xml").path("1").accept(
//				MediaType.TEXT_PLAIN).get(ClientResponse.class).toString());
//		// Get plain text
//		System.out.println(service.path("rest").path("media/xml").path("1").accept(
//				MediaType.TEXT_PLAIN).get(String.class));
		// Get XML
//		System.out.println(service.path("rest").path("media/xml").path("8").accept(
//				MediaType.APPLICATION_XML).get(String.class));
//		// The HTML
//		System.out.println(service.path("rest").path("media/xml").path("1").accept(
//				MediaType.TEXT_HTML).get(String.class));

		lkTests();
	}

	  static public void lkTests() {
		  System.out.println(getLicenseName());
		  System.out.println(createLicenseKey(LK));
	  }
	  
	  private static String getLicenseName()
	  {
	    if (validateLicenseKey(LK)) {
	      int index = "123456789ABCDEFGHJKLMNPQRSTUVWXYZ".indexOf(LK.charAt(0)) % 5;

	      if ((index == 1) || (index == 4)) {
	        return "gepsensradio.com";
	      }
	    }
	    return "";
	  }

	  private static String createLicenseKey(String licenseKey)
	  {
	    if (validateLicenseKey(licenseKey)) {
	      StringBuilder sb = new StringBuilder();
	      for (int i : LICENSE_CHARS) {
	        sb.append(licenseKey.charAt(i));
	      }
	      return sb.toString();
	    }
	    return "";
	  }

	  private static boolean validateLicenseKey(String licenseKey)
	  {
	    return (licenseKey != null) && (licenseKey.length() == 34);
	  }

	
	private static URI getBaseURI() {
		return UriBuilder.fromUri(
				"http://localhost:8080/rc").build();
	}
	
}