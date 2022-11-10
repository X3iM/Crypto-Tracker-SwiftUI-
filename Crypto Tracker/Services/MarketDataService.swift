//
//  MarketDataService.swift
//  Crypto Tracker
//
//  Created by Artem Hrynenko on 25.10.2022.
//

import Foundation
import Combine

class MarketDataService {
    
    private var urlString = "https://api.coingecko.com/api/v3/global"
    
    @Published var marketData: MarketDataModel? = nil
    var marketDataSubscription: AnyCancellable?
    
    init() {
        getData()
    }
    
    func getData() {
        guard let url = URL(string: urlString) else {
            return
        }
        
        marketDataSubscription = NetworkingManager.download(url: url)
            .decode(type: GlobalData.self, decoder: JSONDecoder())
            .sink(receiveCompletion: NetworkingManager.handleCompletion, receiveValue: { [weak self] (data) in
                self?.marketData = data.data
                self?.marketDataSubscription?.cancel()
            })
    }
    
}
