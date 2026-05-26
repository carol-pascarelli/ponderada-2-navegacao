
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
                    .offset(y: -20)
                
                Image(systemName: "chevron.left")
                    .foregroundStyle(.white)
                    .padding()
                    .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .topLeading)
                
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
                .font(.headline)
            
            Text(programa.sinopse)
                .font(.subheadline)
                .foregroundStyle(.secondary)
                .multilineTextAlignment(.center)
                .padding(.top, 4)
            Text("Informações")
                .font(.headline)
            HStack {
                RoundedRectangle(cornerRadius: 12)
                    .fill(.orange).opacity(0.4)
                    .frame(height: 120)
                    .overlay { 
                        VStack {
                            Image(systemName: "tv")
                                .font(.title2)
                            Text("\(programa.episodios)")
                                .font(.title2)
                                .bold()
                            Text("Episodios")
                                .font(.footnote)
                        }
                    }
                RoundedRectangle(cornerRadius: 12)
                    .fill(.green).opacity(0.4)
                    .frame(height: 120)
                    .overlay { 
                        VStack {
                            Image(systemName: "square.stack")
                                .font(.title2)
                            Text("\(programa.temporadas)")
                                .font(.title2)
                                .bold()
                            Text("Temporadas")
                                .font(.footnote)
                        }
                    }
                RoundedRectangle(cornerRadius: 12)
                    .fill(.blue).opacity(0.4)
                    .frame(height: 120)
                    .overlay { 
                        VStack {
                            Image(systemName: "checkmark.circle")
                                .font(.title2)
                            Text(programa.status)
                                .font(.title2)
                                .bold()
                            Text("Status")
                                .font(.footnote)
                        }
                    }
                
                
                
            }
            
            VStack(alignment: .leading, spacing: 10) {
                Text("Personagens Principais")
                    .font(.headline)
                    .bold()
                    .padding(.top, 10)
                
                ForEach(programa.personagens, id: \.nome) { personagem in
                    CharacterRow(personagem: personagem)
                }
            }
            .padding(.horizontal, 16)
            
            Button(action: {
                print("Pesquise no google")
            }) {
                Text("Ver episódios")
                    .font(.headline)
                    .foregroundStyle(.white)
                    .frame(maxWidth: .infinity) 
                    .frame(height: 50)
                    .background(color)
                    .cornerRadius(12)
            }
            .padding(.horizontal, 16)
            .padding(.top, 20) 
            .padding(.bottom, 20) 
                
                
            
        }
    }
}
