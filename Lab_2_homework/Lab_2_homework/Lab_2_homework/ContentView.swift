//
//  ContentView.swift
//  Lab_2_homework
//
//  Created by Przemyslaw Sipta on 22/03/2022.
//

import SwiftUI


struct ContentView: View {
    var body: some View {
        NavigationView{
            VStack() {
                Text("Laboratorium 2")
                    .font(.title)
                Text("praca domowa")
                VStack() {
                    NavigationLink(
                        destination: Ex53View(),
                        label: {
                            Text("Zadanie 5.3")
                        }
                    ).withMenuButtonStyles()
                    NavigationLink(
                        destination: Ex62View(),
                        label: {
                            Text("Zadanie 6.2")
                        }
                    ).withMenuButtonStyles()
                    NavigationLink(
                        destination: Ex81View(),
                        label: {
                            Text("Zadanie 8.1")
                        }
                    ).withMenuButtonStyles()
                    NavigationLink(
                        destination: Ex82View(),
                        label: {
                            Text("Zadanie 8.2")
                        }
                    ).withMenuButtonStyles()
                }.frame(minWidth: 0,  maxWidth: .infinity, minHeight: 0, maxHeight: .infinity, alignment: .center)
            }
            .frame(width: .infinity, height: .infinity, alignment: .leading)
        }
    }
}

extension NavigationLink {
    func withMenuButtonStyles() -> some View {
        self.padding(10.0)
            .foregroundColor(.black)
            .overlay(
                RoundedRectangle(
                    cornerRadius: 10
                )
                .stroke(
                    Color.blue,
                    lineWidth:1)
            )
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
