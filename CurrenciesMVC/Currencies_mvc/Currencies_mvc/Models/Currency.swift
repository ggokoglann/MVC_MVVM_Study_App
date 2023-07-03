//
//  Currency.swift
//  Currencies_mvc
//
//  Created by Gökhan Gökoğlan on 3.07.2023.
//

import Foundation
import UIKit

struct Currency {
    var name = String()
    var price = Float()
    var image = UIImage()
}

class CurrencyDataSource {
    static let shared = CurrencyDataSource()
    
    private init() { }
    
    func getCurrencies() -> [Currency] {
        let usd = Currency(name: "Dollar", price: 26.1, image: UIImage(named: "USD.png")!)
        let eur = Currency(name: "Euro", price: 28.4, image: UIImage(named: "EUR.png")!)
        let gbp = Currency(name: "Pound", price: 33.0, image: UIImage(named: "GBP.png")!)
        let btc = Currency(name: "Bitcoin", price: 798.821, image: UIImage(named: "BTC.png")!)
        let eth = Currency(name: "Ethereum", price: 51.232, image: UIImage(named: "ETH.png")!)
        let gld = Currency(name: "Gold", price: 1602.0, image: UIImage(named: "GOLD.png")!)
        
        return [usd, eur, gbp, btc, eth, gld]
    }
}
