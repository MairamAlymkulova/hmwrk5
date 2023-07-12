

import Foundation
class Stock {
    var devices: [Device]

    init(devices: [Device]) {
        self.devices = devices
    }

    func conditionFilter(condition: Condition) -> [Device] {
        var filteredDevices:[Device]=[]
        for device in devices {
            if(device.condition==condition){
                filteredDevices.append(device)
            }
        }
        return filteredDevices
    }

    func printDevicesList(devices: [Device]) {
        for device in devices {
            print("Название: \(device.name), Состояние: \(device.condition)")
        }
    }
}




