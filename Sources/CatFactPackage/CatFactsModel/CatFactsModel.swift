//
//  CatFactsModel.swift
//  (Φ ᆺ Φ)
//
//  Created by Tekla on 11/19/23.
//

import Foundation

import Foundation

public struct FactResults: Decodable {
    let data: [CatFacts]
}

public struct CatFacts: Decodable {
    let fact: String
    let length: Int
    
    enum CodingKeys: String, CodingKey{
        case fact = "fact"
        case length = "length"
    }
}
