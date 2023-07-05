//
//  ViewController.swift
//  Currencies_mvc
//
//  Created by Gökhan Gökoğlan on 3.07.2023.
//

import UIKit

class CurrenciesView: UIViewController, UICollectionViewDelegate {
    @IBOutlet weak var currenciesLabel: UILabel!
    @IBOutlet weak var collectionView: UICollectionView!
    
    var viewModel: CurrenciesViewModel!
            
        override func viewDidLoad() {
            super.viewDidLoad()
            
            viewModel = CurrenciesViewModel()
            
            currenciesLabel.text = "Currencies"
            currenciesLabel.font = UIFont(name: "HelveticaNeue-Light", size: 40)
            currenciesLabel.textAlignment = .center
            
            collectionView.delegate = self
            collectionView.dataSource = self
        }
    }

    extension CurrenciesView: UICollectionViewDelegateFlowLayout {
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

    extension CurrenciesView: UICollectionViewDataSource {
        func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
            return viewModel.currenciesCount
        }
        
        func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "CurrencyCell", for: indexPath) as! CurrencyCell
            viewModel.configureCell(cell, at: indexPath)
            return cell
        }
    }
