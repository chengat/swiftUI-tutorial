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
            Image("background-wood-grain")
            VStack(spacing: 50){
                Image("logo")
                
                HStack(spacing: 50) {
                    Image("card2")
                   
                    Image("card3")
                }
                Image("button")
                
                HStack (spacing: 80){
                    VStack(spacing: 30){
                        Text("Player")
                            .font(Font.title2)
                            .fontWeight(.semibold)
                        Text("0")
                            .font(Font.largeTitle.bold())
                    }
                    
                    VStack(spacing: 30){
                        Text("CPU")
                            .font(Font.title2)
                            .fontWeight( .semibold)
                        Text("0")
                            .font(Font.largeTitle.bold())
                    }
                    
                }
                .foregroundColor(Color.white)
                
                
            }
            .padding()
        }
    }
}

#Preview {
    ContentView()
}
