//
//  MarketDataModel.swift
//  Crypto Tracker
//
//  Created by Artem Hrynenko on 25.10.2022.
//

import Foundation

/*
 https://api.coingecko.com/api/v3/global
 */

struct GlobalData: Codable {
    let data: MarketDataModel?
}

// MARK: - DataClass
struct MarketDataModel: Codable {
    let activeCryptocurrencies: Int?
    let upcomingIcos: Int?
    let ongoingIcos: Int?
    let endedIcos: Int?
    let markets: Int?
    let totalMarketCap: [String: Double]?
    let totalVolume: [String: Double]?
    let marketCapPercentage: [String: Double]?
    let marketCapChangePercentage24HUsd: Double?
    let updatedAt: Int?

    enum CodingKeys: String, CodingKey {
        case activeCryptocurrencies = "active_cryptocurrencies"
        case upcomingIcos = "upcoming_icos"
        case ongoingIcos = "ongoing_icos"
        case endedIcos = "ended_icos"
        case markets
        case totalMarketCap = "total_market_cap"
        case totalVolume = "total_volume"
        case marketCapPercentage = "market_cap_percentage"
        case marketCapChangePercentage24HUsd = "market_cap_change_percentage_24h_usd"
        case updatedAt = "updated_at"
    }
    
    var marketCap: String {
        if let item = totalMarketCap?.first(where: { $0.key == "usd" }) {
            return "$" + item.value.formattedWithAbbreviations()
        }
        
        return ""
    }
    
    var volume: String {
        if let item = totalVolume?.first(where: { $0.key == "usd" }) {
            return "$" + item.value.formattedWithAbbreviations()
        }
        
        return ""
    }
    
    var btcDominance: String {
        if let item = marketCapPercentage?.first(where: { $0.key == "btc" }) {
            return item.value.asPercentString()
        }
        
        return ""
    }
    
}
