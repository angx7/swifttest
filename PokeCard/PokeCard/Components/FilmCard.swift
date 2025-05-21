//
//  FilmCard.swift
//  PokeCard
//
//  Created by Angel Becerra Rojas on 07/05/25.
//

import SwiftUI

struct FilmCard: View {
    let film : Films
    var body: some View {
        VStack(alignment: .leading){
            HStack{
                // Imagen
                Spacer()
                AsyncImage(url: URL(string: film.image))
                { image in
                    image
                        .resizable()
                        .frame(width: 150, height: 150)
                        .clipShape(RoundedRectangle(cornerRadius: 20))
                } placeholder: {
                    Color.gray.opacity(0.2)
                        .frame(width: 150, height: 150)
                    Text("Loading...")
                }
                Spacer()
            }
            
            // Título original
            
            Text("Título original: \(film.original_title)")
                .font(.headline)
                .lineLimit(2)
            
            // Título en inglés
            
            Text("Título en inglés: \(film.title)")
                .font(.headline)
                .lineLimit(2)
            
            // Description
            
            Text(film.description)
                .font(.caption2)
                
            
            // score
            Text("Score: \(film.rt_score)/100")
        }
        .frame(width: 250, height: 250)
        .padding()
        .background(Color("SideBarColor"))
        .clipShape(RoundedRectangle(cornerRadius: 30))
    }
}
