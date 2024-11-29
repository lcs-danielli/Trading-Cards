

import SwiftUI
 
struct TradingItemView: View {
    
    let providedCard: TradingCard
    
    var body: some View {
        HStack {
            Image(providedCard.heroImage)
                .resizable()
                .scaledToFill()
                .frame(width: 50, height: 50, alignment: .center)
                .clipped()
            VStack(alignment: .leading) {
                Text(providedCard.heroname)
                    .font(.largeTitle)
                Text(providedCard.heroDescription)
            }
            Spacer()
        }
    }
}
 
#Preview {
    TradingItemView(providedCard: briar)
        .padding()
}
