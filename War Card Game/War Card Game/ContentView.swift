//
//  ContentView.swift
//  War Card Game
//
//  Created by Nikhil Nambiar Chengat on 2026-02-11.
//

import SwiftUI

struct ContentView: View {
    // @State needs to be add to global var especially if used by other elements in the view
   @State var playerCard = "card2"
   @State var cpuCard = "card3"
   @State var playerScore = 0
   @State var cpuScore = 0
    
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
    func dealCard() {
        // Randomize
        let playerValue = Int.random(in: 2...14)
        let cpuValue = Int.random(in: 2...14)
        
        // Change card
        playerCard = "card" + String(playerValue)
        cpuCard = "card" + String(cpuValue)
        
        // compare and change score
        if playerValue > cpuValue {
            playerScore += 1
        }
        else if cpuValue > playerValue {
            cpuScore += 1
        }
        else {
            playerScore += 1
            cpuScore += 1
        }
     
    }
}



#Preview {
    ContentView()
}
