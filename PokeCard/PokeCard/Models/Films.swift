//
//  Films.swift
//  PokeCard
//
//  Created by Angel Becerra Rojas on 07/05/25.
//

import SwiftUI

struct Films: Codable, Identifiable {
    let id : String
    let title : String
    let original_title : String
    let image : String
    let description : String
    let rt_score : String
}
