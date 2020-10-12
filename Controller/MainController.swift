//
//  ViewController.swift
//  NoStoryBoard
//
//  Created by Muhammad Ilham Ashiddiq Tresnawan on 11/10/20.
//

import UIKit
import SnapKit

class MainController: UIViewController {
    
    private var mainView: MainView!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.mainView = MainView(frame: self.view.frame)
        self.view = self.mainView
        
        self.title = "Menu"
        
        self.navigationController?.navigationBar.backgroundColor = .darkGray
        self.navigationController?.navigationBar.tintColor = .black
        self.navigationController?.navigationBar.titleTextAttributes = [NSAttributedString.Key.foregroundColor: UIColor.black]
        
        self.mainView.tombolPesan.addTarget(self, action: #selector(goToDetail), for: .touchUpInside)
    }
    
    @objc private func goToDetail(){
        self.navigationController?.pushViewController(DetailController(), animated: true)
    }


}

