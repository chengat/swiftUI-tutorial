//
//  ContentView.swift
//  BlossomMovie
//
//  Created by Nikhil Nambiar Chengat on 2026-01-04.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            Tab(Constants.homeString, systemImage: Constants.homeIconString) {
                Text(Constants.homeString)
            }
        }
    }
}

#Preview {
    ContentView()
}
