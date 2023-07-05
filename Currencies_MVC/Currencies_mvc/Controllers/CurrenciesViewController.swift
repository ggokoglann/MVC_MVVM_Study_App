//
//  ViewController.swift
//  Currencies_mvc
//
//  Created by Gökhan Gökoğlan on 3.07.2023.
//

import UIKit

class CurrenciesViewController: UIViewController, UICollectionViewDelegate {
    @IBOutlet weak var currenciesLabel: UILabel!
    @IBOutlet weak var collectionView: UICollectionView!
    
    var currencies: [Currency] = []
    let dataSource = CurrencyDataSource.shared
    
        override func viewDidLoad() {
            super.viewDidLoad()
            
            currenciesLabel.text = "Currencies"
            currenciesLabel.font = UIFont(name: "HelveticaNeue-Light", size: 40)
            currenciesLabel.textAlignment = .center
            
            collectionView.delegate = self
            collectionView.dataSource = self

        
            currencies = dataSource.getCurrencies()
            collectionView.reloadData()
        }
    }

    extension CurrenciesViewController: UICollectionViewDelegateFlowLayout {
        func collectionView(_ collectionView: UICollectionView, layout  collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath:  IndexPath) -> CGSize {
            let width = collectionView.bounds.width
            let height: CGFloat = 80
            return CGSize(width: width, height: height)
        }
    
        func collectionView(_ collectionView: UICollectionView, layout  collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int)   -> UIEdgeInsets {
            return UIEdgeInsets(top: 0, left: 10, bottom: 0, right: 10)
        }
    
        func collectionView(_ collectionView: UICollectionView, layout  collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt    section: Int) -> CGFloat {
            return 10
        }
    }

    extension CurrenciesViewController: UICollectionViewDataSource {
        func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
            return currencies.count
        }
        
        func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "CurrencyCell", for: indexPath) as! CurrencyCell
            let currency = currencies[indexPath.item]
            cell.configure(with: currency)
            return cell
        }
    }
