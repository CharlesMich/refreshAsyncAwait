//
//  ContentView.swift
//  RefreshAsyncAwait
//
//  Created by Charles Michael on 3/29/25.
//

import SwiftUI

struct ContentView: View {
    private let service = Service()
    @State private var coins: [Coin] = []
    
    var body: some View {
        List(coins) {
            CoinView(coin: $0)
        }
        .listStyle(.plain)
        .refreshable {
            coins = await service.fetchCoins()
        }
        .task {
            coins = await service.fetchCoins()
        }
    }
}

#Preview {
    ContentView()
}
