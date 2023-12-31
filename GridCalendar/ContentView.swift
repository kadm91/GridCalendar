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
