//
//  ContestDetail.swift
//  ClubRoom
//
//  Created by 고하영 on 2023/01/19.
//

import UIKit

struct ContestDetail{
    let image: String
    let title: String
    let period: String
    let dday: Int
    let hostCompany: String
    let prize: String
    
    init(image:String, title:String, period:String, dday:Int, hostCompany:String, prize:String){
        self.image = image
        self.title = title
        self.period = period
        self.dday = dday
        self.hostCompany = hostCompany
        self.prize = prize
    }
}
