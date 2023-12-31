//
//  ContentView.swift
//  GridCalendar
//
//  Created by Kevin Martinez on 12/30/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Hello, world!")
        }
        .padding()
    }
}


//MARK: - Preview

#Preview {
    ContentView()
}


//MARK: - Day Model

struct Day: Identifiable {
    let id = UUID()
    let value: Int
}

//MARK: - Month Model

struct Month {
    let name: String
    let numberOFDays: Int
    var days: [Day]
    
    init(name: String, numberOFDays: Int) {
        self.name = name
        self.numberOFDays = numberOFDays
        self.days = []
        
        for i in 1...numberOFDays {
            self.days.append(Day(value: i))
        }
    }
}

//MARK: - data example

let year = [
    Month(name: "January", numberOfDays: 31),
    Month(name: "February", numberOfDays: 28),
    Month(name: "March", numberOfDays: 31),
    Month(name: "April", numberOfDays: 30),
    Month(name: "May", numberOfDays: 31),
    Month(name: "June", numberOfDays: 30),
    Month(name: "July", numberOfDays: 31),
    Month(name: "August", numberOfDays: 31),
    Month(name: "September", numberOfDays: 30),
    Month(name: "October", numberOfDays: 31),
    Month(name: "November", numberOfDays: 30),
    Month(name: "December", numberOfDays: 31),
]

