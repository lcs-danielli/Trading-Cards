//
//  ContentView.swift
//  Trading Cards
//
//  Created by 李泽宇 on 2024-11-29.
//


import SwiftUI

struct TradingDetailView: View {
    let tradingCardToShow: TradingCard
    
    var body: some View {
        NavigationStack {
            ZStack {
                // Background image
                Image("TFT Image")
                    .resizable()
                    .scaledToFill()
                    .ignoresSafeArea()
                    .opacity(0.5)
                    .overlay(Diamond().scaleEffect(x:0.04, y:0.05).position(x: 300, y: 150).foregroundColor(.gold))
                    .overlay(Diamond().scaleEffect(x:0.04, y:0.05).position(x: 580, y: 150).foregroundColor(.gold))
                    .overlay(Rectangle().scaleEffect(x: 0.5, y: 0.1).foregroundColor(.brown).position(x: 434, y:300))
                
                // Overlay frame image
                Image("frame")
                    .resizable()
                    .scaledToFit()
                    .scaleEffect(x: 0.89, y: 1.23)
                    .padding()
                    .overlay(Diamond().scaleEffect(x:0.04, y:0.05).foregroundColor(.gold).position(x: 400, y: 760))
                
                Rectangle()
                    .stroke(Color.gold, lineWidth: 10)
                    .scaleEffect(x: 0.4, y: 0.96)
                    .opacity(0.3)
                
                //circle frame
                ZStack {
                    Image("GC")
                        .resizable()
                        .scaledToFit()
                        .scaleEffect(x:0.3, y:0.3)
                        .position(x:434, y:153)
                    Image(tradingCardToShow.heroImage)
                        .resizable()
                        .scaledToFit()
                        .clipShape(Circle())
                        .frame(width: 900, height: 150)
                        .position(x: 439, y: 151)
                    Trapezoid()
                        .stroke(Color.gold, lineWidth: 5)
                        .fill(Color.blue)
                        .frame(width: 100, height: 30)
                        .position(x: 439, y: 80)
                    
                    Image(systemName: "circle.inset.filled")
                        .foregroundStyle(.gold)
                        .position(x: 450, y: 80)
                    Text("5")
                            .font(.custom("Copperplate", size: 24))
                            .foregroundColor(.gold)
                            .position(x: 430, y: 80)
                                   
                }
                Text(tradingCardToShow.heroname)
                    .font(.custom("Copperplate", size: 50))
                    .position(x:434, y: 30)
                Text(tradingCardToShow.origin)
                    .font(.custom("Copperplate", size: 20))
                    .position(x:434, y: 300)
                
                VStack(alignment: .leading) {
                    HStack{
                        Text(tradingCardToShow.skillName)
                            .position(x:380, y: 400)
                            .font(.custom("Copperplate", size: 30))
                    }
                    Text(tradingCardToShow.skillDescription)
                        .font(.custom("Copperplate", size: 15))
                        .position(x:420, y: 100)
                        .frame(width:300, alignment: .leading)
                        .lineLimit(nil)
                }
                Text(tradingCardToShow.heroDescription)
                    .font(.custom("Copperplate", size: 10))
                    .position(x:140, y: 670)
                    .frame(width:300, alignment: .leading)
                    .lineLimit(nil)
            }
        }
    }
}

              

#Preview {
    TradingDetailView(tradingCardToShow: briar)
}
