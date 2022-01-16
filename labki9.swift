//zad 9.1
/*
struct liczbaZespolona {
var rzeczywista: Int
var urojona: Int
init(rzeczywista: Int, urojona: Int) {
self.rzeczywista = rzeczywista
self.urojona = urojona
}
func dodaj(L1:liczbaZespolona, L2:liczbaZespolona){
    let wynik=liczbaZespolona()
    wynik.rzeczywista = L1.rzeczywista+L2.rzeczywista
    wynik.urojona = L1.urojona + L2.urojona
    return wynik
}
}

let l1 = liczbaZespolona (rzeczywista:5, urojona:5)
let l2 = liczbaZespolona (rzeczywista:10, urojona:3)
dodaj(l1,l2)
*/
//zadanie 9.2
struct loty{
    var miejsce=[Int : String]()
    var cel = [Int : String]()
    var czas: Double
}
loty=[][];
var i = readLine()!
while i >=0{
var s = readLine()!
var z = readLine()!
loty.insert(s,z)
i--
}

/*
//Zadanie 9.3
var samochody=Set<String>()
samochody=[]
samochody.insert("Fiat")
samochody.insert("Audi")
samochody.insert("BMW")
samochody.insert("Opel")
samochody.insert("Citroen")


if samochody.isEmpty {
print("Zbiór jest pusty")
}
else {
print(samochody)
}

var s = readLine()!

if let samochodydoUsuniecia = samochody.remove(s) {
print("Można usunąć \(samochodydoUsuniecia)")
print(samochody)
}
else {
print("Element do usunięcia nie istnieje")
}
*/