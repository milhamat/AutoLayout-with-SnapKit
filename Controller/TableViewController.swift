//
//  TableViewController.swift
//  NoStoryBoard
//
//  Created by Muhammad Ilham Ashiddiq Tresnawan on 12/10/20.
//

import UIKit

class TableViewController: UIViewController {
    
    

    private var foodTableView: FoodTableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.foodTableView = FoodTableView(frame: self.view.frame)
        self.view = self.foodTableView
        
        self.foodTableView.tableView.delegate = self
        self.foodTableView.tableView.dataSource = self
    }

}

extension TableViewController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 2
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        return cell
        
    }
}
