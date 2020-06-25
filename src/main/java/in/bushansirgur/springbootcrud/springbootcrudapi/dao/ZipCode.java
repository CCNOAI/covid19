package in.bushansirgur.springbootcrud.springbootcrudapi.dao;

import java.net.HttpURLConnection;
import java.net.URL;
import java.util.Scanner;
import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;

public class ZipCode
{
	//int zipcode = 21113;
	
	public static String MainTest(int zipcode)
	{
		//inline will store the JSON data streamed in string format
		String inline = "";
		String str_data1 = null;
	
		try
		{
			URL url = new URL("https://us-zipcode.api.smartystreets.com/lookup?auth-id=4e4b5d19-c758-3479-70fc-53b64670c41e&auth-token=REuQSLZRTIBlfw3dz3rp&city=&state=&zipcode=" + zipcode);
			//Parse URL into HttpURLConnection in order to open the connection in order to get the JSON data
			HttpURLConnection conn = (HttpURLConnection)url.openConnection();
			//Set the request to GET or POST as per the requirements
			conn.setRequestMethod("GET");
			//Use the connect method to create the connection bridge
			conn.connect();
			//Get the response status of the Rest API
			int responsecode = conn.getResponseCode();
			System.out.println("Response code is: " +responsecode);
			
			//Iterating condition to if response code is not 200 then throw a runtime exception
			//else continue the actual process of getting the JSON data
			if(responsecode != 200)
				throw new RuntimeException("HttpResponseCode: " +responsecode);
			else
			{
				//Scanner functionality will read the JSON data from the stream
				Scanner sc = new Scanner(url.openStream());
				while(sc.hasNext())
				{
					inline+=sc.nextLine();
				}
				System.out.println("\nJSON Response in String format"); 
				System.out.println(inline);
				//Close the stream when reading the data has been finished
				sc.close();
			}
			
			//JSONParser reads the data from string object and break each data into key value pairs
			JSONParser parse = new JSONParser();
			//Type caste the parsed json data in json object
			org.json.simple.JSONArray jobj = (org.json.simple.JSONArray)parse.parse(inline);
			//Store the JSON object in JSON array as objects (For level 1 array element i.e Results)
			//JSONArray jsonarr_1 = (JSONArray) jobj.get("city_states");
			//Get data for Results array
			
			for(int i=0;i<jobj.size();i++)
			{
				//Store the JSON objects in an array
				//Get the index of the JSON object and print the values as per the index
				JSONObject jsonobj_1 = (JSONObject)jobj.get(i);
				//Store the JSON object in JSON array as objects (For level 2 array element i.e Address Components)
				JSONArray jsonarr_2 = (JSONArray) jsonobj_1.get("zipcodes");
				//System.out.println("Elements under results array");
				//System.out.println("\nPlace id: " +jsonobj_1.get("zipcode"));
				//System.out.println("Types: " +jsonobj_1.get("types"));
				//Get data for the Address Components array
				//System.out.println("Elements under address_components array");
				//System.out.println("The long names, short names and types are:");
				for(int j=0;j<jsonarr_2.size();j++)
				{
					//Same just store the JSON objects in an array
					//Get the index of the JSON objects and print the values as per the index
					JSONObject jsonobj_2 = (JSONObject) jsonarr_2.get(j);
					//Store the data as String objects
					str_data1 = (String) jsonobj_2.get("county_name");
					System.out.println(str_data1);
					//String str_data2 = (String) jsonobj_2.get("short_name");
					//System.out.println(str_data2);
					//System.out.println(jsonobj_2.get("types"));
					System.out.println("\n");
				}
				
			}
			
			//Disconnect the HttpURLConnection stream
			conn.disconnect();
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		return str_data1;

	}
}