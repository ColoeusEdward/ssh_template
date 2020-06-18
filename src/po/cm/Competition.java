package po.cm;

/**
 * Competition entity. @author MyEclipse Persistence Tools
 */

public class Competition implements java.io.Serializable {

	// Fields

	private Integer competitionId;
	private String competitionName;
	private Integer eqnumber;
	private String holderName;
	private String competitionIntroduction;
	private String filedType;
	private Integer filedId;
	private String competitionHoldingTime;
	private String eqname;

	// Constructors

	/** default constructor */
	public Competition() {
	}

	/** minimal constructor */
	public Competition(String holderName) {
		this.holderName = holderName;
	}

	/** full constructor */
	public Competition(String competitionName, Integer eqnumber,
			String holderName, String competitionIntroduction,
			String filedType, Integer filedId, String competitionHoldingTime,
			String eqname) {
		this.competitionName = competitionName;
		this.eqnumber = eqnumber;
		this.holderName = holderName;
		this.competitionIntroduction = competitionIntroduction;
		this.filedType = filedType;
		this.filedId = filedId;
		this.competitionHoldingTime = competitionHoldingTime;
		this.eqname = eqname;
	}

	// Property accessors

	public Integer getCompetitionId() {
		return this.competitionId;
	}

	public void setCompetitionId(Integer competitionId) {
		this.competitionId = competitionId;
	}

	public String getCompetitionName() {
		return this.competitionName;
	}

	public void setCompetitionName(String competitionName) {
		this.competitionName = competitionName;
	}

	public Integer getEqnumber() {
		return this.eqnumber;
	}

	public void setEqnumber(Integer eqnumber) {
		this.eqnumber = eqnumber;
	}

	public String getHolderName() {
		return this.holderName;
	}

	public void setHolderName(String holderName) {
		this.holderName = holderName;
	}

	public String getCompetitionIntroduction() {
		return this.competitionIntroduction;
	}

	public void setCompetitionIntroduction(String competitionIntroduction) {
		this.competitionIntroduction = competitionIntroduction;
	}

	public String getFiledType() {
		return this.filedType;
	}

	public void setFiledType(String filedType) {
		this.filedType = filedType;
	}

	public Integer getFiledId() {
		return this.filedId;
	}

	public void setFiledId(Integer filedId) {
		this.filedId = filedId;
	}

	public String getCompetitionHoldingTime() {
		return this.competitionHoldingTime;
	}

	public void setCompetitionHoldingTime(String competitionHoldingTime) {
		this.competitionHoldingTime = competitionHoldingTime;
	}

	public String getEqname() {
		return this.eqname;
	}

	public void setEqname(String eqname) {
		this.eqname = eqname;
	}

}