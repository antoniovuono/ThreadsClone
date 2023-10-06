//
//  ThreadsTabView.swift
//  ThreadsClone
//
//  Created by Antonio Vuono on 05/10/23.
//

import SwiftUI

struct ThreadsTabView: View {
  @State private var selectedTab = 0
  
  var body: some View {
    TabView(selection: $selectedTab) {
      FeedView()
        .tabItem {
          Image(systemName: selectedTab == 0 ? "house.fill" : "house")
            .environment(\.symbolVariants, selectedTab == 0 ? .fill : .none)
        }
      
      ExploreView()
        .tabItem {
          Image(systemName: "magnifyingglass")
        }
      
      CreateThreadView()
        .tabItem {
          Image(systemName: "plus")
        }
      
      ActivityView()
        .tabItem {
          Image(systemName: selectedTab == 3 ? "heart.fill" : "heart")
            .environment(\.symbolVariants, selectedTab == 0 ? .fill : .none)
        }
      
      ProfileView()
        .tabItem {
          Image(systemName: selectedTab == 0 ? "person.fill" : "person")
            .environment(\.symbolVariants, selectedTab == 0 ? .fill : .none)
        }
    }
  }
}

#Preview {
  ThreadsTabView()
}
