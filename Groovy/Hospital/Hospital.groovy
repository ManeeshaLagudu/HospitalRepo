package Hospital

class Hospital{
    String hospitalName
    String address
    int numberOfPatients = 0
    Hospital(String hospitalName, String address){
        this.hospitalName = hospitalName
        this.address = address
    }
    def admitPatient(){
        numberOfPatients++;
        return "The Count of patients Admitted : " + numberOfPatients
    }
    def dischargePatient(){
        if(numberOfPatients > 0){
            numberOfPatients-- ; 
            return "The Count of patients Discharged :" + numberOfPatients
        }
    }
    String hospitalInfo(){
        return "Hospital: $hospitalName, Address: $address, Patients: $numberOfPatients"
    }

}