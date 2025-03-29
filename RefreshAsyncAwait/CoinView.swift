//
//  CoinView.swift
//  RefreshAsyncAwait
//
//  Created by Charles Michael on 3/29/25.
//

import SwiftUI

struct CoinView: View {
    let coin: Coin
    var body: some View {
        HStack {
            Text("\(coin.acronym): \(coin.coinName)")
            Spacer()
            LogoView(coin: coin)
        }
    }
}

#Preview {
    CoinView(coin: Coin(id: 1, coinName: "dsdsad", acronym: "sdssdf", logo: "sdfsdds"))
}
