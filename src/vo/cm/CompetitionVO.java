package vo.cm;

public class CompetitionVO {
	private String CompName;
	private String CompInfo;
	private String HolderName;
	private Integer EQNumber;//器材编号
	private String CompetitionHoldingTime;//举办时段
	private String EQName;
	private String FiledType;//场地类型
	public String getCompName() {
		return CompName;
	}
	public void setCompName(String compName) {
		CompName = compName;
	}
	public String getCompInfo() {
		return CompInfo;
	}
	public void setCompInfo(String compInfo) {
		CompInfo = compInfo;
	}
	public String getHolderName() {
		return HolderName;
	}
	public void setHolderName(String holderName) {
		HolderName = holderName;
	}
	public Integer getEQNumber() {
		return EQNumber;
	}
	public void setEQNumber(Integer eQNumber) {
		EQNumber = eQNumber;
	}
	public String getCompetitionHoldingTime() {
		return CompetitionHoldingTime;
	}
	public void setCompetitionHoldingTime(String competitionHoldingTime) {
		CompetitionHoldingTime = competitionHoldingTime;
	}
	public String getEQName() {
		return EQName;
	}
	public void setEQName(String eQName) {
		EQName = eQName;
	}
	public String getFiledType() {
		return FiledType;
	}
	public void setFiledType(String filedType) {
		FiledType = filedType;
	}
	
	
}
