//
//  CurrenciesViewModel.swift
//  Currencies_mvc
//
//  Created by Gökhan Gökoğlan on 5.07.2023.
//

import Foundation

class CurrenciesViewModel {
    private let dataSource = CurrencyDataSource.shared
    
    var currencies: [Currency] {
        return dataSource.getCurrencies()
    }
    
    var currenciesCount: Int {
        return currencies.count
    }
    
    func configureCell(_ cell: CurrencyCell, at indexPath: IndexPath) {
        let currency = currencies[indexPath.item]
        cell.configure(with: currency)
    }
}
