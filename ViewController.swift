//
//  ViewController.swift
//  CollectionView-App
//
//  Created by Nika Kalandia on 7.02.2022.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var flagImage: UIImageView!
    var testImage : UIImage?
    @IBOutlet weak var countryLabel: UILabel!
    var testLabel : String?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        countryLabel.textColor = UIColor.white

        navBarAyarla(largeTitleColor: .white, backgoundColor: .darkGray, tintColor: .white, title: "", preferredLargeTitle: true)
        if testImage != nil {
            flagImage.image = testImage
        }
        
        if testLabel != nil {
            countryLabel.text = testLabel
        }
        
    }
    
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

