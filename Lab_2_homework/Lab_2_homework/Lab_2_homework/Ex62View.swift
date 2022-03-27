//
//  Ex62View.swift
//  Lab_2_homework
//
//  Created by Przemyslaw Sipta on 23/03/2022.
//

import SwiftUI

struct Book {
    var title: String
    var author: String
}

let someBook: Book = Book(title: "Pan Tadeusz", author: "Adam Mickiewicz")

struct Ex62View: View {
    @State private var showSecond: Bool = false
    var body: some View {
        Button(
            action: {
                self.showSecond.toggle()
            },
            label: {
                Text("Pokaz")
            }
        ).sheet(isPresented: $showSecond) {
            Ex62ViewSecondView(book: someBook)
        }
    }
}

struct Ex62ViewSecondView: View {
    var book: Book
    var body: some View {
        VStack() {
            Text(book.title)
            Text(book.author)
        }
    }
}

struct Ex62View_Previews: PreviewProvider {
    static var previews: some View {
        Ex62View()
    }
}
