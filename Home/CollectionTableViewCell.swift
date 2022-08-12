//
//  CollectionTableViewCell.swift
//  CRUD MVVM
//
//  Created by user217584 on 08/07/22.
//

import UIKit

class CollectionTableViewCell: UITableViewCell, UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    static let identifier = "CollectionTableViewCell"
    
    private var viewModels: [ViewCollectionViewCellViewModel] = []
    
    //MARK: - let collectionView
    
    private let collectionView: UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .horizontal
        layout.sectionInset = UIEdgeInsets(top: 16, left: 16, bottom: 16, right: 16)
        let collectionView = UICollectionView(frame: .zero, collectionViewLayout: layout)
        collectionView.register(ViewCollectionViewCell.self, forCellWithReuseIdentifier: ViewCollectionViewCell.identifier)
        layout.collectionView?.showsHorizontalScrollIndicator = false
        layout.collectionView?.backgroundColor = .MyTheme.grayColor
        
        return collectionView
    }()

    //MARK: - Init
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        contentView.addSubview(collectionView)
        collectionView.delegate = self
        collectionView.dataSource = self
    }
    
    required init?(coder: NSCoder) {
        fatalError()
    }
    
    //MARK: - Layout
    
    override func layoutSubviews() {
        super.layoutSubviews()
        collectionView.frame = contentView.bounds
    }
    
    //MARK: - functions CollectionView
    
    
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return viewModels.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: ViewCollectionViewCell.identifier, for: indexPath) as? ViewCollectionViewCell else {
            fatalError()
        }
        cell.configure(with: viewModels[indexPath.row])
        return cell
    }
    
    func configure(with viewModel: CollectionTableViewCellViewModel) {
        self.viewModels = viewModel.viewModels
        collectionView.reloadData()
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectioViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
//        let cell = collectionView.cellForItem(at: indexPath)
        let width: CGFloat = contentView.frame.size.width/1.2
        if indexPath.row == 0 {
            return CGSize(width: width, height: width/2)
        } 
        return CGSize(width: width, height: width/2.3)
    }

}
