import SwiftUI

struct CharacterRow: View {
    let personagem: (nome: String, papel: String, emoji: String)
    
    var body: some View {
        HStack(spacing: 12) {
            Text(personagem.emoji)
                .font(.title)
            
            VStack(alignment: .leading, spacing: 4) {
                Text(personagem.nome)
                    .font(.body)
                    .bold()
                
                Text(personagem.papel)
                    .font(.caption)
                    .foregroundStyle(.secondary)
            }
            
            Spacer()
        }
        .padding(12)
        .background(Color(.secondarySystemBackground))
        .cornerRadius(10)
    }
}


