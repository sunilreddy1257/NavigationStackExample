//
//  DataManager.swift
//  NavigationStackExample
//
//  Created by Sunil Kumar Reddy Sanepalli on 14/06/23.
//

import Foundation
import SwiftUI

struct DataManager {
    static let platformsData: [Users] = [
        .init(name: "Test User1", imageName: "person", color: .green),
        .init(name: "Test User2", imageName: "person.fill", color: .red),
        .init(name: "Test User3", imageName: "person.fill.checkmark", color: .blue),
        .init(name: "Test User4", imageName: "person.circle", color: .black),
    ]
    
    static let gamesData: [Game] = [
        .init(name: "Test Game1", rating: "89"),
        .init(name: "Test Game2", rating: "76"),
        .init(name: "Test Game3", rating: "60"),
        .init(name: "Test Game4", rating: "95"),
    ]
}

struct Users: Hashable {
    var name: String
    var imageName: String
    var color: Color
}

struct Game: Hashable {
    var name: String
    var rating: String
}

