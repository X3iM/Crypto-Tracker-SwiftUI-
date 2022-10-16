//
//  CoinDataService.swift
//  Crypto Tracker
//
//  Created by Artem Hrynenko on 13.10.2022.
//

import Foundation
import Combine

class CoinDataService {
    
    private var urlString = "https://api.coingecko.com/api/v3/coins/markets?vs_currency=usd&order=market_cap_desc&page=1&sparkline=true&price_change_percentage=24h"
    
    @Published var allCoins: [CoinModel] = []
    var coinSubscription: AnyCancellable?
    
    init() {
        getCoins()
    }
    
    private func getCoins() {
        guard let url = URL(string: urlString) else {
            return
        }
        
        coinSubscription = NetworkingManager.download(url: url)
            .decode(type: [CoinModel].self, decoder: JSONDecoder())
            .sink(receiveCompletion: NetworkingManager.handleCompletion, receiveValue: { [weak self] (coins) in
                self?.allCoins = coins
                self?.coinSubscription?.cancel()
            })
    }
    
}
