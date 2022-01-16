
import Foundation


//zad 10.1
class Osoba{
    var imie: String
    var nazwisko: String
    let rok_urodzenia: Int
    


    init(imie: String, nazwisko: String , rok_urodzenia: Int)
    {
        self.imie=imie
        self.nazwisko=nazwisko
        self.rok_urodzenia=rok_urodzenia
    }

    func wiek() -> Int{
        return  2022 - rok_urodzenia
    }
    
    func wyswietl(){
        print("Imie: \(imie)")
        print("Nazwisko: \(nazwisko)")
        print("rok_urodzenia: \(rok_urodzenia)")
    }
    
}

/*
var osoba1 = Osoba(imie:"Daniel", nazwisko:"Poznanski", rok_urodzenia: 1998)
var osoba2 = Osoba(imie:"Klaudia", nazwisko:"Poznanska", rok_urodzenia: 1998)
if(osoba1.wiek()>osoba2.wiek()){
    osoba1.wyswietl()
}
else if(osoba2.wiek()>osoba1.wiek()){
    osoba2.wyswietl()
}
else{
osoba1.wyswietl()
osoba2.wyswietl()
}
*/

//zad 10.2
    enum stanowiskoType:String{
        case dyrektor = "dyrektor"
        case pracownik = "pracownik"
        case sprzataczka = "sprzataczka"
        case kierownik = "kierownik"
        case programista = "programista"
    }


class Pracownik : Osoba{



    let rok_zatrudnienia : Int
    var stanowisko : stanowiskoType
    let stawka : Double
    let wypracowane_godziny : Double
    var nazwa_firmy : String
    

    
    init(imie:String, nazwisko:String,rok_urodzenia:Int,rok_zatrudnienia : Int, stanowisko : stanowiskoType, stawka : Double, wypracowane_godziny : Double, nazwa_firmy : String)
    {
        self.rok_zatrudnienia=rok_zatrudnienia
        self.stanowisko=stanowisko
        self.stawka=stawka
        self.wypracowane_godziny=wypracowane_godziny
        self.nazwa_firmy=nazwa_firmy
        
    super.init(imie:imie , nazwisko:nazwisko , rok_urodzenia:rok_urodzenia)

        }
        
        func lata_pracy() -> Int{
        return  2022 - rok_zatrudnienia
        }
        func pensja()->Double{
        return stawka*wypracowane_godziny
    }
        override func wyswietl(){
        super.wyswietl()
        print("Rok rok_zatrudnienia: \(rok_zatrudnienia)")
        print("Stanowisko: \(stanowisko.rawValue)")
        print("Stawka: \(stawka)")
        print("wypracowane_godziny: \(wypracowane_godziny)")
        print("nazwa_firmy: \(nazwa_firmy)")
        }
        
        
}
/*
var pracownik1 = Pracownik(imie:"Daniel", nazwisko:"Poznanski", rok_urodzenia: 1997, rok_zatrudnienia: 2020, stanowisko:stanowiskoType.kierownik, stawka:60, wypracowane_godziny: 200, nazwa_firmy: "Combany" )
var pracownik2 = Pracownik(imie:"Klaudia", nazwisko:"Poznanska", rok_urodzenia: 1998, rok_zatrudnienia: 2021, stanowisko:stanowiskoType.programista , stawka:50, wypracowane_godziny: 200, nazwa_firmy: "Combany" )
print ("Lata pracy pracownik1: \(pracownik1.lata_pracy())")
print ("Lata pracy pracownik2: \(pracownik2.lata_pracy())")
print ("Pensja pracownik1: \(pracownik1.pensja())")
print ("Pensja pracownik2: \(pracownik2.pensja())")
pracownik1.wyswietl()
pracownik2.wyswietl()
*/

//Zadanie 10.3
enum Kierunek:String{
case informatyka = "informatyka"
case fizyka = "fizyka"
case bankowosc = "bankowosc"
case ekonomia = "ekonomia"
    
}

class Student: Osoba{
    let nr_indeksu:Int
    var kierunek:Kierunek
    let rok_studiow:Int
    var oceny: [Double] = [Double](repeating: 0, count:5)

    
    init(imie: String, nazwisko: String , rok_urodzenia: Int, nr_indeksu:Int, kierunek: Kierunek, rok_studiow:Int, oceny: [Double]){
        self.nr_indeksu=nr_indeksu
        self.kierunek=kierunek
        self.rok_studiow=rok_studiow
        self.oceny=oceny
        
        super.init(imie:imie , nazwisko:nazwisko , rok_urodzenia:rok_urodzenia)
        }
        
        
        func srednia() -> Double {
        var suma: Double
        suma = 0
        for ocena in oceny {
                suma = suma + ocena
            }
            return (Double)(suma/5)
        }
    
        
        override func wyswietl(){
    print("""
    Imie: \(imie)
    Nazwisko: \(nazwisko)
    Wiek: \(wiek())
    Index: \(nr_indeksu)
    Kierunek: \(kierunek.rawValue)
    Rok studiów: \(rok_studiow)
    Oceny: \(oceny)
    Srednia: \(srednia())
    """)        }
    }
var student = Student(imie : "Daniel" , nazwisko: "Poznanski", rok_urodzenia: 1997, nr_indeksu: 94257 , kierunek:Kierunek.informatyka , rok_studiow: 3, oceny: [4,5,3,4,4])

student.wyswietl()
print(student.srednia())

let ilosc = Int(readLine()!)

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
    var rok_urodzenia, nr_indeksu, rok_studiow, kierunek: Int?
    var studenci: [Student] = []

       liczba_studentow = Int(readLine()!)
       for _ in 0..<liczba_studentow!{
           print("Podaj imie:", terminator:"")
           imie = String(readLine()!)
           print("Podaj nazwisko:", terminator:"")
           nazwisko = String(readLine()!)
           print("Podaj rok urodzenia:", terminator:"")
           rok_urodzenia = Int(readLine()!)
           print("Podaj nr indeksu:", terminator:"")
           nr_indeksu = Int(readLine()!)
           print("Podaj rok studiów:", terminator:"")
           rok_studiow = Int(readLine()!)
           print("Podaj kierunek (1. Informatyka, 2.Fizyka, 3.Bankowosc, 4.Ekonomia):", terminator:"")
           kierunek = Int(readLine()!)

           let oceny: [Double] = podajOceny()

           if(kierunek! == 1){
           studenci.append(Student(imie: imie!, nazwisko: nazwisko!, rok_urodzenia: rok_urodzenia!, nr_indeksu: nr_indeksu!, kierunek: Kierunek.informatyka, rok_studiow: rok_studiow!, oceny: oceny))
           } else {
               studenci.append(Student(imie: imie!, nazwisko: nazwisko!, rok_urodzenia: rok_urodzenia!, nr_indeksu:nr_indeksu!, kierunek: Kierunek.ekonomia, rok_studiow: rok_studiow!, oceny: oceny))
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
            i.wyswietl()        }
    }
}

studenci()
