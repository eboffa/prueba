//
//  PostCollectionViewCell.swift
//  MyFirstApp
//
//  Created by Esteban Adrian Boffa on 22/04/2019.
//  Copyright © 2019 Esteban Adrian Boffa. All rights reserved.
//

import UIKit

class PostCollectionViewCell: UICollectionViewCell {

    
    @IBOutlet weak var textLabel: UILabel!
    @IBOutlet weak var dateLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    func setup(with currentPost: Post){  // se llama cada vez que la tabla pide una celda

        textLabel.text = currentPost.text
        dateLabel.text = currentPost.postDate
    }

}
