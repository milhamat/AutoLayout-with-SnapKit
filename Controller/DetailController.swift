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
        
        self.detailView.detailButton.addTarget(self, action: #selector(goToTableView), for: .touchUpInside)
        self.detailView.changeButton.addTarget(self, action: #selector(changeUIView), for: .touchUpInside)

       
    }
    
    @objc private func changeUIView(){
        detailView.viewTwo.isHidden = true
    }
    
    @objc private func goToTableView(){
        self.navigationController?.pushViewController(TableController(), animated: true)
    }
}
