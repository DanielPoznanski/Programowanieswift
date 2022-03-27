//
//  Ex82View.swift
//  Lab_2_homework
//
//  Created by Przemyslaw Sipta on 24/03/2022.
//

import SwiftUI

struct MenuOptions: Identifiable {
    var id = UUID()
    var text: String
    var subOptions: [MenuOptions]?
    
    static let subOpt1 = MenuOptions(text: "Menu 2.1")
    static let subOpt2 = MenuOptions(text: "Menu 2.2")
    static let subOpt3 = MenuOptions(text: "Menu 3.1")
    static let subOpt4 = MenuOptions(text: "Menu 3.2")
    
    static let example1 = MenuOptions(text: "Opcja 1")
    static let example2 = MenuOptions(text: "Opcja 2", subOptions: [
        MenuOptions.subOpt1,
        MenuOptions.subOpt2
    ])
    static let example3 = MenuOptions(text: "Opcja 3", subOptions: [
        MenuOptions.subOpt3,
        MenuOptions.subOpt4
    ])
}

struct Ex82View: View {
    var body: some View {
        FirstMenu()
            .navigationTitle("Hello")
            .toolbar{
                ToolbarItem(placement: .navigationBarTrailing) {
                    SecondMenu()
                }
            }
    }
}

struct SecondMenu: View {
    @State private var showMenu: Bool = false
    let menuOptions: [MenuOptions] = [.example1, .example2, .example3]
    var body: some View {
        Button(
            action: {
                self.showMenu.toggle()
            },
            label: {
                Text("Menu")
            }
        ).sheet(isPresented: $showMenu) {
            List(menuOptions, children: \.subOptions) { row in
                Text(row.text)
            }
            Button(
                action: {
                    self.showMenu.toggle()
                },
                label: {
                    Text("Close")
                }
            )
        }
    }
}

struct FirstMenu: View {
    @State private var choosenOption: String = ""
    @State private var showMenu: Bool = false
    var body: some View {
        VStack() {
            Button(
                action: {
                    self.showMenu.toggle()
                },
                label: {
                    Text("Open menu")
                }
            ).sheet(isPresented: $showMenu) {
                List(1..<4) { row in
                    Button(
                        action: {
                            self.choosenOption = "Opcja \(row)"
                            self.showMenu.toggle()
                        },
                        label: {
                            Text("Opcja \(row)")
                        }
                    )
                }
            }
            Text(choosenOption)
        }
    }
}

struct Ex82View_Previews: PreviewProvider {
    static var previews: some View {
        Ex82View()
    }
}
