package member.model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Vector;

public class MemberDAO {
	private static MemberDAO memberDAO;
	private MemberDAO(){}
	public static MemberDAO getInstance(){
		if(memberDAO == null){
			synchronized (MemberDAO.class) {
				memberDAO = new MemberDAO();
			}//end synchronized
		}// end if
		return memberDAO;
	}
	//이곳에 하나하나의 기능을 추가해 나가야 한다.
	public boolean idCheck(String userId){
		boolean check = true;
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try{
			conn = ConnUtil.getConnection();
			String sql= "";
			sql += " select * from student";
			sql += " where id = ? ";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, userId);
			rs = pstmt.executeQuery();
			if (rs.next()){
				check = false;
			}//end if
		}catch (SQLException sqle){
			sqle.printStackTrace();
		}finally{
			if(rs != null){
				try{
					rs.close();
				}catch (SQLException sqle){
					sqle.printStackTrace();
				}//end try
			}//end if
			if(pstmt != null){
				try{
					pstmt.close();
				}catch (SQLException sqle){
					sqle.printStackTrace();
				}//end try
			}//end if
			if (conn != null){
				try{
					conn.close();
				}catch(SQLException sqle){
					sqle.printStackTrace();
				}//end try
			}//end if
		}//end try
		return check;
	}
	public Vector<ZipcodeVO> getZipcode(String dong){
		Vector<ZipcodeVO> returnList = null;
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		if(dong == null || dong.equals("")){
			return null;
		}//end if
		returnList = new Vector<ZipcodeVO>();
		try{
			conn = ConnUtil.getConnection();
			String sql = "";
			sql += " select * from zipcode ";
			sql += " where dong like '" + dong + "%' ";
			pstmt= conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			while (rs.next()){
				ZipcodeVO zipcodeVO = new ZipcodeVO();
				zipcodeVO.setZipcode(rs.getString("zipcode"));
				zipcodeVO.setSido(rs.getString("sido"));
				zipcodeVO.setGugun(rs.getString("gugun"));
				zipcodeVO.setDong(rs.getString("dong"));
				zipcodeVO.setRi(rs.getString("ri"));
				zipcodeVO.setBunji(rs.getString("bunji"));
				returnList.addElement(zipcodeVO);
			}//end while
		}catch (SQLException sqle){
			sqle.printStackTrace();
		}finally {
			if(rs != null){
				try { rs.close();
			}catch(SQLException sqle){
				sqle.printStackTrace();
			}//end try
		}//end if
			if(pstmt != null){
				try { pstmt.close();
			}catch (SQLException sqle){
				sqle.printStackTrace();
			}//end try
	}//end if
	if(pstmt != null){
		try { conn.close();}catch(SQLException sqle){
			sqle.printStackTrace();
		}//end try
	}//end if
}//rnd try
return returnList;
	}
}


















