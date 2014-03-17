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
		 String sql = "select id,account,password,email,mobile from tbclient";     // ��ѯ���ݵ�sql��� 
		 Statement st;
		 ResultSet rs;
         try {
			st = (Statement) conn.createStatement();
			rs = st.executeQuery(sql);    //ִ��sql��ѯ��䣬���ز�ѯ���ݵĽ����  
			while (rs.next()) { // �ж��Ƿ�����һ������  
	              Client client = new Client();
	             // �����ֶ�����ȡ��Ӧ��ֵ  
	             client.setAccount(rs.getString("account"));
	             client.setEmail(rs.getString("email"));
	             client.setId(rs.getInt("id"));
	             client.setMobile(rs.getString("mobile"));
	             client.setPass(rs.getString("password"));	
	             list.add(client);
	         }  
	         conn.close();   //�ر����ݿ����� 
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
		 String sql = "select * from tbClient";     // ��ѯ���ݵ�sql��� 
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
	         conn.close();   //�ر����ݿ����� 
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
