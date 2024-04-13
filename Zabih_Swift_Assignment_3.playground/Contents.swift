class Ship {
    var name: String
    var year: Int
    var countryOfOrigin: String
    
    init(name: String, year: Int, countryOfOrigin: String) {
        self.name = name
        self.year = year
        self.countryOfOrigin = countryOfOrigin
    }
}


class CruiseShip: Ship {
    var maxCapacity: Int
    var oceanOfOperation: String
    var currentPassengerCount: Int
    
    init(name: String, year: Int, countryOfOrigin: String, maxCapacity: Int, oceanOfOperation: String) {
        self.maxCapacity = maxCapacity
        self.oceanOfOperation = oceanOfOperation
        self.currentPassengerCount = 437
        super.init(name: name, year: year, countryOfOrigin: countryOfOrigin)
    }
    
    func addPassenger() {
        if currentPassengerCount < maxCapacity {
            currentPassengerCount += 1
            print("This is CRUISE Ship with Maximum Capacity of \(maxCapacity) Passenger at one Time")
            print("Current passenger count: \(currentPassengerCount) and still have \(maxCapacity - currentPassengerCount) space avilable in the Ship")
        } else {
            print("Your reached to the\(maxCapacity)  Capacity no more space avilable for passengers.")
        }
        print()
    }
}

class CargoShip: Ship {
    var maxCargoCapacity: Int
    var currentCargoCount: Int
    var isInternational: Bool
    
    init(name: String, year: Int, countryOfOrigin: String, maxCargoCapacity: Int, isInternational: Bool) {
        self.maxCargoCapacity = maxCargoCapacity
        self.currentCargoCount = 6700
        self.isInternational = isInternational
        super.init(name: name, year: year, countryOfOrigin: countryOfOrigin)
    }
    
      func addCargo() {
            if currentCargoCount < maxCargoCapacity {
                currentCargoCount += 1
                print("This is CARGO Ship with Maximum of \(maxCargoCapacity) Containers at one Time")
                print("Current cargo count: \(currentCargoCount) Containers and still have \(maxCargoCapacity - currentCargoCount) Containers space avilable in the Ship")
            } else {
                print("Your reached to \(maxCargoCapacity) Maximum Capacity of Containers no more space aviliabe.")
            }
          print()
        }
}

class PirateShip: Ship {
    var maxTreasureCapacity: Int
    var currentTreasureCount: Int
    var numberOfCannons: Int
    
    init(name: String, year: Int, countryOfOrigin: String, maxTreasureCapacity: Int, numberOfCannons: Int) {
        self.maxTreasureCapacity = maxTreasureCapacity
        self.currentTreasureCount = 10
        self.numberOfCannons = numberOfCannons
        super.init(name: name, year: year, countryOfOrigin: countryOfOrigin)
    }
    
    func addTreasure() {
          if currentTreasureCount < maxTreasureCapacity {
              currentTreasureCount += 1
                print("This is PIRATE SHIP with Maximum of \(maxTreasureCapacity) Treasure at one Time")
                print("Current Treasure count: \(currentTreasureCount) and still have \(maxTreasureCapacity - currentTreasureCount) space with \(numberOfCannons) Cannons in the Ship")
            } else {
                print("Your reached to the\(maxTreasureCapacity)  Capacity Cannot add more Treasure.")
            }
            
        }
}

let cruiseShip = CruiseShip(
    name: "Carnival",
    year: 2020,
    countryOfOrigin: "USA",
    maxCapacity: 6500,
    oceanOfOperation: "Pacific")
    cruiseShip.addPassenger()

let cargoShip = CargoShip(
    name: "Maersk",
    year: 2015,
    countryOfOrigin: "Canada",
    maxCargoCapacity: 5000,
    isInternational: true)
    cargoShip.addCargo()


let pirateShip = PirateShip(
    name: "Black Pearl",
    year: 1750,
    countryOfOrigin: "Afghanistan",
    maxTreasureCapacity: 1000,
    numberOfCannons: 20)
    pirateShip.addTreasure()

