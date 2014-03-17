package fashionclub.db;
import java.sql.DriverManager;
import java.sql.Connection;
import java.sql.SQLException;
public class DbFashionClub {

	static Connection getConnection(){ 
		try {
			Class.forName("com.mysql.jdbc.Driver");
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return null;
		}
		String url="jdbc:mysql://localhost:3306/tbfashionclub?user=root&password=jiangg";
		Connection con=null;
		try {
			con = DriverManager.getConnection(url);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return con;
	}
	
	static void initializeDataBase()
	{
		Connection conn = getConnection();
		if(conn==null){
			System.out.print("initializeDataBase get connection failed...");	
			return ;
		}
				
	}
}
