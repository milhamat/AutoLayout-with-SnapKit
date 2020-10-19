//
//  DetailView.swift
//  NoStoryBoard
//
//  Created by Muhammad Ilham Ashiddiq Tresnawan on 12/10/20.
//

import UIKit
import SnapKit

class DetailView: UIView {
    
    let detailButton: UIButton = {
        let button = UIButton(type: UIButton.ButtonType.system)
        button.setTitle("Detail", for: .normal)
        button.backgroundColor = .white
        button.tintColor = .black
        return button
    }()
    
    let changeButton: UIButton = {
        let button = UIButton(type: UIButton.ButtonType.system)
        button.setTitle("Change", for: .normal)
        button.backgroundColor = .lightGray
        button.tintColor = .white
        button.layer.cornerRadius = 10
        return button
    }()
    
    let titleLabel: UILabel = {
        let label = UILabel()
        label.text = "Prototype One"
        label.font = UIFont.systemFont(ofSize: 20, weight: .bold)
        return label
    }()
    
    let viewOne: UIView = {
        let view = UIView()
        view.backgroundColor = .lightGray
        return view
    }()
    
    let viewTwo: UIView = {
        let view = UIView()
        view.backgroundColor = .black
        return view
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        self.setupView()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupView() {
        self.backgroundColor = .white
        
        self.addSubview(detailButton)
        self.addSubview(viewOne)
        self.addSubview(viewTwo)
        self.addSubview(titleLabel)
        self.addSubview(changeButton)
        
        self.detailButton.snp.makeConstraints { (make) in
            make.centerX.equalTo(self.safeAreaLayoutGuide)
            make.centerY.equalTo(self.safeAreaLayoutGuide)
            make.height.equalTo(50)
            make.width.equalTo(120)
        }
        
        self.titleLabel.snp.makeConstraints { (make) in
            make.top.equalTo(self.safeAreaLayoutGuide).offset(5)
            make.left.equalTo(self.safeAreaLayoutGuide).offset(10)
        }
        
        self.viewOne.snp.makeConstraints { (make) in
            make.top.equalTo(self.safeAreaLayoutGuide).offset(80)
            make.centerX.equalTo(self.safeAreaLayoutGuide)
            make.height.equalTo(50)
            make.width.equalTo(50)
        }
        
        self.viewTwo.snp.makeConstraints { (make) in
            make.top.equalTo(self.safeAreaLayoutGuide).offset(80)
            make.centerX.equalTo(self.safeAreaLayoutGuide)
            make.height.equalTo(50)
            make.width.equalTo(50)
        }
        
        self.changeButton.snp.makeConstraints { (make) in
            make.top.equalTo(self.detailButton.snp.bottom).offset(50)
            make.centerX.equalTo(self.safeAreaLayoutGuide)
            make.height.equalTo(40)
            make.width.equalTo(70)
        }
    }
}
