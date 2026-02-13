//
//  ContentView.swift
//  War Card Game
//
//  Created by Nikhil Nambiar Chengat on 2026-02-11.
//

import SwiftUI

struct ContentView: View {
    var playerCard = "card2"
    var cpuCard = "card3"
    
    var playerScore = 0
    var cpuScore = 0
    
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
                    Image(playerCard)
                    Spacer()
                    Image(cpuCard)
                    Spacer()
                }
                Spacer()
                
                // Button
                Button{
                    dealCard()
                   
                } label: {
                    Image("button")
                }
                
                Spacer()
                // Scores
                HStack (){
                    Spacer()
                    VStack(){
                        Text("Player")
                            .font(.headline)
                            .fontWeight(.semibold)
                            .padding(.bottom)
                        Text(String(playerScore))
                            .font(.largeTitle)
                    }
                    Spacer()
                    VStack(){
                        Text("CPU")
                            .font(.headline)
                            .fontWeight( .semibold)
                            .padding(.bottom)
                        Text(String(cpuScore))
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

func dealCard() {
    //implement logic
}

#Preview {
    ContentView()
}
