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
        
    }


}

