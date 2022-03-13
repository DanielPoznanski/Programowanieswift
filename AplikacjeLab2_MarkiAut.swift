import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView{
            VStack(){
                NavigationLink(
                    destination: Marka(
                        info: "Informacje o BMW"
                    ),
                    label: {
                        Text("BMW")
                            .frame(width: 200, height: 50)
                            .background(Color.red)
                }
                )
                NavigationLink(
                    destination: Marka(
                        info: "Informacje o Audi"
                    ),
                    label: {
                        Text("Audi")
                            .frame(width: 200, height: 50)
                            .background(Color.yellow)
                }
                )
                NavigationLink(
                    destination: Marka(
                        info: "Informacje o Citroen"
                    ),
                    label: {
                        Text("Citroen")
                            .frame(width: 200, height: 50)
                            .background(Color.green)
                }
                )
            }
        }
    }
}

struct Marka: View {
    var info: String
    var body: some View {
        NavigationView{
            Text(info)
        }
    }
}
