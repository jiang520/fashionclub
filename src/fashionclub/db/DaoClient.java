package fashionclub.db;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.LinkedList;
import java.util.List;


public class DaoClient {
		
	static public List getAllClient()
	{
		Connection conn = DbFashionClub.getConnection();
		if(conn==null) return null;
		 List list = new LinkedList<Client>();
		 String sql = "select id,account,password,email,mobile from tbclient";     // 查询数据的sql语句 
		 Statement st;
		 ResultSet rs;
         try {
			st = (Statement) conn.createStatement();
			rs = st.executeQuery(sql);    //执行sql查询语句，返回查询数据的结果集  
			while (rs.next()) { // 判断是否还有下一个数据  
	              Client client = new Client();
	             // 根据字段名获取相应的值  
	             client.setAccount(rs.getString("account"));
	             client.setEmail(rs.getString("email"));
	             client.setId(rs.getInt("id"));
	             client.setMobile(rs.getString("mobile"));
	             client.setPass(rs.getString("password"));	
	             list.add(client);
	         }  
	         conn.close();   //关闭数据库连接 
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return list;
	}
	
	static public boolean add(Client client){
		Connection conn = DbFashionClub.getConnection();
		if(conn==null) return false;
		 List list = new LinkedList<Client>();
		 String sql = "select * from tbClient";     // 查询数据的sql语句 
		 Statement st;
		 ResultSet rs;
         try {		
        	 PreparedStatement stmt = conn.prepareStatement("insert into tbclient(account,password,email,mobile)values(?,?,?,?)");
        	 stmt.setString(1, client.getAccount());
        	 stmt.setString(2, client.getPass());
        	 stmt.setString(3, client.getAccount());;
        	 stmt.setString(4, client.getMobile());
        	 stmt.execute();
        	 //conn.commit();
	         conn.close();   //关闭数据库连接 
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return true;
	}
	public boolean delById(int id){
		return false;
	}
	public boolean delByAccount(String account){
		return false;
	}
}
