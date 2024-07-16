//
//  struct.swift
//  TP1Swift
//
//  Created by eleves on 2024-07-03.
//



enum Gender: String {
    case male = "Male"
    case female = "Female"
}

enum College: String {
    case grasset = "Grasset"
    case rosemont = "Rosemont"
    case maisonNeuve = "Maison-Neuve"
}

struct Student: CustomStringConvertible {
    var name: String
    var age: Int
    var gender: Gender
    var college: College
    
    var description: String {
        return "Name: \(name), Age: \(age), Gender: \(gender.rawValue), College: \(college.rawValue)"
    }
}
