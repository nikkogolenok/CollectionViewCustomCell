//
//  ViewController.swift
//  CollectionViewCustomCell
//
//  Created by Никита Коголенок on 24.03.22.
//

import UIKit

class ViewController: UIViewController {
    
    // MARK: - GUI Variable
    private var collectionView: UICollectionView?
    
    // MARK: - View Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        
        createDelegate()
    }
    
    // MARK: - Methods
    func createDelegate() {
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .vertical
        layout.minimumLineSpacing = 1
        layout.minimumInteritemSpacing = 1
        layout.itemSize = CGSize(width: (view.frame.width/3)-4,
                                 height: (view.frame.width/3)-4)
        collectionView = UICollectionView(frame: .zero, collectionViewLayout: layout)
        guard let collectionView = collectionView else { return }
        collectionView.register(CustomCollectionViewCell.self, forCellWithReuseIdentifier: CustomCollectionViewCell.identifier)
        collectionView.delegate = self
        collectionView.dataSource = self
        view.addSubview(collectionView)
        collectionView.frame = view.bounds
    }
}

