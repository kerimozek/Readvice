//
//  ViewController.swift
//  Readvice
//
//  Created by Mehmet Kerim ÖZEK on 3.06.2023.
//

import UIKit

class MainVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        setupNavigationBar()
    }
    
    private func setupNavigationBar() {
            let logo = UIImageView(image: UIImage(named: "readvice"))
            logo.contentMode = .scaleAspectFit
        //    logo.frame = CGRect(x: 0, y: 0, width: 1, height: 1)
            
            navigationItem.titleView = logo
        }

}

