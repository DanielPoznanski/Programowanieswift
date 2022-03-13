import SwiftUI

struct CzerwonyView: View {
    var body: some View {
        NavigationView{
            VStack() {
                KoloView(
                    color: Color.red,
                    liczba: 1
                ).navigationBarTitle("Czerwony")
                NavigationLink(
                    destination: NiebieskiView(),
                    label: {
                        Text("Przejdz do nastepnego ekranu")
                            .frame(width: 200, height: 40)
                            .background(Color.yellow)
                }
                )
            }
        }
    }
}

struct NiebieskiView: View {
    var body: some View {
        NavigationView{
            VStack() {
                KoloView(
                    color: Color.blue,
                    liczba: 2
                ).navigationBarTitle("Niebieski")
                NavigationLink(
                    destination: ZielonyView(),
                    label: {
                        Text("Przejdz do nastepnego ekranu")
                            .frame(width: 200, height: 40)
                            .background(Color.yellow)
                }
                )
            }
        }
    }
}

struct ZielonyView: View {
    var body: some View {
        NavigationView{
            VStack() {
                KoloView(
                    color: Color.green,
                    liczba: 3
                ).navigationBarTitle("Zielony")
            }
        }
    }
}

struct KoloView: View {
    var color: Color
    var liczba: Int
    var body: some View {
        ZStack(){
            Circle()
                .frame(width: 200, height: 200)
                .foregroundColor(color)
            Text("\(liczba)")
                .foregroundColor(Color.black)
                .font(.system(size: 50))
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        CzerwonyView()
    }
}


