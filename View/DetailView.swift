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
        
        self.detailButton.snp.makeConstraints { (make) in
            make.centerX.equalTo(self.safeAreaLayoutGuide)
            make.centerY.equalTo(self.safeAreaLayoutGuide)
            make.height.equalTo(50)
            make.width.equalTo(120)
        }
    }
}
