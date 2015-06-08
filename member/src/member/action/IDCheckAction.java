package member.action;
import member.model.MemberDAO;
import com.opensymphony.xwork2.*;
public class IDCheckAction extends ActionSupport implements Preparable{
	private static final long serialVersionUID = 1L;
	private String userId;
	private boolean check = false;
	private MemberDAO memberDAO = null;
	@Override
	public void prepare() throws Exception{
		memberDAO = MemberDAO.getInstance();
	}
	@Override
	public String execute() throws Exception{
		boolean result = memberDAO.idCheck(userId);
		if(result){
			check = true;
			addFieldError("idCheckError", "��밡���� ���̵� �Դϴ�.");
			return SUCCESS;
		}else {
			addFieldError("idCheckError", "�ߺ��� ���̵� �Դϴ�.");
			return SUCCESS;
		}//end if
	}
	@Override
	public void validate(){
		if(userId == null || userId.equals("")){
			addFieldError("userId", "���̵� �Է����ּ���");
		}//end if
	}
	public String getUserId() {
		return userId;
	}
	public void setUserId(String userId) {
		this.userId = userId;
	}
	public boolean isCheck() {
		return check;
	}
	public void setCheck(boolean check) {
		this.check = check;
	}
	public MemberDAO getMemberDAO() {
		return memberDAO;
	}
	public void setMemberDAO(MemberDAO memberDAO) {
		this.memberDAO = memberDAO;
	}
	

}
