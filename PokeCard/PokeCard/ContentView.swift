//
//  ContentView.swift
//  PokeCard
//
//  Created by Angel Becerra Rojas on 07/05/25.
//

import SwiftUI

struct ContentView: View {
    var screen = NSScreen.main!.visibleFrame
    @State var filmList: [Films] = []
    @State var isFilmLoading: Bool = false
    let columns = [
        GridItem(.flexible()),
        GridItem(.flexible()),
        GridItem(.flexible()),
        GridItem(.flexible())
    ]
    var body: some View {
        HStack{
            SideBar()
                .frame(width: (screen.width / 5) / 4, height: screen.height)
                .background(Color("SideBarColor"))
            VStack {
                
                ScrollView{
                    if isFilmLoading {
                        ProgressView("Loading Films...")
                            .frame(width: 100, height: 100)
                    }else{
                        LazyVGrid(columns: columns, spacing: 20){
                            ForEach(filmList) { film in
                                FilmCard(film: film)
                            }
                        }
                    }
                }
                Spacer()
            }
            .padding()
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            
        }
        .frame(width: screen.width, height: screen.height)
        .background(Color("MainColor"))
        .task {
            await loadFilms()
        }
        
    }
    
    func loadFilms() async {
        let url = URL(string: "https://ghibliapi.vercel.app/films/")
        do {
            isFilmLoading = true
            let (data, _) = try await URLSession.shared.data(from: url!)
            let filmsDecoded = try JSONDecoder().decode([Films].self, from: data)
            filmList = filmsDecoded
            isFilmLoading = false
        }
        catch{
            print("Error al cargar las películas: \(error)")
            isFilmLoading = false
        }
    }
}

#Preview {
    ContentView()
}
