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
        collectionView = UICollectionView(frame: .zero, collectionViewLayout: layout)
        guard let collectionView = collectionView else { return }
        collectionView.register(UICollectionViewCell.self, forCellWithReuseIdentifier: "cell")
        collectionView.delegate = self
        collectionView.dataSource = self
        view.addSubview(collectionView)
        collectionView.frame = view.bounds
    }
}

