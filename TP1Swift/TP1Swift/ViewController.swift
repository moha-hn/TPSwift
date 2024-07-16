//
//  ViewController.swift
//  TP1Swift
//
//  Created by eleves on 2024-07-03.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        /*exo 1*/
        print("-----------Exo1-------------------")
        let numbers = [13, 7, 18, 8, 0, 10, 6]
        if let maxNumber = findMaxNumber(in: numbers) {
            print("le plus grand nombre est \(maxNumber)")
        } else {
            print("le tableau est vide.")
        }
        print("----------------------------------")
        /*exo 2*/
        print("-----------Exo2------------------")
        let sentence = "bonjour le monde"
        let wordCount = countWords(in: sentence)
        print("le nombre de mots est \(wordCount).")
        print("---------------------------------")
        //exo 3
        print("-----------exo3-------------------")
        let descendingArray = createDescendingArray()
        print(descendingArray)
        print("----------------------------------")
        //exo4
        print("-----------EXO04-------------------")
                let resultat = surface(base:4.2, hauteur:6.1)
                print("La Surface du Triangle est de :\(resultat)")
                print("-----------------------------------")

        //exo5
        print("-----------Exo5-------------------")
                let valeur1=40
                let div = divisible(valeur1 :valeur1)
                print("Le nombre \(valeur1) Est il Divisible ? : \(div)")
                print("-----------------------------------")
        //exo6
        print("-----------Exo6-------------------")
                let tableauvoiture = ["bmw", "audi", "toyota", "ford", "volvo", "renault", "fiat"]
                let chaineATrouve = "ford"

                if let index = IndexRch(chaine: chaineATrouve, dans: tableauvoiture)
                {
                    print("L'index de '\(chaineATrouve)' dans le tableau est : \(index)")
                }
                else
                {
                    print("La chaîne '\(chaineATrouve)' n'a pas été trouvée dans le tableau.")
                }
                print("-----------------------------------")

        

        //exo7
        print("-----------Exo7-------------------")
        let student1 = Student(name: "moha", age: 22, gender: .male, college: .grasset)
        let student2 = Student(name: "imad", age: 23, gender: .male, college: .maisonNeuve)
        let student3 = Student(name: "ghiles", age: 22, gender: .male, college: .grasset)
        
        /*tableau*/
        let students = [student1, student2,student3]
        let studentss:[Student]=stt(fromCollege:.grasset,in:students)
        for i in studentss{
            print (i)
        }
        print("-----------------------------------")
        //exo8
        print("-----------Exo8-------------------")
        let poulet=6
        let vache=2
        let chevau=5
        let nbtotal=nbrspattes(poulets:poulet,vaches:vache,chevaux:chevau)
        print("le nombre total de pattes est \(nbtotal)")
        print("-----------------------------------")
        //exo9
        print("-----------Exo9-------------------")
        let personnes = ["moha": 22, "imad": 23, "ghiles": 21]
        if let nomPlusAge = nomDuPlusAge(dictionnaire: personnes) {
            print("La personne la plus âgée est : \(nomPlusAge)")
        } else {
            print("Le dictionnaire est vide.")
        }
        print("-----------------------------------")
        //exo10
        print("-----------Exo10-------------------")
        let taille = 5
        let fruitDict = createFruitDictionary(size: taille)

        print("Dictionnaire des fruits et prix (sans 'kiwi') :")
        for (fruit, price) in fruitDict {
            print("\(fruit): \(price)")
        }
        print("----------------------------------")

    }
    
    //function

    func findMaxNumber(in array: [Int]) -> Int? {
        var maxNumber = array[0]
        for number in array {
            if number > maxNumber {
                maxNumber = number
            }
        }
        return maxNumber
    }

    func countWords(in sentence: String) -> Int {
        let words = sentence.split { $0 == " " || $0.isNewline || $0.isPunctuation }
        return words.count
    }

    func createDescendingArray() -> [Int] {
        var array: [Int] = []
        for i in (1...10).reversed() {
            array.append(i)
        }
        return array
    }

    func surface(base: Double, hauteur: Double) -> Double {
        let resultat = (base * hauteur)/2;
        return resultat
    }

    func IndexRch(chaine: String, dans tableau: [String]) -> Int? {
        for index in 0..<tableau.count {
            if tableau[index] == chaine
            {
                return index
            }
        }
        return nil
    }

    func divisible (valeur1: Int) -> Bool{
        if valeur1%5==0{
            return true
        }else
        {
            return false
        }
    }

    func stt(fromCollege college: College, in students: [Student]) -> [Student] {
        var studentsreturn:[Student]=[]
        for i in students{
            if i.college==college{
                studentsreturn.append(i)
            }
        }
        return studentsreturn
    }

    func nbrspattes(poulets:Int,vaches:Int,chevaux:Int)->Int{
        let ppoulets=poulets*2
        let pchevaux=chevaux*4
        let pvaches=vaches*4
        let total=ppoulets+pvaches+pchevaux
        return total
    }


    func nomDuPlusAge(dictionnaire: [String: Int]) -> String? {
        guard let maxage = dictionnaire.max(by: { $0.value < $1.value }) else {
            return nil
        }
        return maxage.key
    }

    func createFruitDictionary(size: Int) -> [String: Double] {
        var fruits: [String] = []
        var prices: [Double] = []

        for i in 0..<size {
            let fruit = "banane_\(i)"
            fruits.append(fruit)
            let price = Double(i) / 1.5
            prices.append(price)
        }
        fruits.append("kiwi")
        
        var fruitDictionary: [String: Double] = [:]
        for i in 0..<size {
            let key = fruits[i]
            let value = prices[i]
            fruitDictionary[key] = value
        }
        
        fruitDictionary["kiwi"] = nil
        
        return fruitDictionary
    }


}

