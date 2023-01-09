//
//  MainContestTableViewCell.swift
//  ClubRoom
//
//  Created by 고하영 on 2023/01/10.
//

import UIKit

class MainContestTableViewCell: UITableViewCell {
    
    public func configure(with contests: [Contest]) {
        self.contests = contests
        ContestCollectionView.reloadData()
    }
    
    @IBOutlet weak var ContestCollectionView: UICollectionView!
    
    var contests = [Contest]()
    
    override func awakeFromNib() {
        super.awakeFromNib()
        setUpCollectionView()
        // Initialization code
    }
    
    func setUpCollectionView() {
        ContestCollectionView.delegate = self
        ContestCollectionView.dataSource = self
        ContestCollectionView.register(UINib(nibName: "MainContestCollectionTableViewCell", bundle: nil), forCellWithReuseIdentifier: "MainContestCollectionTableViewCell")
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
}

extension MainContestTableViewCell: UICollectionViewDelegate, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        contests.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "MainContestCollectionViewCell", for: indexPath) as! MainContestCollectionViewCell
        cell.configure(with: contests[indexPath.row])
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt: IndexPath) -> CGSize {
        return CGSize(width: 180, height: 246)
    }
}
