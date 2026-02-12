//
//  ContentView.swift
//  War Card Game
//
//  Created by Nikhil Nambiar Chengat on 2026-02-11.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack{
            
            // Background
            Image("background-wood-grain")
            VStack(){
                Spacer()
                // Logo
                Image("logo")
                Spacer()
                // Cards
                HStack {
                    Spacer()
                    Image("card2")
                    Spacer()
                    Image("card3")
                    Spacer()
                }
                Spacer()
                // Button
                Image("button")
                Spacer()
                // Scores
                HStack (){
                    Spacer()
                    VStack(spacing: 30){
                        Text("Player")
                            .font(Font.title2)
                            .fontWeight(.semibold)
                        Text("0")
                            .font(Font.largeTitle.bold())
                    }
                    Spacer()
                    VStack(spacing: 30){
                        Text("CPU")
                            .font(Font.title2)
                            .fontWeight( .semibold)
                        Text("0")
                            .font(Font.largeTitle.bold())
                    }
                    Spacer()
                    
                }
                .foregroundColor(Color.white)
                Spacer()
                
            }
            .padding()
        }
    }
}

#Preview {
    ContentView()
}
