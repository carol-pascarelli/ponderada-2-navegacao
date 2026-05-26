
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
            Text("Sinopse")
                .font(.title)
            
            Text(programa.sinopse)
                .font(.subheadline)
                .foregroundStyle(.secondary)
                .multilineTextAlignment(.center)
                .padding(.top, 4)
            Text("Informações")
                .font(.title/)
            HStack {
                RoundedRectangle(cornerRadius: 12)
                    .fill(.orange).opacity(0.4)
                    .frame(height: 120)
                    .overlay { 
                        VStack {
                            Image(systemName: "tv")
                            Text("\(programa.episodios)")
                                .font(.title)
                            Text("Episodios")
                                .font(.title)
                        }
                    }
                RoundedRectangle(cornerRadius: 12)
                    .fill(.green).opacity(0.4)
                    .frame(height: 120)
                    .overlay { 
                        VStack {
                            Image(systemName: "square.stack")
                            Text("\(programa.temporadas)")
                                .font(.title)
                            Text("Temporadas")
                                .font(.title)
                        }
                    }
                RoundedRectangle(cornerRadius: 12)
                    .fill(.blue).opacity(0.4)
                    .frame(height: 120)
                    .overlay { 
                        VStack {
                            Image(systemName: "checkmark.circle")
                            Text(programa.status)
                                .font(.title)
                            Text("Status")
                                .font(.title)
                        }
                    }
                
                
                
            }
            
            VStack(alignment: .leading, spacing: 10) {
                Text("Personagens Principais")
                    .font(.title2)
                    .bold()
                    .padding(.top, 10)
                
                ForEach(programa.personagens, id: \.nome) { personagem in
                    CharacterRow(personagem: personagem)
                }
            }
            .padding(.horizontal, 16)
        }
    }
}

