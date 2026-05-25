//
//  InfoBadge.swift
//  ponderada2
//
//  Created by ec10-g3 on 25/05/26.
//

import SwiftUI

struct InfoBagde: View {
    let programa: Programa
    
    var body: some View {
        let color = getColor(tipo: programa.tipo)
        VStack {
            Text(programa.emoji).font(.system(size: 60))
            Capsule()
                .fill(color)
                .frame(width: 100, height: 30)
                .padding(.leading, 10)
                .padding(.top, 10)
                .padding(.bottom, 10)
                .padding(.trailing, 10)
                .overlay(
                    Text(programa.tipo)
                        .font(.title3)
                        .foregroundStyle(Color(.black))
                )
            Text(programa.nome)
                .font(.headline).bold(true)
                .foregroundStyle(Color(.black))
        }
    }
}
