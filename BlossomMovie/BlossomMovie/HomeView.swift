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
        VStack { // vertical stack - for on top of each other
            // async for loading the image on a diff thread
            AsyncImage(url: URL(string: heroTestTitle)) { image in
                image
                    .resizable() // these are modififers
                    .scaledToFit()
                
            } placeholder: {
                ProgressView() // will show progress circle when loading the image
            }
            
            HStack { // horizontal stack - for side by side
                Button {
                    
                } label: {
                    Text("Hello")
                }
            }
        }
    }
}

#Preview {
    HomeView()
}
