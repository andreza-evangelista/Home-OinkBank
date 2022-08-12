//
//  NewHomeFooterCollectionReusableView.swift
//  CRUD MVVM
//
//  Created by user217584 on 20/07/22.
//

import UIKit

class NewHomeFooterCollectionReusableView: UICollectionReusableView {
    
    static let identifier = "NewHomeFooterCollectionReusableView"
    
    static let height: CGFloat = 180
    
    //MARK: - Labels
    
    lazy var insuranceLabel: UILabel = {
        let lb = UILabel()
        lb.translatesAutoresizingMaskIntoConstraints = false
        lb.numberOfLines = 1
        lb.text = "Seguros".localized(tableName: "HomeLocalizable")
        lb.font = .MyTheme.boldTitleText
        lb.textColor = .MyTheme.defaultTextColor
        lb.textAlignment = .left
        return lb
    }()
    
    lazy var insuranceSubLabel: UILabel = {
        let lb = UILabel()
        lb.translatesAutoresizingMaskIntoConstraints = false
        lb.numberOfLines = 2
        lb.text = "Não deixe".localized(tableName: "HomeLocalizable")
        lb.font = .MyTheme.defaultText
        lb.textColor = .MyTheme.grayTextColor
        lb.textAlignment = .justified
        return lb
    }()
    
    //MARK: - Button
    
    private lazy var insuranceButton: UIButton = {
        let button = UIButton(type: .system)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("Seguro de vida".localized(tableName: "HomeLocalizable"), for: .normal)
        button.titleLabel?.font = UIFont.MyTheme.defaultText
        button.setImage(UIImage.init(named: "ic_seguro"), for: .normal)
        button.tintColor = .MyTheme.blueColor
        button.setTitleColor(UIColor.MyTheme.defaultTextColor, for: .normal)
        button.backgroundColor = UIColor.MyTheme.backgroundColor
        button.layer.cornerRadius = 5
        return button
    }()
    
    //MARK: - INIT
    override init(frame: CGRect){
        super.init(frame: frame)
        addSubview(insuranceLabel)
        addSubview(insuranceSubLabel)
        addSubview(insuranceButton)
        configConstraints()
        self.backgroundColor = .MyTheme.grayColor
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    //MARK: - Func addSubviews
    
    override func layoutSubviews() {
        super.layoutSubviews()
    }
    
    //MARK: - Constraints
    
    private func configConstraints() {
        NSLayoutConstraint.activate([
            self.insuranceLabel.topAnchor.constraint(equalTo: self.topAnchor),
            self.insuranceLabel.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 16),
            
            self.insuranceSubLabel.topAnchor.constraint(equalTo: self.insuranceLabel.bottomAnchor, constant: 16),
            self.insuranceSubLabel.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 16),
            self.insuranceSubLabel.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -16),
            
            self.insuranceButton.topAnchor.constraint(equalTo: self.insuranceSubLabel.bottomAnchor, constant: 16),
            self.insuranceButton.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 16),
            self.insuranceButton.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -16),
            self.insuranceButton.heightAnchor.constraint(equalToConstant: 40)
        ])
    }
    
}
