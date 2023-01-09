//
//  ViewController.swift
//  ClubRoom
//
//  Created by 고하영 on 2023/01/09.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var ContestTableView: UITableView!
    @IBOutlet weak var universityUIView: UIView!
    
    var contests = [Contest]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        initborder()
    }
    
    func initborder() {
        // Do any additional setup after loading the view.
        universityUIView.layer.borderWidth = 1
        universityUIView.layer.cornerRadius = 15
        universityUIView.layer.borderColor = CGColor.init(red: 112/255, green: 255/255, blue: 178/255, alpha: 1.0)
    }
    
    func setUpTableView() {
        contests.append(Contest(image: "image2", title: "푸른 시선으로 본 온 세상 기획 공모전", period: "2022/12/1 ~ 2023/1/2"))
        contests.append(Contest(image: "image2", title: "푸른 시선으로 본 온 세상 기획 공모전", period: "2022/12/1 ~ 2023/1/2"))
        contests.append(Contest(image: "image2", title: "푸른 시선으로 본 온 세상 기획 공모전", period: "2022/12/1 ~ 2023/1/2"))
        contests.append(Contest(image: "image2", title: "푸른 시선으로 본 온 세상 기획 공모전", period: "2022/12/1 ~ 2023/1/2"))
        
        ContestTableView.delegate = self
        ContestTableView.dataSource = self
        ContestTableView.register(UINib(nibName: "CollectionTableViewCell", bundle: nil), forCellReuseIdentifier: "CollectionTableViewCell")
        ContestTableView.separatorStyle = .none //cell 구분선 없애기
    }

}

extension ViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "MainContestTableViewCell", for: indexPath) as! MainContestTableViewCell
        cell.configure(with: contests)
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 246
    }

}
