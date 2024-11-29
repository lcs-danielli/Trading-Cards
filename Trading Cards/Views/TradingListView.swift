//
//  ContentView.swift
//  Trading Cards
//
//  Created by 李泽宇 on 2024-11-11.
//

import SwiftUI
 
struct TradingListView: View {
    var body: some View {
        NavigationStack {
            List(tradingCards) { currentCard in
                NavigationLink {
                    TradingDetailVIew(tradingCardToShow: currentCard)
                } label: {
                    TradingItemView(providedCard: currentCard)
                }
            }
            .navigationTitle("Teamfight Tactics")
        }
    }
}

#Preview {
    TradingListView()
}

