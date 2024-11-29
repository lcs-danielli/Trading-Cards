//
//  ContentView.swift
//  Trading Cards
//
//  Created by 李泽宇 on 2024-11-29.
//


import SwiftUI

struct TradingDetailVIew: View {
    
    let tradingCardToShow: TradingCard
    
    var body: some View {
        ScrollView {
            ZStack {
                Image("TFT Image")
                    .resizable()
                    .scaledToFill()
                    .ignoresSafeArea()
                    .opacity(0.4)
                    .overlay(Image("frame")
                
                
                
                Image("GC")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 274, height: 300)
                    .position(x:434, y: 153)
                
                VStack{
                    Text(tradingCardToShow.heroname)
                        .font(.custom("Copperplate", size: 40))
                    Image(tradingCardToShow.heroImage)
                        .resizable()
                        .scaledToFit()
                        .clipShape(Circle())
                    Text(tradingCardToShow.skillName)
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
                        Image(tradingCardToShow.skillImage)
                            .resizable()
                            .scaledToFit()
                            .frame(width:100)
                            .border(.gold)
                        Text(tradingCardToShow.skillDescription)
                            .frame(width:250)
                            .background(.ultraThinMaterial)
                            .foregroundStyle(.lightblue)
                            .font(.system(.body, design: .serif))
                            .border(.gold)
                    }.padding()
                    Text(tradingCardToShow.heroDescription)
                        .frame(width:360)
                    Image("Tft")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 100)
                        .border(.gold)
                    Spacer(minLength: 60)
                }
            }
        }
    }
}
#Preview {
    TradingDetailVIew(tradingCardToShow: briar)
}
