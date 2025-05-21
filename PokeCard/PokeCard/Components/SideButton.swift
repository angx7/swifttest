//
//  SideButton.swift
//  PokeCard
//
//  Created by Angel Becerra Rojas on 07/05/25.
//

import SwiftUI

struct SideButton: View {
    let icon: String
    var body: some View {
        Button {
            print("Boton presionado")
        } label: {
            Image(systemName: icon)
                .resizable()
                .scaledToFit()
                .frame(width: 24, height: 24)
                .padding()
                .foregroundColor(Color("TextColor"))
                .background(Color.gray.opacity(0.2))
                .clipShape(Circle())
                .overlay(
                    Circle()
                        .stroke(style: StrokeStyle(lineWidth: 0.2))
                )
                
        }
        .buttonStyle(PlainButtonStyle())

    }
}

#Preview {
    SideButton(icon: "person.3")
}
