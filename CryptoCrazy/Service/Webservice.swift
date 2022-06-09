//
//  Webservice.swift
//  CryptoCrazy
//
//  Created by Bilal Yalcin on 12.05.2022.
//

import Foundation



class Webservice {

    func dowloadCurrencies(url: URL, completion: @escaping([CrytoCurrency]?) -> ())  {
        
        URLSession.shared.dataTask(with: url) { (data, response, error) in
        
            if let error = error {
                print(error.localizedDescription)
                completion(nil)
            }
            else if let data = data {
                let cryptoList = try? JSONDecoder().decode([CrytoCurrency].self, from: data)
                print(cryptoList!)
                
                if let cryptoList = cryptoList {
                    completion(cryptoList)
                }
            }
            
        }.resume()
        
        
    }
    

    
}
