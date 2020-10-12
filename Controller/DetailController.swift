//
//  DetailController.swift
//  NoStoryBoard
//
//  Created by Muhammad Ilham Ashiddiq Tresnawan on 12/10/20.
//

import UIKit

class DetailController: UIViewController {
    
    private var detailView: DetailView!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.detailView = DetailView(frame: self.view.frame)
        self.view = self.detailView
        
        self.title = "Detail Order"
        
        

       
    }
    

    

}
