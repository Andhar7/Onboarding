//
//  StewartTeachApp.swift
//  StewartTeach
//
//  Created by Andrej Kling on 09.11.20.
//

import SwiftUI

@main
struct StewartTeachApp: App {
    var body: some Scene {
        WindowGroup {
            TabView {
                OnboardingView()
                .tabItem {
                    Image(systemName: "list.bullet")
                    Text("OnBoard")
                }
                ContView()
                    .tabItem {
                        Image(systemName: "person")
                        Text("ModalView")
                    }
                ContentView()
                    .tabItem {
                        Image(systemName: "link")
                        Text("Rectangle")
                    }
                EnumMultipleSheets()
                    .tabItem {
                        Image(systemName: "star")
                        Text("MultiSheets")
                    }
            }
        }
    }
}
