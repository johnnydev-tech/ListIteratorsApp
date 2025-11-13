//
//  DetailsItemView.swift
//  ListIteratorsApp
//
//  Created by Johnny Freire on 12/11/25.
//

import SwiftUI

struct DetailsItemView: View {
    let personEntity: PersonEntity
    var body: some View {
        VStack {
            Text("Olá! Meu nome é \(personEntity.name)")
                .font(Font.largeTitle)
            
            Spacer()
            
            HStack(alignment: .center) {
                Text("E minha cor favorita é")
                Text(personEntity.colorName)
                    .font(.title2)
                    .bold()
                    .foregroundStyle(personEntity.favoriteColor)
            }
            .padding(.horizontal)
            
            Spacer()
        }
        .frame(maxHeight: .infinity,
               alignment: .top)
        .padding()
        
    }
}

#Preview {
    DetailsItemView(personEntity: PersonEntity(name: "Johnny Freire", favoriteColor: Color.black))
    
}
