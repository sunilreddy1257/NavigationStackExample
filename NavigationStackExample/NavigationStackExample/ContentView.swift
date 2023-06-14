//
//  ContentView.swift
//  NavigationStackExample
//
//  Created by Sunil Kumar Reddy Sanepalli on 14/06/23.
//

import SwiftUI

struct ContentView: View {
    var platforms = DataManager.platformsData
    var body: some View {
        NavigationStack {
        ZStack {
            LinearGradient(colors: [.blue, .white], startPoint: .leading, endPoint: .trailing)
                .edgesIgnoringSafeArea(.all)
            
            List {
                Section("Platforms") {
                    ForEach(platforms, id: \.name) { platform in
                        
                        NavigationLink(value: platform) {
                            Label(platform.name, systemImage: platform.imageName)
                                .foregroundColor(platform.color)
                        }
                        /*NavigationLink {
                            DetailsView(platform: platform)
                        } label: {
                            Label(platform.name, systemImage: platform.imageName)
                                .foregroundColor(platform.color)
                        }*/
                    }
                }
            }
            
        }
        .navigationTitle("Gaming")
        .navigationDestination(for: Users.self) { user in
            Text("\(user.name)")
        }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct DetailsView: View {
    var platform: Users
    var body: some View {
        Label(platform.name, systemImage: platform.imageName)
            .foregroundColor(platform.color)
    }
    
}
