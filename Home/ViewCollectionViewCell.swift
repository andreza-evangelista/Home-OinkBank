//
//  ViewCollectionViewCell.swift
//  CRUD MVVM
//
//  Created by user217584 on 08/07/22.
//

import UIKit

class ViewCollectionViewCell: UICollectionViewCell {
    static let identifier = "ViewCollectionViewCell"
    
    //MARK: - Labels
    private let titleLabel: UILabel = {
        let lb = UILabel()
        lb.translatesAutoresizingMaskIntoConstraints = false
        lb.numberOfLines = 2
        lb.text = "Imprevisto".localized(tableName: "HomeLocalizable")
        lb.font = .MyTheme.defaultBoldText
        lb.textColor = .MyTheme.blueColor
        lb.textAlignment = .center
        return lb
    }()
    
    private let subTitleLabel: UILabel = {
        let lb = UILabel()
        lb.translatesAutoresizingMaskIntoConstraints = false
        lb.numberOfLines = 2
        lb.text = "Faça como".localized(tableName: "HomeLocalizable")
        lb.font = .MyTheme.defaultText
        lb.textColor = .MyTheme.blueColor
        lb.textAlignment = .center
        return lb
    }()
    
    //MARK: - Image
    
    lazy var loanPigImage: UIImageView = {
        let image = UIImageView()
        image.translatesAutoresizingMaskIntoConstraints = false
        image.image = UIImage(named: "loanPig")
        image.contentMode = .scaleToFill
        return image
    }()
    
    //MARK: - Button
    
    lazy var loanButton:UIButton = {
        let button = UIButton(type: .system)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("Solicitar".localized(tableName: "HomeLocalizable"), for: .normal)
        button.titleLabel?.font = UIFont.MyTheme.defaultText
        button.setTitleColor(UIColor.MyTheme.blackColor, for: .normal)
        button.backgroundColor = UIColor.MyTheme.greenColor
        button.layer.cornerRadius = 5
        return button
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        contentView.layer.cornerRadius = 10
        contentView.backgroundColor = .MyTheme.grayColor
        contentView.addSubview(loanPigImage)
        contentView.addSubview(titleLabel)
        contentView.addSubview(subTitleLabel)
        contentView.addSubview(loanButton)
        configConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError()
    }
    
    func configure(with viewModel: ViewCollectionViewCellViewModel) {
        contentView.backgroundColor = viewModel.backgroundColor
    }
    
    //MARK: - Func layoutSubviews
    
    override func layoutSubviews() {
        super.layoutSubviews()
        titleLabel.frame = contentView.bounds
        loanButton.frame = contentView.bounds
        subTitleLabel.frame = contentView.bounds
        loanPigImage.frame = contentView.bounds
    }
    
    //MARK: - Constraints
    
    private func configConstraints() {
        NSLayoutConstraint.activate([
            self.loanPigImage.topAnchor.constraint(equalTo: self.topAnchor, constant: 30),
            self.loanPigImage.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -16),
            self.loanPigImage.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: -16),
            self.loanPigImage.leadingAnchor.constraint(equalTo: self.titleLabel.trailingAnchor, constant: 16),
            
            self.titleLabel.topAnchor.constraint(equalTo: self.topAnchor, constant: 16),
            self.titleLabel.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 16),
            self.titleLabel.widthAnchor.constraint(equalToConstant: 175),

            self.subTitleLabel.topAnchor.constraint(equalTo: self.titleLabel.bottomAnchor, constant: 16),
            self.subTitleLabel.centerXAnchor.constraint(equalTo: self.titleLabel.centerXAnchor),
            
            self.loanButton.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: -16),
            self.loanButton.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 16),
            self.loanButton.widthAnchor.constraint(equalToConstant: 175),
        ])
    }
}
