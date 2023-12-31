//
//  ContentView.swift
//  GridCalendar
//
//  Created by Kevin Martinez on 12/30/23.
//

import SwiftUI

struct ContentView: View {
    
    let layout = [
        GridItem(.flexible(minimum: 40)),
        GridItem(.flexible(minimum: 40)),
        GridItem(.flexible(minimum: 40)),
        GridItem(.flexible(minimum: 40)),
        GridItem(.flexible(minimum: 40)),
        GridItem(.flexible(minimum: 40)),
        GridItem(.flexible(minimum: 40))
    ]
    
    var body: some View {
        
        ScrollView {
            LazyVGrid(columns: layout, pinnedViews: [.sectionHeaders]) {
                ForEach(year, id: \.name) { month in
                    Section {
                        ForEach(month.days) { day in
                            Capsule()
                                .overlay(
                                    Text("\(day.value)")
                                        .foregroundStyle(.white)
                                )
                                .foregroundColor(.blue)
                                .frame(height: 40)
                        }
                    } header: {
                        Text(verbatim: "\(month.name)")
                            .font(.headline)
                    }
                }
            }
        }
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
    let numberOfDays: Int
    var days: [Day]
    
    init(name: String, numberOfDays: Int) {
        self.name = name
        self.numberOfDays = numberOfDays
        self.days = []
        
        for i in 1...numberOfDays {
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

