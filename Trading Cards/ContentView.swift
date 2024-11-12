//
//  ContentView.swift
//  Trading Cards
//
//  Created by 李泽宇 on 2024-11-11.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Image("TFT Image")
                .resizable()
                .scaledToFill()
                .ignoresSafeArea()
                .opacity(0.6)
            
            Color.yellow
                .padding(.horizontal, 270)
            VStack{
                Image("Briar")
                    .resizable()
                    .scaledToFit()
                    .clipShape(Circle())
                Spacer(minLength: 500)
            }
        }
    }
}

#Preview {
    ContentView()
}
