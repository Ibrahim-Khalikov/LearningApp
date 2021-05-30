//
//  LearningAppApp.swift
//  LearningApp
//
//  Created by cloud_vfx on 29/05/21.
//

import SwiftUI

@main
struct LearningApp: App {
    var body: some Scene {
        WindowGroup {
            
            HomeView()
                .environmentObject(ContentModel())
        }
    }
}
