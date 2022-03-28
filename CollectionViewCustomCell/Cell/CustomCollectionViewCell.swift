//
//  CustomCollectionViewCell.swift
//  CollectionViewCustomCell
//
//  Created by Никита Коголенок on 28.03.22.
//

import UIKit

class CustomCollectionViewCell: UICollectionViewCell {
    
    // MARK: - Variable
    static let identifier = "CustomCollectionViewCell"
    
    // MARK: - GUI Variable
    private let myImageView: UIImageView = {
        let image = UIImageView()
        image.image = UIImage(systemName: "house")
        image.clipsToBounds = true
        return image
    }()
    
    private let myLabel: UILabel = {
        let label = UILabel()
        label.text = "Custom"
        label.textAlignment = .center
        return label
    }()
    
    // MARK: - Life Cycle
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        contentView.backgroundColor = .systemRed
        contentView.addSubview(myImageView)
        contentView.addSubview(myLabel)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        
        createUI()
    }
    
    override func prepareForReuse() {
        super.prepareForReuse()
        myLabel.text = nil
    }
    
    // MARK: - Methods
    func createUI() {
        myLabel.frame = CGRect(x: 5,
                               y: contentView.frame.size.height-50,
                               width: contentView.frame.size.width-10,
                               height: 50)
        
        myImageView.frame = CGRect(x: 5,
                                   y: 0,
                                   width: contentView.frame.size.width-10,
                                   height: contentView.frame.size.height-50)
    }
    
    public func configure(label: String) {
        myLabel.text = label
    }
}
