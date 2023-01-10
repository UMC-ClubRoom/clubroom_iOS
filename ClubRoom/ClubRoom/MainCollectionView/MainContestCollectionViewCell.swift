//
//  MainCollectionViewCell.swift
//  ClubRoom
//
//  Created by 고하영 on 2023/01/10.
//

import UIKit

class MainContestCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var contestImageView: UIImageView!
    @IBOutlet weak var contestName: UILabel!
    @IBOutlet weak var contestPeriod: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    public func configure(with contest: Contest) {
        self.contestImageView.image = UIImage(named: contest.image)
        self.contestName.text = contest.title
        self.contestPeriod.text = contest.period
    }
}
