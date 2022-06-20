//
//  FavoritesListVC.swift
//  GHFollowers
//
//  Created by admin on 6/6/22.
//

import UIKit

class FavoritesListVC: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationController?.navigationBar.prefersLargeTitles = true
        
        PersistenceManager.retrieveFavorites { [weak self] result in
            switch result {
            case .success(let favorites):
                break
            case .failure(let error):
                break
            }
        }
    }
}
