//
//  ContentView.swift
//  Labki2.2
//
//  Created by student on 13/03/2022.
//  Copyright © 2022 PL. All rights reserved.
//

import SwiftUI
struct ContentView: View {
    @State var changeColor: Bool = true
    var body: some View {
        NavigationView{
            VStack(spacing: 25){
                Text("Hello world")
                    .foregroundColor(changeColor ? Color.yellow : Color.green)
                NavigationLink(
                    destination: SecondView(change: $changeColor),
                    label: {
                        Text("Przejdz dalej")
                }
                )
            }
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}




//plik 2
//
//  SecondView.swift
//  Labki2.2
//
//  Created by student on 13/03/2022.
//  Copyright © 2022 PL. All rights reserved.
//

import SwiftUI

struct SecondView: View {
    @Binding var change: Bool
    var body: some View {
        Button ( action: {
            self.change.toggle()
        },
                 label:{
                    Text("Zmiana koloru")
        })
    }
}

struct SecondView_Previews: PreviewProvider {
    static var previews: some View {
        SecondView(change: .constant(true))
    }
}
