//
//  HorizontalListView.swift
//  BlossomMovie
//
//  Created by Nikhil Nambiar Chengat on 2026-01-04.
//

import SwiftUI

struct HorizontalListView: View {
    let header = Constants.trendingMovieString // let = final, no change
    var title = [Constants.testTitleURL, Constants.testTitleURL2, Constants.testTitleURL3] // changeable
    
    
    var body: some View {
        VStack {
            Text(header)
                .font(.title) // Increases the size of the text
                
        }
    }
}

#Preview {
    HorizontalListView()
}
