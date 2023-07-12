
import Foundation
var car1=Cars(brand: "Hundai sonata", issueYear: 2019, driveUnit: .frontWheel, engine: .petrol)
var car2=Cars(brand: "Ferrari SF90", issueYear: 2022, driveUnit: .fourWheel, engine: .hybrid)
var car3=Cars(brand: "BMW m8", issueYear: 2022, driveUnit: .fourWheel, engine: .petrol)
var car4=Cars(brand: "Mercedes-Benz w-214", issueYear: 2023, driveUnit: .rear, engine: .hybrid)
var car5=Cars(brand: "Tesla model3", issueYear: 2020, driveUnit: .fourWheel, engine: .electocar)
var car6=Cars(brand: "Porsche Cayenne", issueYear: 2015, driveUnit: .fourWheel, engine: .diesel)

var cars=[car1, car2, car3, car4, car5, car6]

for car in cars{
    if(car.engine == .petrol){
        print("\(car.brand) \(car.issueYear)")
    }
}

//3
let device1 = Device(name: "Устройство 1", condition: .used)
let device2 = Device(name: "Устройство 2", condition: .new)
let device3 = Device(name: "Устройство 3", condition: .used)
let device4 = Device(name: "Устройство 4", condition: .new)

let devices = [device1, device2, device3, device4]

let stock = Stock(devices: devices)

let usedDevices = stock.conditionFilter(condition: .used)
print("Б/У устройства:")
stock.printDevicesList(devices: usedDevices)

let newDevices = stock.conditionFilter(condition: .new)
print("Новые устройства:")
stock.printDevicesList(devices: newDevices)
