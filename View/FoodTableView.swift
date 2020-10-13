//
//  TableView.swift
//  NoStoryBoard
//
//  Created by Muhammad Ilham Ashiddiq Tresnawan on 12/10/20.
//

import UIKit
import SnapKit

class FoodTableView: UIView {
    
//    let tableView = UITableView()
    let tableView: UITableView = {
        let foodTable = UITableView()
        foodTable.register(CostomTableViewCell.self, forCellReuseIdentifier: "cell")
        return foodTable
    }()
    
    let border: UIView = {
        let view = UIView()
        view.backgroundColor = .lightGray
        return view
    }()
    
    let tombol: UIButton = {
        let button = UIButton()
        button.setTitle("test", for: .normal )
        button.backgroundColor = .gray
        button.tintColor = .white
        button.layer.cornerRadius = 10
        return button
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        self.setupView()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) har not been implemented")
    }
    
    private func setupView(){
        self.backgroundColor = .white
        
        self.addSubview(tableView)
        self.addSubview(border)
        self.border.addSubview(tombol)
        
        self.tableView.snp.makeConstraints { (make) in
            make.top.equalTo(self.safeAreaLayoutGuide)
            make.left.equalTo(self.safeAreaLayoutGuide)
            make.right.equalTo(self.safeAreaLayoutGuide)
            make.bottom.equalTo(self.safeAreaLayoutGuide).offset(-50)
        }
        
        self.border.snp.makeConstraints { (make) in
            make.bottom.equalTo(self.safeAreaLayoutGuide)
            make.right.equalTo(self.safeAreaLayoutGuide)
            make.left.equalTo(self.safeAreaLayoutGuide)
            make.height.equalTo(50)
            make.width.equalTo(self.safeAreaLayoutGuide)
        }
        
        self.tombol.snp.makeConstraints { (make) in
            make.centerY.equalTo(self.border)
            make.centerX.equalTo(self.border)
            make.width.equalTo(100)
        }
    }
}
