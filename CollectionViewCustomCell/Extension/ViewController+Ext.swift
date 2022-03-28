//
//  ViewController+Ext.swift
//  CollectionViewCustomCell
//
//  Created by Никита Коголенок on 24.03.22.
//

import UIKit

extension ViewController: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {

    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 30
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: CustomCollectionViewCell.identifier, for: indexPath) as? CustomCollectionViewCell else { return UICollectionViewCell() }
        cell.configure(label: "Custom: \(indexPath.row )")
        return cell
    }
    
    
}
