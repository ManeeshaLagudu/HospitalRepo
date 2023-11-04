package Hospital 
// import Hospital.Hospital

class ChildrenHospital extends Hospital{
    String nameOfDoctor
    int numberOfPediatricPatients = 0
    ChildrenHospital(String nameOfDoctor, String hospitalName, String address){
        super(hospitalName, address)
        this.nameOfDoctor = nameOfDoctor
    }
    def admitPediatricPatient(){
        numberOfPediatricPatients++
        super.admitPatient()
        return "The Count of Pediatric Patients Admitted: " + numberOfPediatricPatients
    }
    def dischargedPediatricPatient(){
        numberOfPediatricPatients--
        super.dischargePatient()
        return "The Count of Discharged Pediatric Patients: " + numberOfPediatricPatients
    }
    String childrenHospitalInfo(){
        return "${hospitalInfo()} , Pediatric Patients: $numberOfPediatrticPatients"
    }

}