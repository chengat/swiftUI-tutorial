//
//  HorizontalListView.swift
//  BlossomMovie
//
//  Created by Nikhil Nambiar Chengat on 2026-01-04.
//

import SwiftUI

struct HorizontalListView: View {
    let header = Constants.trendingMovieString // let = final, no change
    var titles = [Constants.testTitleURL, Constants.testTitleURL2, Constants.testTitleURL3] // changeable
    
    
    var body: some View {
        VStack(alignment: .leading){
            Text(header)
                .font(.title) // Increases the size of the text
            
            ScrollView(.horizontal) {
                LazyHStack { // only loads when in view
                    ForEach(titles, id:\.self) { title in
                        AsyncImage(url: URL(string: title)) {image in
                            image
                                .resizable()
                                .scaledToFit()
                        } placeholder: {
                            ProgressView()
                        }
                        .frame(width: 120, height: 200)
                        
                    }
                }
            }
                
        }
    }
}

#Preview {
    HorizontalListView()
}
