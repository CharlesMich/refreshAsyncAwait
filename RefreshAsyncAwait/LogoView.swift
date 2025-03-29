//
//  LogoView.swift
//  RefreshAsyncAwait
//
//  Created by Charles Michael on 3/29/25.
//

import SwiftUI

struct LogoView: View {
    let coin: Coin
    
    var body: some View {
        AsyncImage(url: URL(string: coin.logo)){ image in
            image.resizable()
                .aspectRatio(contentMode: .fit)
                .frame(maxWidth: 40, maxHeight: 40)
        } placeholder: {
            ProgressView()
        }
    }
}

#Preview {
    LogoView(coin: Coin(id: 1, coinName: "dsds", acronym: "dss", logo: "dsds"))
}
