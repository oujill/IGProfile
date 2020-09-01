//
//  ProfileCollectionViewCell3CollectionViewCell.swift
//  IGProfile
//
//  Created by JillOU on 2020/8/29.
//  Copyright © 2020 Jillou. All rights reserved.
//

import UIKit

class ProfileCollectionViewCell3CollectionViewCell: UICollectionViewCell {
    @IBOutlet weak var collectionImage: UIImageView!
    override func awakeFromNib() {
        collectionImage.layer.cornerRadius = collectionImage.bounds.width/2
    }
}
