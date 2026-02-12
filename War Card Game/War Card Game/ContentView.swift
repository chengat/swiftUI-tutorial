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
                            .font(.headline)
                            .fontWeight(.semibold)
                        Text("0")
                            .font(.largeTitle)
                    }
                    Spacer()
                    VStack(spacing: 30){
                        Text("CPU")
                            .font(.headline)
                            .fontWeight( .semibold)
                        Text("0")
                            .font(.largeTitle)
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
