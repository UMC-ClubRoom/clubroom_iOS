//
//  ContestDetailTableViewCell.swift
//  ClubRoom
//
//  Created by 고하영 on 2023/01/19.
//

import UIKit

class ContestDetailTableViewCell: UITableViewCell {

    @IBOutlet weak var CollectionView: UICollectionView!
    var contestDetails = [ContestDetail]()
    
    func configure(with contestDetails: [ContestDetail]){
        self.contestDetails = contestDetails
        CollectionView.reloadData()
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        setUpCollectionView()
        // Initialization code
        
    }

    func setUpCollectionView() {
        CollectionView.delegate = self
        CollectionView.dataSource = self
        CollectionView.register(UINib(nibName: "ContestDetailCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "ContestDetailCollectionViewCell")
    }
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}

extension ContestDetailTableViewCell:UICollectionViewDelegate, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        contestDetails.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = CollectionView.dequeueReusableCell(withReuseIdentifier: "ContestDetailCollectionViewCell", for: indexPath) as! ContestDetailCollectionViewCell
        cell.configure(with: contestDetails[indexPath.row])
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt: IndexPath) -> CGSize {
        return CGSize(width:240, height:400)
    }
    
    
}
