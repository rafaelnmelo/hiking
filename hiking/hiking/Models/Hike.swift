//
//  Hike.swift
//  Hiking
//
//  Created by Rafael Nunes on 27/11/24.
//

import Foundation

struct Hike: Identifiable, Hashable {
    let id = UUID()
    let name: String
    let photo: String
    let miles: Double
}
