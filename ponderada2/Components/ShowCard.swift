//
//  ShowCard.swift
//  ponderada2
//
//  Created by ec10-g3 on 25/05/26.
//0


import SwiftUI
// ShowCard.swift -- componente reutilizavel

struct ShowCard: View {
    let programa: Programa
    
    var body: some View {
        NavigationLink(destination: getNextView(nome: programa.nome) ) {
            
            HStack(spacing: 12) {
                
                let color = getColor(tipo: programa.tipo)
                // TODO A: barra lateral colocrida por tipo
                Rectangle()
                    .fill(color)
                    .frame(width: 6)
                
                // TODO B: thumbnail com emoji
                RoundedRectangle(cornerRadius: 5)
                    .fill(color).opacity(0.4)
                    .overlay(
                        Text(programa.emoji).font(.system(size: 60))
                    )
                    .frame(width: 90, height: 100)
                
                
                VStack(alignment: .leading, spacing: 4) {
                    // TODO C: badge de tipo + nome + genero + avaliacao
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
                    Text(programa.genero)
                        .font(.subheadline)
                        .foregroundStyle(Color(.secondaryLabel))
                    HStack{
                        GetStars(nota: programa.avaliacao)
                        Text("\(programa.avaliacao, specifier: "%.1f")")
                    }
                    
                    
                }
                Spacer()
                // TODO D: chevron Image(systemName: "chevron.right")
                Image(systemName: "chevron.right")
            }
            .background(Color(.systemBackground))
            .cornerRadius(16)
        }
    }
}


func getColor(tipo : String) -> Color{
    if(tipo == "Anime"){
        return .orange
    }
    if (tipo == "Desenho"){
        return .blue
    }
    if (tipo == "Serie"){
        return .purple
    }
    return .gray
}

struct GetStars: View{
    let nota : Double
    var body: some View{
        if(nota == 5){
            HStack{
                Image(systemName: "star.fill").foregroundColor(.yellow)
                Image(systemName: "star.fill").foregroundColor(.yellow)
                Image(systemName: "star.fill").foregroundColor(.yellow)
                Image(systemName: "star.fill").foregroundColor(.yellow)
                Image(systemName: "star.fill").foregroundColor(.yellow)
            }
        }
        else if(nota >= 4){
            HStack{
                Image(systemName: "star.fill").foregroundColor(.yellow)
                Image(systemName: "star.fill").foregroundColor(.yellow)
                Image(systemName: "star.fill").foregroundColor(.yellow)
                Image(systemName: "star.fill").foregroundColor(.yellow)
                Image(systemName: "star").foregroundColor(.yellow)
            }
        }
        else if(nota >= 3){
            HStack{
                Image(systemName: "star.fill").foregroundColor(.yellow)
                Image(systemName: "star.fill").foregroundColor(.yellow)
                Image(systemName: "star.fill").foregroundColor(.yellow)
                Image(systemName: "star").foregroundColor(.yellow)
                Image(systemName: "star").foregroundColor(.yellow)
            }
        }
        else if(nota >= 2){
            HStack{
                Image(systemName: "star.fill").foregroundColor(.yellow)
                Image(systemName: "star.fill").foregroundColor(.yellow)
                Image(systemName: "star").foregroundColor(.yellow)
                Image(systemName: "star").foregroundColor(.yellow)
                Image(systemName: "star").foregroundColor(.yellow)
            }
        }
        else if(nota >= 1){
            HStack{
                Image(systemName: "star.fill").foregroundColor(.yellow)
                Image(systemName: "star").foregroundColor(.yellow)
                Image(systemName: "star").foregroundColor(.yellow)
                Image(systemName: "star").foregroundColor(.yellow)
                Image(systemName: "star").foregroundColor(.yellow)
            }
        }
        else if(nota <= 1){
            HStack{
                Image(systemName: "star").foregroundColor(.yellow)
                Image(systemName: "star").foregroundColor(.yellow)
                Image(systemName: "star").foregroundColor(.yellow)
                Image(systemName: "star").foregroundColor(.yellow)
                Image(systemName: "star").foregroundColor(.yellow)
            }
        }
    }
}

@ViewBuilder
func getNextView (nome : String) -> some View {
    if nome == "Naruto" {
        NarutoDetailView()
    }
    if nome == "Avatar: A Lenda de Aang" {
        AvatarDetailView()
    }
    if nome == "Stranger Things" {
        StrangerDetailView()
    }
}


