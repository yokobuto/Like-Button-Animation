//
//  ContentView.swift
//  Like Button Animation
//
//  Created by Jörg Klausewitz on 11.05.25.
//

import SwiftUI

struct ContentView: View {
    @State private var isLiked = false
    
    var body: some View {
        VStack {

            Button(
                action: {
                    withAnimation{
                        isLiked.toggle()
                    }
                }
            ){
                Image(systemName: isLiked ? "heart.fill" : "heart").foregroundColor(isLiked ? .red : .gray)
            }.scaleEffect(isLiked ? 1.3 : 1.0)
            
            
            
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
