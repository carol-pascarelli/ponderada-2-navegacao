//
//  ListaView.swift
//  ponderada2
//
//  Created by ec10-g3 on 25/05/26.
//
import SwiftUI
// ListaView.swift
struct ListaView: View {
    var body: some View {
        NavigationStack {
            VStack(spacing: 16) {
                
                // TODO 1: ShowCard para naruto
                //         + NavigationLink -> NarutoDetailView
                ShowCard(programa: naruto)
 
                // TODO 2: ShowCard para avatar
                //         + NavigationLink -> AvatarDetailView
                ShowCard(programa: avatar)
 
                // TODO 3: ShowCard para strangerThings
                //         + NavigationLink -> StrangerDetailView
                ShowCard(programa: strangerThings)
                    
            }
            .padding()
            .navigationTitle("Programas")
        }
    }
}

#Preview {
    ListaView()
}
