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
enum kierunekType:String{
case informatyka = "informatyka"
case fizyka = "fizyka"
case bankowosc = "bankowosc"
case ekonomia = "ekonomia"
    
}

class Student: Osoba{
    let nr_indeksu:Int
    var kierunek:kierunekType
    let rok_studiow:Int
    let o1 : Double
    let o2 : Double
    let o3 : Double
    let o4 : Double
    let o5 : Double
    
    init(imie: String, nazwisko: String , rok_urodzenia: Int, nr_indeksu:Int, kierunek: kierunekType, rok_studiow:Int, o1:Double, o2:Double,o3:Double,o4:Double,o5:Double){
        self.nr_indeksu=nr_indeksu
        self.kierunek=kierunek
        self.rok_studiow=rok_studiow
            self.o1=o1
            self.o2=o2
            self.o3=o3
            self.o4=o4
            self.o5=o5
        
        super.init(imie:imie , nazwisko:nazwisko , rok_urodzenia:rok_urodzenia)
        }
        
        
        func sprawdz()->Bool{
        if(o1>=2.0 && o1<=5.0 && o2>=2.0 && o2<=5.0 && o3>=2.0 && o3<=5.0 && o4>=2.0 && o4<=5.0 && o5>=2.0 && o5<=5.0) {return true}
        else {return false}
        }
        
        
        func srednia()->Double{
        if sprawdz() == true {
             return (o1+o2+o3+o4+o5)/5
            }
            else{
                return 0
            }
        }
    
        
        override func wyswietl(){
        if sprawdz() == true 
       {
        super.wyswietl()
        print("nr_indeksu: \(nr_indeksu)")
        print("Kierunek: \(kierunek)")
        print("Rok Studiow: \(rok_studiow)")
        print("Ocena 1: \(o1)")
        print("Ocena 2: \(o2)")
        print("Ocena 3: \(o3)")
        print("Ocena 4: \(o4)")
        print("Ocena 5: \(o5)")
            }
            else{
                print("Hiuston mamy problem")
            }
        }
    
    }    
    
//let ilosc = Int(readLine()!)
let ilosc = 2
var student : [Student] = [ilosc]
let start = 0
/*
    while start<ilosc{
    let student[start].imie = readLine()
    let student[start].nazwisko = readLine()
    let student[start].rok_urodzenia = readLine()
    let student[start].nr_indeksu = readLine()
    let student[start].kierunek = readLine()
    let student[start].rok_studiow = readLine()
    let student[start].o1 = readLine()
    let student[start].o2 = readLine()
    let student[start].o3 = readLine()
    let student[start].o4 = readLine()
    let student[start].o5 = readLine()
    start++
}
*/

