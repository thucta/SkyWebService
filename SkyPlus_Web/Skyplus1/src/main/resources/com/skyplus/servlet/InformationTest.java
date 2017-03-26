package skyplus.servlet;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.net.URL;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.json.JSONArray;
import org.json.JSONObject;
import skyplus.config.Config;

/**
 * Servlet implementation class InformationTest
 */
@WebServlet("/InformationTest")
public class InformationTest extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public InformationTest() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().write("Hello");
		try {
		
		URL url = new URL(Config.URLSERVICE+"infor/search?partner=1&province=HCM");
		BufferedReader bufferedReader = new BufferedReader( new InputStreamReader(url.openStream()));
		String input = bufferedReader.readLine();
		JSONObject data = new JSONObject(input);
		JSONArray jsonArray = data.getJSONArray("information");
		for (int i = 0; i < jsonArray.length(); i++) {
			JSONObject jsonObject =	jsonArray.getJSONObject(i);	
			String name = jsonObject.getString("name");
			response.getWriter().write(name.trim());
		}
		
		} catch (Exception e) {
			// TODO: handle exception
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
