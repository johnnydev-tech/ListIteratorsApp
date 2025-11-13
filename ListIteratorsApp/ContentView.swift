//
//  ContentView.swift
//  ListIteratorsApp
//
//  Created by Johnny Freire on 12/11/25.
//

import SwiftUI

struct ContentView: View {
    let persons: [PersonEntity] = [
        PersonEntity(name: "Johnny Freire", favoriteColor: Color.black),
        PersonEntity(name: "Yoda" , favoriteColor: Color.green),
        PersonEntity(name: "Obi-Wan Kenobi", favoriteColor: Color.blue),
        PersonEntity(name: "Darth Vader", favoriteColor: Color.red),
        
        
    ]
    var body: some View {
        let sortedPersons: [PersonEntity] = persons.sorted(by: { $0.name < $1.name })
        NavigationStack{
            List {
                ForEach(sortedPersons, id: \.id) { person in
                    NavigationLink{
                        DetailsItemView(personEntity: person)
                    }
                    label: { ListCardComponent(personEntity: person)
                    }
                }
            }.navigationTitle(Text("Perfis"))
        }
    }
}

#Preview {
    ContentView()
}
