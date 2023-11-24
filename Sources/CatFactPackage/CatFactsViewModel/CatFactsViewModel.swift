//
//  CatFactsViewModel.swift
//  (Φ ᆺ Φ)
//
//  Created by Tekla on 11/19/23.
//

import Foundation

public protocol CatFactsViewModelDelegate: AnyObject {
    func factsFetched(_ facts: [CatFacts])
    func showError(_ error: Error)
}

final public class CatFactsViewModel {
    
    public weak var delegate: CatFactsViewModelDelegate?
    
    public var facts: [CatFacts]?
    
    public init() {}
    
    public func viewDidLoad() {
        fetchFacts()
    }
    
    private func fetchFacts() {
        NetworkManager.shared.fetchFacts { [weak self] result in
            switch result {
            case .success(let facts):
                self?.facts = facts
                self?.delegate?.factsFetched(facts)
            case .failure(_):
                break
            }
        }
    }}
