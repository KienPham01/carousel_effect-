//
//  ViewController.swift
//  CarouselEffect
//
//  Created by Apple on 6/5/19.
//  Copyright © 2019 Apple. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    let cellId = "NewFeedCell"
    @IBOutlet weak var newFeedCollectionView:UICollectionView?

    override func viewDidLoad() {
        super.viewDidLoad()
        newFeedCollectionView?.register(UINib(nibName: "NewFeedCell", bundle: nil), forCellWithReuseIdentifier: "NewFeedCell")
        newFeedCollectionView?.dataSource = self
        newFeedCollectionView?.delegate = self
        
        let floawLayout = UPCarouselFlowLayout()
        floawLayout.itemSize = CGSize(width: UIScreen.main.bounds.size.width - 60.0, height: (newFeedCollectionView?.frame.size.height)!)
        floawLayout.scrollDirection = .horizontal
        floawLayout.sideItemScale = 0.8
        floawLayout.sideItemAlpha = 1.0
        floawLayout.spacingMode = .fixed(spacing: 5.0)
        newFeedCollectionView?.collectionViewLayout = floawLayout
        // Do any additional setup after loading the view.
    }


}

extension ViewController:UICollectionViewDelegate,UICollectionViewDataSource{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        
        return DataService.instance.getProduct().count
        
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: cellId , for: indexPath) as? NewFeedCell  else {return NewFeedCell()}
        
        let product = DataService.instance.getProduct()[indexPath.row]
        
        cell.updateView(product: product)
        
        return cell
        
        
        
        
    }
    
    
    
}



