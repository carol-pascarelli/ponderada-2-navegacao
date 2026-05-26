
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
            
            ZStack(alignment: .bottomLeading) {
                
                Rectangle()
                    .fill(color)
                    .frame(height: 250)
                
                LinearGradient(
                    colors: [.clear, .black.opacity(0.7)],
                    startPoint: .top,
                    endPoint: .bottom
                )
                
                Text(programa.emoji)
                    .font(.system(size: 100))
                
                VStack(alignment: .leading, spacing: 8) {
                    
                    Capsule()
                        .fill(.white)
                        .frame(width: 100, height: 30)
                        .overlay(
                            Text(programa.tipo)
                                .font(.subheadline)
                                .foregroundStyle(color)
                        )
                    
                    Text(programa.nome)
                        .font(.largeTitle)
                        .bold()
                        .foregroundStyle(.white)
                }
                .padding()
                .frame(maxWidth: .infinity, alignment: .leading)
                .frame(maxHeight: .infinity, alignment: .bottomLeading)
            }
            Text("Sinopse")
                .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
            
            Text(programa.sinopse)
                .font(.subheadline)
                .foregroundStyle(.secondary)
                .multilineTextAlignment(.center)
                .padding(.top, 4)
            Text("Informações")
                .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
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
