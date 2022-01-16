//
//  main.swift
//  aaaaa
//
//  Created by student on 16/01/2022.
//  Copyright © 2022 PL. All rights reserved.
//

import Foundation

//9.3
var carNames = Set<String>()

carNames.insert("audi")
carNames.insert("opel")
carNames.insert("skoda")
carNames.insert("volkswagen")
carNames.insert("mercedes")
carNames.insert("renault")


print("Samochody: \(carNames)")

var carFromUser = readLine()
var ifExist = 0;

for carName in carNames {
    if(carFromUser == carName) {
        carNames.remove(carName)
        ifExist = 1;
    }
}
if (ifExist == 1) {
        print("~ CONSOLE: [Usuwam marke samochodu ze zbioru]")
}

else {
        print("~ CONSOLE: [Nie ma takiej marki samochodu]")
}

        print("Zbior po przejsciu.  Samochody: \(carNames)")


//zad 10.1
class Osoba {
    let imie: String
    let nazwisko: String
    let rok_urodzenia: Int

    init(imie: String, nazwisko: String, rok_urodzenia: Int) {
        self.imie = imie
        self.nazwisko = nazwisko
        self.rok_urodzenia = rok_urodzenia
    }

    func wiek() -> Int {
        let date = Date()
        let userCalendar = Calendar.current

        let komponenty: Set<Calendar.Component> = [
            .year,
        ]

        let data = userCalendar.dateComponents(komponenty, from: date)
        let wiek = data.year! - rok_urodzenia
        return wiek
    }
    func przedstaw() {
        print("Imie:", imie, "\nNazwisko:", nazwisko, "\nRok urodzenia:", rok_urodzenia, "\nWiek:", wiek())
    }
}
//
var persona = Osoba(imie: "karol", nazwisko: "harasimiuk", rok_urodzenia: 1996)
////print(persona.wiek())
////persona.przedstaw()
var persona2 = Osoba(imie: "adam", nazwisko: "nowak", rok_urodzenia: 2000)
//
if(persona.wiek()>persona2.wiek()){
    persona.przedstaw()
}else if(persona.wiek()<persona2.wiek()){
    print("osoba pierwsza jest mlodsza")
    persona.przedstaw()
    print("osoba druga jest starsza")
}else{
    print("osoba druga jest starsza")
    persona.przedstaw()
    print("osoba pierwsza jest mlodsza")
    persona2.przedstaw()
}
enum Stanowisko: String{
    case Produkcja = "Produkcja"
    case Biuro = "Biuro"
}
class Pracownik : Osoba {
    let rok_zatrudnienia: Int
    let stanowisko: Stanowisko
    let stawka: Int
    let godziny: Int
    let nazwa_firmy: String
    init(imie: String, nazwisko: String, rok_urodzenia: Int, rok_zatrudnienia: Int,  stawka: Int, godziny: Int, nazwa_firmy: String, stanowisko: Stanowisko){
        self.rok_zatrudnienia = rok_zatrudnienia
        self.stanowisko = stanowisko
        self.stawka = stawka
        self.godziny = godziny
        self.nazwa_firmy = nazwa_firmy
        super.init(imie: imie, nazwisko: nazwisko, rok_urodzenia: rok_urodzenia)
    }
    func lata_pracy() -> Int {
        let date = Date()
        let userCalendar = Calendar.current
        
        let komponenty: Set<Calendar.Component> = [
            .year,
        ]
        
        let data = userCalendar.dateComponents(komponenty, from: date)
        return data.year! - rok_zatrudnienia
    }
    
    func pensja() -> Int {
        return stawka*godziny
    }
    
    override func przedstaw() {
        print("""
            Imie: \(imie)
            Nazwisko: \(nazwisko)
            Wiek: \(wiek())
            Rok zatrudnienia: \(rok_zatrudnienia)
            Stanowisko: \(stanowisko.rawValue)
            Stawka godzinowa: \(stawka)
            Wypracowanie godziny: \(godziny)
            Nazwa firmy: \(nazwa_firmy)
            Lata pracy w firmie: \(lata_pracy())
            Pensja: \(pensja())
            """)
    }
}

var pracownik1 = Pracownik(imie: "Jan", nazwisko: "Kowalski", rok_urodzenia: 1996, rok_zatrudnienia: 2011, stawka: 25, godziny: 176, nazwa_firmy: "BUDOMEX", stanowisko: Stanowisko.Produkcja)

pracownik1.przedstaw()
print("nnZadanie 10.3")

enum Kierunek: String{
    case Informatyka = "Informatyka"
    case Elektrotechnika = "Elektrotechnika"
}

class Student : Osoba {
    let index: Int
    let kierunek: Kierunek
    let rok_studiow: Int
    var oceny: [Double] = [Double](repeating: 0, count:5)

    init(imie: String, nazwisko: String, rok_urodzenia: Int, index: Int,
         kierunek: Kierunek, rok_studiow: Int, oceny: [Double]){
        
        self.index = index
        self.kierunek = kierunek
        self.rok_studiow = rok_studiow
        self.oceny = oceny
        super.init(imie: imie, nazwisko: nazwisko, rok_urodzenia: rok_urodzenia)
    }
    
    override func przedstaw()
    {
            print("""
            Imie: \(imie)
            Nazwisko: \(nazwisko)
            Wiek: \(wiek())
            Index: \(index)
            Kierunek: \(kierunek.rawValue)
            Rok studiów: \(rok_studiow)
            Oceny: \(oceny)
            Srednia: \(srednia())
            """)
    }

    func srednia() -> Double {
        var suma: Double
        suma = 0
        for ocena in oceny {
            suma = suma + ocena
        }
        return (Double)(suma/5)
    }

}

var student = Student(imie: "Karol", nazwisko: "Harasimiuk", rok_urodzenia: 1999, index: 94233, kierunek: Kierunek.Informatyka, rok_studiow: 3, oceny: [2,3,4,4,3])

student.przedstaw()
print(student.srednia())

func podajOceny() -> [Double] {

var oceny: [Double] = [Double](repeating: 0, count: 5)
let ocenyDostepne = [2.0,3.0,3.5,4.0,4.5,5.0]
var ocena: Double?
var flag: Bool = false

    for j in 0..<5{

        print("Podaj", j+1, " ocene:", terminator:"")
        ocena = Double(readLine()!)

        if ocenyDostepne.contains(ocena!) {
            flag = true
        }else{
            flag = false
        }
        while !flag {
        print("Podaj ocene z zakresu od 2 do 5 ")
            ocena = Double(readLine()!)
            if ocenyDostepne.contains(ocena!) {
                flag = true
            }
        }
        oceny[j] = ocena!
    }
    return oceny
}

func podajStudentow()-> [Student]{

    print("Podaj liczbe studentow: ", terminator:"")
    var liczba_studentow: Int?
    var imie, nazwisko: String?
    var rok_urodzenia, index, rok_studiow, kierunek: Int?
    var studenci: [Student] = []

       liczba_studentow = Int(readLine()!)
       for _ in 0..<liczba_studentow!{
           print("Podaj imie:", terminator:"")
           imie = String(readLine()!)
           print("Podaj nazwisko:", terminator:"")
           nazwisko = String(readLine()!)
           print("Podaj rok urodzenia:", terminator:"")
           rok_urodzenia = Int(readLine()!)
           print("Podaj index:", terminator:"")
           index = Int(readLine()!)
           print("Podaj rok studiów:", terminator:"")
           rok_studiow = Int(readLine()!)
           print("Podaj kierunek (1. Informatyka, 2. Elektrotechinika):", terminator:"")
           kierunek = Int(readLine()!)

           let oceny: [Double] = podajOceny()

           if(kierunek! == 1){
           studenci.append(Student(imie: imie!, nazwisko: nazwisko!, rok_urodzenia: rok_urodzenia!, index: index!, kierunek: Kierunek.Informatyka, rok_studiow: rok_studiow!, oceny: oceny))
           } else {
               studenci.append(Student(imie: imie!, nazwisko: nazwisko!, rok_urodzenia: rok_urodzenia!, index: index!, kierunek: Kierunek.Elektrotechnika, rok_studiow: rok_studiow!, oceny: oceny))
           }
       }
    return studenci
}
func studenci() {


    let studenci: [Student] = podajStudentow()
    var kierunek_s: String?
    print("Podaj kierunek ktory chcesz wyswietlic:", terminator:"")
    kierunek_s = String(readLine()!)
    for i in studenci{
        if (i.kierunek.rawValue == kierunek_s){
            i.przedstaw()        }
    }
}

studenci()
