//
//  CryptoViewModel.swift
//  CryptoCrazy
//
//  Created by Bilal Yalcin on 12.05.2022.
//


import Foundation

struct CryptoListViewModel {
    let cryptoCurrencyList : [CrytoCurrency]
}

extension CryptoListViewModel {
    
    func numberOfRowsInSection() -> Int {
        return self.cryptoCurrencyList.count
    }
    
    func cryptoAtIndex( index : Int ) -> CryptoViewModel {
        let crypto = self.cryptoCurrencyList[index]
        return CryptoViewModel(cryptoCurrency: crypto)
    }
}

struct CryptoViewModel {
    let cryptoCurrency : CrytoCurrency
}

extension CryptoViewModel {
    
    var name : String {
        return self.cryptoCurrency.currency
    }
    
    var price : String {
        return self.cryptoCurrency.price
    }
}


extension String {
    func myName() {
        print("Bilal Yalçın")
    }
}
