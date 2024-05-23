//
//  metruyenchuApp.swift
//  metruyenchu
//
//  Created by HungBui on 10/05/2024.
//

import SwiftUI

@main
struct metruyenchuApp: App {
    @StateObject var StoryDetailViewModel = StoryDetailViewViewModel()
    var body: some Scene {
        WindowGroup {
            MainTabView()
                .environmentObject(StoryDetailViewModel)
        }
    }
}
