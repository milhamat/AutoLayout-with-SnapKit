//
//  TableViewController.swift
//  NoStoryBoard
//
//  Created by Muhammad Ilham Ashiddiq Tresnawan on 12/10/20.
//

import UIKit

class TableViewController: UITableViewController {

//    let listMenu = [ "Sate Klatak"," Sate Kendal"
//    ]
    private var foodTableView: FoodTableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.foodTableView = FoodTableView(frame: self.view.frame)
        self.view = self.foodTableView
    }

    // MARK: - Table view data source

//    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
//        return 2
////        return listMenu.count
//    }
    
//    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
//        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
//        cell.textLabel?.text = "Sate Klatak"
//        return cell
//    }

    
}
