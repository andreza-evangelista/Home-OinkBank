//
//  NewHomeHeaderCollectionReusableView.swift
//  CRUD MVVM
//
//  Created by user217584 on 20/07/22.
//

import UIKit

class NewHomeHeaderCollectionReusableView: UICollectionReusableView {
    
    static let identifier = "NewHomeHeaderCollectionReusableView"
    
    static let height: CGFloat = 380
    
    //MARK: - Labels
    
    lazy var titleLabel: UILabel = {
        let lb = UILabel()
        lb.translatesAutoresizingMaskIntoConstraints = false
        lb.numberOfLines = 1
        lb.text = "Olá".localized(tableName: "HomeLocalizable")
        lb.font = .MyTheme.boldTitleText
        lb.textColor = .MyTheme.defaultTextColor
        lb.textAlignment = .left
        return lb
    }()
    
    lazy var accountDataLabel: UILabel = {
        let lb = UILabel()
        lb.translatesAutoresizingMaskIntoConstraints = false
        lb.numberOfLines = 1
        lb.text = "Agência Conta".localized(tableName: "HomeLocalizable")
        lb.font = .MyTheme.defaultText
        lb.textColor = .MyTheme.defaultTextColor
        lb.textAlignment = .left
        return lb
    }()
    
    lazy var balanceLabel: UILabel = {
        let lb = UILabel()
        lb.translatesAutoresizingMaskIntoConstraints = false
        lb.numberOfLines = 1
        lb.text = "R$".localized(tableName: "HomeLocalizable")
        lb.font = .MyTheme.defaultText
        lb.textColor = .MyTheme.defaultTextColor
        lb.textAlignment = .left
        return lb
    }()
    
    lazy var amountLabel: UILabel = {
        let lb = UILabel()
        lb.translatesAutoresizingMaskIntoConstraints = false
        lb.numberOfLines = 1
        lb.text = "Saldo".localized(tableName: "HomeLocalizable")
        lb.font = .MyTheme.boldTitleText
        lb.textColor = .MyTheme.defaultTextColor
        lb.textAlignment = .left
        return lb
    }()
    
    lazy var pixLabel: UILabel = {
        let lb = UILabel()
        lb.translatesAutoresizingMaskIntoConstraints = false
        lb.numberOfLines = 1
        lb.text = "Pix".localized(tableName: "HomeLocalizable")
        lb.font = .MyTheme.defaultText
        lb.textColor = .MyTheme.defaultTextColor
        lb.textAlignment = .center
        return lb
    }()
    
    lazy var payLabel: UILabel = {
        let lb = UILabel()
        lb.translatesAutoresizingMaskIntoConstraints = false
        lb.numberOfLines = 1
        lb.text = "Pagar".localized(tableName: "HomeLocalizable")
        lb.font = .MyTheme.defaultText
        lb.textColor = .MyTheme.defaultTextColor
        lb.textAlignment = .center
        return lb
    }()
    
    lazy var transferLabel: UILabel = {
        let lb = UILabel()
        lb.translatesAutoresizingMaskIntoConstraints = false
        lb.numberOfLines = 1
        lb.text = "Transferir".localized(tableName: "HomeLocalizable")
        lb.font = .MyTheme.defaultText
        lb.textColor = .MyTheme.defaultTextColor
        lb.textAlignment = .center
        return lb
    }()
    
    lazy var offersLabel: UILabel = {
        let lb = UILabel()
        lb.translatesAutoresizingMaskIntoConstraints = false
        lb.numberOfLines = 1
        lb.text = "Ofertas".localized(tableName: "HomeLocalizable")
        lb.font = .MyTheme.boldTitleText
        lb.textColor = .MyTheme.defaultTextColor
        lb.textAlignment = .left
      
        return lb
    }()
    
    //MARK: - Image
    
    lazy var userImage: UIImageView = {
        let image = UIImageView()
        image.translatesAutoresizingMaskIntoConstraints = false
        image.image = UIImage(named: "pigHomeUser")
        image.contentMode = .scaleToFill
        return image
    }()
    
    //MARK: - Buttons
    
    private lazy var hideBalanceButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setImage(UIImage(named: "ic_eye_visibility"), for: .normal)
        button.tintColor = .MyTheme.defaultTextColor
        return button
    }()
    
    private lazy var settingsButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setImage(UIImage(named: "settingsButton"), for: .normal)
        button.tintColor = .MyTheme.defaultTextColor
        return button
    }()
    
    private lazy var pixButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setImage(UIImage(named: "pixButton"), for: .normal)
        button.backgroundColor = .MyTheme.backgroundColor
        button.tintColor = .MyTheme.blueColor
        button.layer.cornerRadius = 35
        return button
    }()
    
    private lazy var payButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setImage(UIImage(named: "barCodeButton"), for: .normal)
        button.backgroundColor = .MyTheme.backgroundColor
        button.tintColor = .MyTheme.blueColor
        button.layer.cornerRadius = 35
        return button
    }()
    
    private lazy var transferButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setImage(UIImage(named: "transferButton"), for: .normal)
        button.backgroundColor = .MyTheme.backgroundColor
        button.tintColor = .MyTheme.blueColor
        button.layer.cornerRadius = 35
        return button
    }()
    
    private lazy var downButton: UIButton = {
        let button = UIButton(type: .system)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setImage(UIImage.init(named: "ic_downArrow"), for: .normal)
        button.tintColor = .MyTheme.blueColor
        button.backgroundColor = UIColor.MyTheme.backgroundColor
        button.layer.cornerRadius = 5
        return button
    }()
    
    private lazy var myCardsButton: UIButton = {
        let button = UIButton(type: .system)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("Cartões".localized(tableName: "HomeLocalizable"), for: .normal)
        button.titleLabel?.font = UIFont.MyTheme.defaultText
        button.setImage(UIImage.init(named: "ic_cartao"), for: .normal)
        button.tintColor = .MyTheme.blueColor
        button.setTitleColor(UIColor.MyTheme.defaultTextColor, for: .normal)
        button.backgroundColor = UIColor.MyTheme.backgroundColor
        button.layer.cornerRadius = 5
        return button
    }()
    
    //MARK: - UIView Background
    
    lazy var backgroundView: UIView! = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .MyTheme.grayColor
        
        return view
    }()
    
    
    
    //MARK: - INIT
    override init(frame: CGRect){
        super.init(frame: frame)
        addSubviews()
        configConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    //MARK: - Func addSubviews
    
    private func addSubviews() {
        self.addSubview(backgroundView)
        self.addSubview(userImage)
        self.addSubview(titleLabel)
        self.addSubview(accountDataLabel)
        self.addSubview(balanceLabel)
        self.addSubview(amountLabel)
        self.addSubview(hideBalanceButton)
        self.addSubview(settingsButton)
        self.addSubview(pixButton)
        self.addSubview(payButton)
        self.addSubview(transferButton)
        self.addSubview(pixLabel)
        self.addSubview(payLabel)
        self.addSubview(transferLabel)
        self.addSubview(downButton)
        self.addSubview(myCardsButton)
        self.addSubview(offersLabel)
    }
    
    //MARK: - Constraints
    
    private func configConstraints() {
        NSLayoutConstraint.activate([
            self.userImage.topAnchor.constraint(equalTo: self.safeAreaLayoutGuide.topAnchor, constant: 16),
            self.userImage.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 16),
            
            self.titleLabel.centerYAnchor.constraint(equalTo: self.userImage.centerYAnchor),
            self.titleLabel.leadingAnchor.constraint(equalTo: self.userImage.trailingAnchor, constant: 16),
            
            self.accountDataLabel.leadingAnchor.constraint(equalTo: self.userImage.trailingAnchor, constant: 16),
            self.accountDataLabel.topAnchor.constraint(equalTo: self.titleLabel.bottomAnchor),
            
            self.balanceLabel.topAnchor.constraint(equalTo: self.accountDataLabel.bottomAnchor, constant: 16),
            self.balanceLabel.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 16),
            
            self.amountLabel.centerYAnchor.constraint(equalTo: self.balanceLabel.centerYAnchor),
            self.amountLabel.leadingAnchor.constraint(equalTo: self.balanceLabel.trailingAnchor),
            
            self.backgroundView.topAnchor.constraint(equalTo: self.accountDataLabel.bottomAnchor, constant: 100),
            self.backgroundView.leadingAnchor.constraint(equalTo: self.leadingAnchor),
            self.backgroundView.trailingAnchor.constraint(equalTo: self.trailingAnchor),
            self.backgroundView.bottomAnchor.constraint(equalTo: self.bottomAnchor),
            
            self.settingsButton.topAnchor.constraint(equalTo: self.safeAreaLayoutGuide.topAnchor, constant: 16),
            self.settingsButton.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -16),
            
            self.hideBalanceButton.centerYAnchor.constraint(equalTo: self.settingsButton.centerYAnchor),
            self.hideBalanceButton.trailingAnchor.constraint(equalTo: self.settingsButton.leadingAnchor, constant: -16),
            
            self.pixButton.centerYAnchor.constraint(equalTo: self.payButton.centerYAnchor),
            self.pixButton.trailingAnchor.constraint(equalTo: self.payButton.leadingAnchor, constant: -35),
            
            self.payButton.topAnchor.constraint(equalTo: self.accountDataLabel.bottomAnchor, constant: 80),
            self.payButton.centerXAnchor.constraint(equalTo: self.centerXAnchor),
            
            self.transferButton.centerYAnchor.constraint(equalTo: self.payButton.centerYAnchor),
            self.transferButton.leadingAnchor.constraint(equalTo: self.payButton.trailingAnchor, constant: 35),
            
            self.pixLabel.centerXAnchor.constraint(equalTo: self.pixButton.centerXAnchor),
            self.pixLabel.topAnchor.constraint(equalTo: self.pixButton.bottomAnchor),
            
            self.payLabel.centerXAnchor.constraint(equalTo: self.payButton.centerXAnchor),
            self.payLabel.topAnchor.constraint(equalTo: self.payButton.bottomAnchor),
            
            self.transferLabel.centerXAnchor.constraint(equalTo: self.transferButton.centerXAnchor),
            self.transferLabel.topAnchor.constraint(equalTo: self.transferButton.bottomAnchor),
            
            self.downButton.topAnchor.constraint(equalTo: self.payLabel.bottomAnchor, constant: 16),
            self.downButton.heightAnchor.constraint(equalToConstant: 24),
            self.downButton.widthAnchor.constraint(equalToConstant: 69),
            self.downButton.centerXAnchor.constraint(equalTo: self.centerXAnchor),
            
            self.myCardsButton.topAnchor.constraint(equalTo: self.downButton.bottomAnchor, constant: 30),
            self.myCardsButton.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 16),
            self.myCardsButton.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -16),
            self.myCardsButton.heightAnchor.constraint(equalToConstant: 40),
            
            self.offersLabel.topAnchor.constraint(equalTo: self.myCardsButton.bottomAnchor, constant: 16),
            self.offersLabel.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 16),
        ])
    }
    
}


