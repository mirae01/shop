package member.action;

import java.util.*;
import member.model.*;
import com.opensymphony.xwork2.*;

public class ZipcodeAction extends ActionSupport implements Preparable {
	private static final long serialVersionUID = 1L;
	private String dong = null;
	private String check = "no";
	private int result = 0;
	private MemberDAO memberDAO = null;
	private Vector<ZipcodeVO> zipodeList = null;
	@Override
	public void prepare() throws Exception{
		memberDAO = MemberDAO.getInstance();
	}
	@Override
	public String execute() throws Exception{
		zipodeList = memberDAO.getZipcode(dong);
		if(zipodeList.size()>0){
			result = 1;
		}//end if
		return SUCCESS;
	}
	@Override
	public void validate(){
		if(dong == null || dong.equals("")){
			addFieldError("dong", "동을 입력해 주세요.");
		}//end if
	}
	public String getDong() {
		return dong;
	}
	public void setDong(String dong) {
		this.dong = dong;
	}
	public String getCheck() {
		return check;
	}
	public void setCheck(String check) {
		this.check = check;
	}
	public int getResult() {
		return result;
	}
	public void setResult(int result) {
		this.result = result;
	}
	public MemberDAO getMemberDAO() {
		return memberDAO;
	}
	public void setMemberDAO(MemberDAO memberDAO) {
		this.memberDAO = memberDAO;
	}
	public Vector<ZipcodeVO> getZipodeList() {
		return zipodeList;
	}
	public void setZipodeList(Vector<ZipcodeVO> zipodeList) {
		this.zipodeList = zipodeList;
	}
	
}
