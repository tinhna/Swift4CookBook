//: Playground - noun: a place where people can play

import UIKit

class Person {
    
    let givenName: String
    let middleName: String
    let familyName: String
    
    var contryOfResidence: String = "UK"
    
    init(givenName: String, middleName: String, familyName: String) {
        self.givenName = givenName
        self.middleName = middleName
        self.familyName = familyName
    }
    
    var displayString: String {
        return "\(fullName()) - Location: \(contryOfResidence)"
    }
    
    func fullName() -> String {
        return "\(givenName) \(middleName) \(familyName)"
    }
    
}

//MARK: Friend
final class Friend: Person {
    
    var whereWeMet: String?
    
    override var displayString: String {
        return "\(super.displayString) - \(whereWeMet ?? "Don't know where we met")"
    }
}

//MARK: Person
final class Family: Person {
    let relationShip: String
    
    init(givenName: String, middleName: String, familyName: String = "Moon", relationShip: String) {
        self.relationShip = relationShip
        super.init(givenName: givenName, middleName: middleName, familyName: familyName)
    }
    
    override var displayString: String {
        return "\(super.displayString) - \(relationShip)"
    }
}

//MARK: Testing
let steve = Person(givenName: "Steven", middleName: "Paul", familyName: "Jobs")
let dan = Friend(givenName: "Daniel", middleName: "James", familyName: "Woodel")

dan.whereWeMet = "Worked together at BBC News"
let finnley = Family(givenName: "Finnly", middleName: "David", relationShip: "Son")
let dave = Family(givenName: "Dave", middleName: "deRidder", familyName: "Jone", relationShip: "Father-In-Law")
dave.contryOfResidence = "US"

print(steve.displayString)
print(dan.displayString)
print(finnley.displayString)




















