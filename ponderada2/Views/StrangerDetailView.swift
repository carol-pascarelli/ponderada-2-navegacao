//
//  StrangerDetailView.swift
//  ponderada2
//
//  Created by ec10-g3 on 25/05/26.
//
import SwiftUI
// NarutoDetailView.swift
struct StrangerDetailView: View {
    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 16) {
                // TODO E: ZStack com hero (fundo + emoji + overlay)
                //         badge de tipo + nome em cima do hero
                InfoBagde(programa: strangerThings)
                // TODO F: secao Sinopse (Text com naruto.sinopse)
 
                // TODO G: HStack com 3x InfoBadge
                //         (episodios, temporadas, status)
 
                // TODO H: secao Personagens
                //         ForEach sobre naruto.personagens
                //         -> CharacterRow para cada um
            }
        }
        .ignoresSafeArea(edges: .top)
        .navigationBarTitleDisplayMode(.inline)
    }
}

