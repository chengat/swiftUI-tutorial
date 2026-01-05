//
//  HomeView.swift
//  BlossomMovie
//
//  Created by Nikhil Nambiar Chengat on 2026-01-04.
//

import SwiftUI

struct HomeView: View {
    var heroTestTitle = Constants.testTitleURL
    
    
    var body: some View {
        VStack {
            // async for loading the image on a diff thread
            AsyncImage(url: URL(string: heroTestTitle)) 
        }
    }
}

#Preview {
    HomeView()
}
