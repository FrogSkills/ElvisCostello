//
//  ContentView.swift
//  ElvisCostello
//
//  Created by Miguel on 5/14/25.
//

import SwiftUI

struct ContentView: View {
    @State private var movingImage = ""
    @State private var movingText = ""
    
    var body: some View {
        VStack {
            Text("What's So Funny 'Bout")
                .foregroundStyle(.purple)
                .fontWeight(.black)
                .font(.largeTitle)
            
            Spacer()
            
            Image(systemName: movingImage)
                .resizable()
                .scaledToFit()
                .frame(width: 300, height: 300)
            
            
            
            Text("\(movingText)")
                .fontWeight(.black)
                .foregroundStyle(.purple)
                .font(.largeTitle)
            
            Spacer()

            HStack {
                Button("Peace") {
                    movingImage = "peacesign"
                    movingText = "Peace"
                }
                
                Button("Love") {
                    movingImage = "heart"
                    movingText = "Love"
                }
                
                Button("Understanding") {
                    movingImage = "lightbulb"
                    movingText = "Understanding"
                }
            }
            .tint(.purple)
            .buttonStyle(.bordered)
//            .buttonStyle(.borderedProminent)
//            .foregroundStyle(.white)
            
            
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
