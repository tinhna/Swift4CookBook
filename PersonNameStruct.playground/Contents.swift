//: Playground - noun: a place where people can play

import UIKit

struct PersonName {
    let givenName: String
    let middleName: String
    var familyName: String
    
    func fullName() -> String {
        return "\(givenName) \(middleName) \(familyName)"
    }
    
    mutating func change(familyName: String) {
        self.familyName = familyName
    }
}


var alissasName = PersonName(givenName: "Alissa", middleName: "May", familyName: "Jones")
print(alissasName.fullName())
print(alissasName.change(familyName: "Nguyen"))
print(alissasName.fullName())



