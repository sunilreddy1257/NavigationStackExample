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
}

struct Users: Hashable {
    var id = UUID()
    var name: String
    var imageName: String
    var color: Color
}

