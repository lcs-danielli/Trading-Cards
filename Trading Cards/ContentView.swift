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
                .opacity(0.4)
            
            Image("frame")
                .resizable()
                .scaledToFit()
                .ignoresSafeArea()
                .frame(width: 670, height: 700)
            
            VStack{
                Text("Briar")
                    .font(.largeTitle)

                    .fontWeight(.black)
                Image("Briar true")
                    .resizable()
                    .scaledToFit()
                    .clipShape(Circle())
                Text("Certain Death")
                    .font(.title)
                    .foregroundStyle(.white)
                    .font(.system(.body, design: .serif))
                    .bold()

                Text("Active")
                    .font(.subheadline)
                    .foregroundStyle(.lightblue)
                    .font(.system(.body, design: .serif))
                    .bold()

                HStack{
                    Image("Skill")
                        .resizable()
                        .scaledToFit()
                        .frame(width:100)
                    Text("Dealing physical damage to enemies. Then enter a frenzy, gaining Attack Speed, 15% Omnivamp, and causing attacks to deal bonus physical damage to the target and adjacent enemies.")
                        .frame(width:250)
                        .background(.ultraThinMaterial)
                        .foregroundStyle(.lightblue)
                        .font(.system(.body, design: .serif))
                }.padding()
                Text("A failed experiment by the Black Rose, Briar's uncontrollable bloodlust required a special pillory to focus her frenzied mind. After years of confinement, this living weapon broke free from her restraints and unleashed herself into the world. Now she's controlled by no one—following only her hunger.")
                    .frame(width:360)
                Image("Tft")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 100)
                Spacer(minLength: 60)
            }
        }
    }
}

#Preview {
    ContentView()
}
