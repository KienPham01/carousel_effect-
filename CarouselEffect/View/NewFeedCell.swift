//
//  NewFeedCell.swift
//  CarouselEffect
//
//  Created by Apple on 6/7/19.
//  Copyright © 2019 Apple. All rights reserved.
//

import UIKit

class NewFeedCell: UICollectionViewCell {
    
    @IBOutlet weak var imageName:UIImageView?
    
    func updateView(product:Product)  {
        
        self.imageName?.image = UIImage(named: product.imageName)
    }

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

}
