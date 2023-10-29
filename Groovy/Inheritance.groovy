package Groovy
class Vehicle{
    String nameOfVehicle
    String brandingCompanyName
    float mileage
    Vehicle(String nameOfVehicle,String brandingCompanyName){
        this.nameOfVehicle = nameOfVehicle
        this.brandingCompanyName = brandingCompanyName
    }
    def mileageCalculator(float distanceTravelled , float fuelConsumed){
        mileage = distanceTravelled / fuelConsumed
    }
    def vehicleInfo(){
        return "Vehicle Name: $nameOfVehicle, Brand: $brandingCompanyName, Mileage: $mileage"
    }
}
class Car extends Vehicle{
    private int totalNoOfSeats
    private String colorOfCar
    Car(String nameOfVehicle,String brandingCompanyName,int totalNoOfSeats,String colorOfCar ){
        super(nameOfVehicle,brandingCompanyName)
        this.totalNoOfSeats = totalNoOfSeats
        this.colorOfCar = colorOfCar
    }
    String carInfo(){
        return "${vehicleInfo()} , Seats: $totalNoOfSeats , Color: $colorOfCar"
    }
}
class CarMain {
    static main(args) {
        Car car = new Car("Alto","Maruti",5,"White")
        def float calculatedMileage = car.mileageCalculator(22.3 , 1.2)
        println(car.carInfo())
    }
}
