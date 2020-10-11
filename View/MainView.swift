//
//  Main.swift
//  NoStoryBoard
//
//  Created by Muhammad Ilham Ashiddiq Tresnawan on 11/10/20.
//

import UIKit
import SnapKit

class MainView: UIView {
    
    let foodImage: UIImageView = {
        let image = UIImageView()
        image.image = UIImage(named: "sate")
        image.contentMode = .scaleAspectFit
        
        return image
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
        
        self.addSubview(foodImage)
        
        self.foodImage.snp.makeConstraints { (make) in
            make.centerX.equalTo(self.safeAreaLayoutGuide)
            make.top.equalTo(self.safeAreaLayoutGuide).offset(20)
            make.height.equalTo(280)
            make.width.equalTo(280)
        }
    }
}
