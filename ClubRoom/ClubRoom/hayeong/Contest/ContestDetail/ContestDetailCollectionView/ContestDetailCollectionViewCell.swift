//
//  ContestDetailCollectionViewCell.swift
//  ClubRoom
//
//  Created by 고하영 on 2023/01/19.
//

import UIKit

class ContestDetailCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var totalView: UIView!
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var periodLabel: UILabel!
    @IBOutlet weak var hostCampanyLabel: UILabel!
    @IBOutlet weak var prizeLabel: UILabel!
    @IBOutlet weak var ddayBtn: UIButton!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        initBorder()
    }
    
    public func configure(with contestDetail:ContestDetail){
        self.imageView.image = UIImage(named: contestDetail.image)
        self.titleLabel.text = contestDetail.title
        self.periodLabel.text = contestDetail.period
        self.hostCampanyLabel.text = contestDetail.hostCompany
        self.prizeLabel.text = contestDetail.prize
        self.ddayBtn.subtitleLabel?.text = "D - " + String(contestDetail.dday)
        
    }
    
    private func initBorder(){
        totalView.layer.cornerRadius = 15
    }
}
