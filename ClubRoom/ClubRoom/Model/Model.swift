//
//  Model.swift
//  ClubRoom
//
//  Created by 고하영 on 2023/01/10.
//
import UIKit

struct Contest {
    let image: String
    let title: String
    let period: String
    
    init(image: String, title: String, period: String) {
        self.image = image
        self.title = title
        self.period = period
    }
}
