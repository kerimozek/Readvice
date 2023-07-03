//
//  deneme.swift
//  Readvice
//
//  Created by Mehmet Kerim ÖZEK on 26.06.2023.
//

import UIKit

class Deneme: UIViewController {
   
    var views: [CustomView] = []
//    var movies = []
    var selectedIndex: Int? = nil
    
    override func viewDidLoad() {
        super.viewDidLoad()
     //   views = [view1, view2, view3]
        
        for (index, _view) in views.enumerated() {
            self.view.addSubview(_view)
            _view.tag = index
            _view.backgroundColor = .red
            let tapGesture = UITapGestureRecognizer(target: self, action: #selector(viewTapped(_:)))
            _view.addGestureRecognizer(tapGesture)
        }
//        movies.append(Any)
//        movies.append(Any)
//        movies.append(Any)
//
//        let filteredMovies = movies.filter {
//
//        }
    }
    
    @objc func viewTapped(_ sender: UITapGestureRecognizer) {
        guard let tag = sender.view?.tag else { return }
        print("Tapped view with tag: \(tag)")
        self.selectedIndex = sender.view?.tag
    }
    
    //view içi
    
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
