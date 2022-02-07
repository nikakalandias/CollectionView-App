//
//  CollectionViewController.swift
//  CollectionView-App
//
//  Created by Nika Kalandia on 7.02.2022.
//

import UIKit

private let reuseIdentifier = "Cell"

var flagArray = ["usa","au","gr","it","sw","sp","tr","br","gree"]


class CollectionViewController: UICollectionViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        navBarAyarla(largeTitleColor: .white, backgoundColor: .darkGray, tintColor: .white, title: "Countries", preferredLargeTitle: true)
    }
    
    override func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return flagArray.count
    }
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: reuseIdentifier, for: indexPath)
        
        if let customCell = cell as? CollectionViewCell {
            customCell.flag.image = UIImage(named: flagArray[indexPath.row])
            return customCell
        }
        return cell
    }
    
    override func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        print("tapped")
    }
    
    
    //============================================================================
    func navBarAyarla(largeTitleColor: UIColor, backgoundColor: UIColor, tintColor: UIColor, title: String, preferredLargeTitle: Bool) {
        
    if #available(iOS 13.0, *) { // iOS 13 ve sonrası için
    let navBarAppearance = UINavigationBarAppearance()
    navBarAppearance.configureWithOpaqueBackground()
    navBarAppearance.largeTitleTextAttributes = [.foregroundColor: largeTitleColor]
    navBarAppearance.titleTextAttributes = [.foregroundColor: largeTitleColor]
    navBarAppearance.backgroundColor = backgoundColor
     
    navigationController?.navigationBar.standardAppearance = navBarAppearance
    navigationController?.navigationBar.compactAppearance = navBarAppearance
    navigationController?.navigationBar.scrollEdgeAppearance = navBarAppearance
     
    navigationController?.navigationBar.prefersLargeTitles = preferredLargeTitle
    navigationController?.navigationBar.isTranslucent = false
    navigationController?.navigationBar.tintColor = tintColor
    navigationItem.title = title
     
    } else { // iOS 13 ve öncesi için
     
    navigationController?.navigationBar.barTintColor = backgoundColor
    navigationController?.navigationBar.tintColor = tintColor
    navigationController?.navigationBar.isTranslucent = false
    navigationItem.title = title
    }
    }
    
    
}
