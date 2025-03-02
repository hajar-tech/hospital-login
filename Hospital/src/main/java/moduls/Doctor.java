package moduls;

public class Doctor extends User{
	
	private String specialization;

    // Constructor
    public Doctor(int idUser, String fullName, String email, String password, String phoneNumber, String role, String specialization) {
        super(idUser, fullName, email, password, phoneNumber, role);
        this.specialization = specialization;
    }

    //getters && setters
	public String getSpecialization() {
		return specialization;
	}

	public void setSpecialization(String specialization) {
		this.specialization = specialization;
	}
    
    
    

}
