
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
                
                ForEach(programas, id: \.nome) { programa in
                    NavigationLink(
                        destination: ProgramaDetailView(programa: programa)){
                            ShowCard(programa: programa)
                        }
                }
            }
            .padding()
            .navigationTitle("Programas")
        }
    }
}

#Preview {
    ListaView()
}
