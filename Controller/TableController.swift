//
//  TableViewController.swift
//  NoStoryBoard
//
//  Created by Muhammad Ilham Ashiddiq Tresnawan on 12/10/20.
//

import UIKit

class TableController: UIViewController {
    
    private var foodTableView: FoodTableView!
    
    let list = ["Sate Klatak", "Sate Kendal","Sate Madiun"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.foodTableView = FoodTableView(frame: self.view.frame)
        self.view = self.foodTableView
        
        self.foodTableView.tableView.delegate = self
        self.foodTableView.tableView.dataSource = self
        
        self.foodTableView.tableView.separatorStyle = .none
    }

}

extension TableController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return list.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! CostumTableViewCell
        
        cell.foodNameLabel.text = list[indexPath.row]
        
        return cell
        
    }
}
