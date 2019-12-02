package msg.test;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import org.apache.tomcat.dbcp.dbcp2.BasicDataSource;


public class MemberDAO {
	private static MemberDAO instance;
	private BasicDataSource bds = new BasicDataSource();

	private MemberDAO() {
		bds.setDriverClassName("oracle.jdbc.driver.OracleDriver");
		bds.setUrl("jdbc:oracle:thin:@localhost:1521:xe");
		bds.setUsername("msg");
		bds.setPassword("msg");
		bds.setInitialSize(30);
	}

	public synchronized static MemberDAO getInstance() {
		if(instance == null) {
			instance = new MemberDAO();	
		}

		return instance;
	}
	public Connection getConnection() throws Exception{

		return bds.getConnection();

	}
	
	public MemberDTO select(String id) throws Exception{
		String sql = "select * from member where id=?";
		
		try(
				Connection con = this.getConnection();
				PreparedStatement pstat = con.prepareStatement(sql);
				){
			pstat.setString(1, id);
			ResultSet rs = pstat.executeQuery();
			
			MemberDTO dto = new MemberDTO();
			if(rs.next()) {
				dto.setSeq(rs.getInt(1));
				dto.setName(rs.getString(2));
				dto.setId(rs.getString(3));
				dto.setPw(rs.getString(4));
				dto.setPhone(rs.getString(5));
				dto.setEmail(rs.getString(6));
				dto.setZipcode(rs.getString(7));
				dto.setAddress1(rs.getString(8));
				dto.setAddress2(rs.getString(9));
				dto.setEmail_Receive('N');
				dto.setManager_check('N');
			}
			return dto;
			
		}
	}
}
