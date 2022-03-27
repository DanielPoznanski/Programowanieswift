//
//  Ex81View.swift
//  Lab_2_homework
//
//  Created by Przemyslaw Sipta on 23/03/2022.
//

import SwiftUI

struct Event: Identifiable {
    var id: Int
    var name: String
    var duration: Double
}

private var events = [
    Event(id: 0, name: "Event 1", duration: 0),
    Event(id: 1, name: "Event 2", duration: 0),
    Event(id: 2, name: "Event 3", duration: 0),
]

struct Ex81View: View {
    
    var body: some View {
        VStack() {
            List{
                ForEach(events) {
                    event in ListItem(event: event)
                }
            }
        }
    }
}

struct ListItem: View {
    @State var eventName: String
    @State var eventDuration: Double
    init(event: Event) {
        _eventName = State(initialValue: event.name)
        _eventDuration = State(initialValue: event.duration)
    }
    var body: some View {
        NavigationLink(
            destination: Ex81SecondView(eventName: $eventName, eventDuration: $eventDuration),
            label: {
                HStack() {
                    Text(eventName)
                    Text(String(eventDuration))
                }
            }
        )
    }
}

struct Ex81SecondView: View {
    @Binding var eventName: String
    @Binding var eventDuration: Double
    var body: some View {
        VStack() {
            TextField("Name", text: $eventName)
            Slider(value: $eventDuration, in: 0...60, step: 5)
        }
    }
}

struct Ex81View_Previews: PreviewProvider {
    static var previews: some View {
        Ex81View()
    }
}
