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
                    Text(Constants.playString)
                        .frame(width: 100, height: 50)
                        .foregroundColor(.buttonText)
                        .bold()
                        .background {
                            RoundedRectangle(cornerRadius: 20, style: .continuous)
                                .stroke(.buttonBorder,lineWidth: 5)
                          
                        
                        }
                }
                Button {
                    
                } label: {
                    Text(Constants.downloadString)
                }
            }
        }
    }
}

#Preview {
    HomeView()
}
