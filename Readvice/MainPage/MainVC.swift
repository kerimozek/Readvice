//
//  ViewController.swift
//  Readvice
//
//  Created by Mehmet Kerim ÖZEK on 3.06.2023.
//

import UIKit

class MainVC: UIViewController {

    
    @IBOutlet weak var view1: UIView!
    @IBOutlet weak var view2: UIView!
    @IBOutlet weak var view3: UIView!
    var views: [CustomView] = []
    var selectedIndex: Int? = nil
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupNavigationBar()
        views = [view1, view2, view3]
        
        for (index, _view) in views.enumerated() {
            self.view.addSubview(_view)
            _view.tag = index
            _view.backgroundColor = .red
            let tapGesture = UITapGestureRecognizer(target: self, action: #selector(viewTapped(_:)))
            _view.addGestureRecognizer(tapGesture)
        }
    }
    
    @objc func viewTapped(_ sender: UITapGestureRecognizer) {
        guard let tag = sender.view?.tag else { return }
        print("Tapped view with tag: \(tag)")
        self.selectedIndex = sender.view?.tag
    }
    
    private func setupNavigationBar() {
            let logo = UIImageView(image: UIImage(named: "readvice"))
            logo.contentMode = .scaleAspectFit
        //    logo.frame = CGRect(x: 0, y: 0, width: 1, height: 1)
            
            navigationItem.titleView = logo
        }
    
    class CustomView: UIView {
        func configure(with model: String) {
          //  self.imageView.image = model.image
        }
    }
    
    
    //search
    
    func filmSecilince() {
        let filmVerisi = "data"
        guard let selectedIndex else {
            // search view'ini kapat
            return
        }
        // data nı dictionary e kaydet
        // silme işlemi için delegeta kullan
        views[selectedIndex].configure(with: filmVerisi)
        self.selectedIndex = nil
        // search view'ini kapat,
        // yönetmenin filmlerini çek, movies'e at
        // film modeline view tag ekle
    }
    
    func searchKapat() {
        self.selectedIndex = nil
        // search view'ini kapat
    }

}

