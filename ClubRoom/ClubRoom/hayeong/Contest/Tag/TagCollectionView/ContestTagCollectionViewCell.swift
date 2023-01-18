//
//  ContestTagCollectionViewCell.swift
//  ClubRoom
//
//  Created by 고하영 on 2023/01/18.
//

import UIKit

class ContestTagCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var fieldView: UIView!
    @IBOutlet weak var fieldLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    public func configure(with model: ContestTag){
        self.fieldLabel.text = model.field
    }
    
    private func initborder() {
        // Do any additional setup after loading the view.
        fieldView.layer.borderWidth = 1
        fieldView.layer.cornerRadius = 15
        fieldView.layer.borderColor = CGColor.init(red: 112/255, green: 255/255, blue: 178/255, alpha: 1.0)
    }
}
