//
//  SideBar.swift
//  PokeCard
//
//  Created by Angel Becerra Rojas on 07/05/25.
//

import SwiftUI

struct SideBar: View {
    var body: some View {
        VStack{
            SideButton(icon: "movieclapper")
            SideButton(icon: "person.3")
            SideButton(icon: "map")
            SideButton(icon: "dog.fill")
            SideButton(icon: "car")
            Spacer()
        }
        .padding()
    }
}

#Preview {
    SideBar()
}
