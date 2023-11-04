package Hospital 
// import Hospital.Hospital
// import Hospital.ChildrenHospital

class HospitalMain{
    static main(args) {
        ChildrenHospital childrenHospital = new ChildrenHospital("George","Rainbow","Madhapur");
        def information = childrenHospital.childrenHospitalInfo()
        println(information);
        def admittedCount = childrenHospital.admitPediatricPatient(); 
        println(admittedCount);
        def dischargedCount = childrenHospital.dischargedPediatricPatient();
        println(dischargedCount);
    }
}