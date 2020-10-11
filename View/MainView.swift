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
    
    let foodName: UILabel = {
        let label = UILabel()
        label.text = "Sate Klatak"
        label.font = UIFont.systemFont(ofSize: 20, weight: .bold)
        return label
    }()
    
    let foodDescrp: UILabel = {
        let label = UILabel()
        label.text = "Sate Klatak sate niqmat tanpa kulit full daging harga saingan pokoknya enak dah"
        label.font = UIFont.systemFont(ofSize: 12, weight: .light)
        label.textAlignment = .center
        label.numberOfLines = 0
        return label
    }()
    
    let tombolPesan: UIButton = {
        let button = UIButton(type: UIButton.ButtonType.system)
        button.setTitle("Pesan", for: .normal)
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
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupView() {
        self.backgroundColor = .white
        
        self.addSubview(foodImage)
        self.addSubview(foodName)
        self.addSubview(tombolPesan)
        self.addSubview(foodDescrp)
        
        self.foodImage.snp.makeConstraints { (make) in
            make.centerX.equalTo(self.safeAreaLayoutGuide)
            make.top.equalTo(self.safeAreaLayoutGuide)
            make.height.equalTo(280)
            make.width.equalTo(280)
        }
        
        self.foodName.snp.makeConstraints { (make) in
            make.top.equalTo(self.foodImage.snp.bottom).offset(5)
            make.centerX.equalTo(self.safeAreaLayoutGuide)
        }
        
        self.foodDescrp.snp.makeConstraints { (make) in
            make.top.equalTo(self.foodName.snp.bottom).offset(8)
            make.left.equalTo(self.safeAreaLayoutGuide).offset(20)
            make.right.equalTo(self.safeAreaLayoutGuide).offset(-20)
        }
        
        self.tombolPesan.snp.makeConstraints { (make) in
            make.bottom.equalTo(self.safeAreaLayoutGuide).offset(-80)
            make.centerX.equalTo(self.safeAreaLayoutGuide)
            make.height.equalTo(50)
            make.width.equalTo(180)
        }
    }
}
