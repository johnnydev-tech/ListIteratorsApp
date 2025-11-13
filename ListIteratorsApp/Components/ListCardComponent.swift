//
//  ListCardComponent.swift
//  ListIteratorsApp
//
//  Created by Johnny Freire on 12/11/25.
//

import SwiftUI

struct ListCardComponent: View {
    let personEntity: PersonEntity
    var body: some View {
        HStack {
            Circle()
                .frame(width: 20, height: 20)
                .foregroundColor(personEntity.favoriteColor)
            Spacer().frame(width: 16)
            Text(personEntity.name)
                .font(.headline)
                .foregroundColor(.primary)
        }
    }
}

#Preview {
    ListCardComponent(personEntity: PersonEntity(name: "Johnny Freire", favoriteColor: Color.black))
}
