//
//  ContentView.swift
//  learningSwiftUI
//
//  Created by Nikhil Nambiar Chengat on 2026-02-11.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Color(.blue)
                .ignoresSafeArea()
            VStack (alignment: .leading) {
               
                Image("kitty")
                    .resizable()
                    .scaledToFit()
                    .clipShape(RoundedRectangle(cornerRadius: 16))
                    
                
                HStack {
                    Text("Kiki's Kitties!")
                        .font(Font.title)
                        .fontWeight(.bold)
                    Spacer()
                    VStack{
                        Text("4 cuties")
                        HStack {
                            Image(systemName: "cat.fill")
                            Image(systemName: "cat.fill")
                            Image(systemName: "cat.fill")
                            Image(systemName: "cat.fill").foregroundStyle(.black)
                        }
                    }.foregroundStyle(.yellow)
                        .font(Font.headline)
                    
                    
                }
                Text("These kitties are so adorable!")
                
                
                HStack {
                    Spacer()
                    Image(systemName: "heart.fill")
                    Image(systemName: "pawprint.fill")
                    
                }.foregroundStyle(Color(.lightGray))
                    .font(Font.caption)
                
            }.padding()
                .background(){
                    Rectangle()
                        .foregroundStyle(.white)
                    
                }.clipShape(RoundedRectangle(cornerRadius: 16))
                .padding(20)
            
            
        }
    }
}

#Preview {
    ContentView()
}
