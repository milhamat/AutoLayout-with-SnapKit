//
//  CostomTableViewCell.swift
//  NoStoryBoard
//
//  Created by Muhammad Ilham Ashiddiq Tresnawan on 13/10/20.
//

import UIKit
import SnapKit

class CostomTableViewCell: UITableViewCell {
    
    let foodImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(named: "sate")
        imageView.contentMode = .scaleAspectFit
        return imageView
    }()
    
    let foodNameLabel: UILabel = {
        let nameLabel = UILabel()
        nameLabel.text = "Sate Kendal"
        nameLabel.font = UIFont.systemFont(ofSize: 20, weight: .bold)
        return nameLabel
    }()

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        self.setupView()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupView(){
        self.backgroundColor = .white
        
        self.addSubview(foodImageView)
        self.addSubview(foodNameLabel)
        
        self.foodImageView.snp.makeConstraints { (make) in
            make.top.equalTo(self)
            make.right.equalTo(self).offset(-10)
            make.left.equalTo(self).offset(10)
            make.height.equalTo(80)
//            make.width.equalTo(50)
        }
        
        self.foodNameLabel.snp.makeConstraints { (make) in
            make.top.equalTo(self.foodImageView.snp.bottom)
            make.centerX.equalTo(self)
//            make.left.equalTo(self).offset(10)
//            make.right.equalTo(self).offset(-10)
            make.bottom.equalTo(self).offset(-5)
        }
        
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
