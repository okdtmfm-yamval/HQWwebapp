package hqw;

import java.io.IOException;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/HQWServlet")
public class HQWServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	private HQWService service = new HQWService();
	
	//index.jsp を開くときに国リストを渡す
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)throws ServletException, IOException {

        request.setAttribute("countries", CountryList.getCountries());
        request.getRequestDispatcher("/index.jsp").forward(request, response);
    }

    @Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("UTF-8");
		
		//doPostにも国リストを渡す（念のため）
		request.setAttribute("countries", CountryList.getCountries());
		
		// index.jspから受け取る
		String country = request.getParameter("country");
		String surname = request.getParameter("surname");
		
		//ユーザーのPersonを作成
		Person p1 = service.createUserPerson(country, surname);
		
		//ランダムな相手を生成
		Person p2 = service.createRandomPerson();
		
		//握手イベント
		String result = service.handshake(p1, p2);
		
		//トンネル効果が起きたか判定
		boolean tunnel = result.contains("トンネル");
		
		//JSPに渡す
		request.setAttribute("user", p1);
		request.setAttribute("partner", p2);
		request.setAttribute("result", result);
		request.setAttribute("tunnel", tunnel);
		
		//result.jspへフォワード
		request.getRequestDispatcher("/result.jsp").forward(request, response);
	}

}
