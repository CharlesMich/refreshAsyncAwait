//
//  Model.swift
//  RefreshAsyncAwait
//
//  Created by Charles Michael on 3/29/25.
//

import Foundation

struct Coin: Decodable, Identifiable {
    let id: Int
    let coinName: String
    let acronym: String
    let logo: String
}

