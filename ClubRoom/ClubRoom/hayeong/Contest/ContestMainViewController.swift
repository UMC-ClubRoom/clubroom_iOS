//
//  ContestMainViewController.swift
//  ClubRoom
//
//  Created by 고하영 on 2023/01/18.
//

import UIKit

class ContestMainViewController: UIViewController {
    
    @IBOutlet weak var orderView: UIView!
    @IBOutlet weak var orderUIButton: UIButton!
    @IBOutlet weak var tagButton: UIButton!
    @IBOutlet weak var tagButton2: UIButton!
    @IBOutlet weak var tagButton3: UIButton!
    @IBOutlet weak var tagButton4: UIButton!
    @IBOutlet weak var tagButton5: UIButton!
    @IBOutlet weak var tagButton6: UIButton!
    @IBOutlet weak var tagButton7: UIButton!
    
    @IBOutlet weak var tableView: UITableView!
    var contestDetails = [ContestDetail]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        initborder()
        setupPopUpButton()
        initBtnBorder(button: tagButton)
        initBtnBorder(button: tagButton2)
        initBtnBorder(button: tagButton3)
        initBtnBorder(button: tagButton4)
        initBtnBorder(button: tagButton5)
        initBtnBorder(button: tagButton6)
        initBtnBorder(button: tagButton7)
        setUpTableView()
    }
    
    func setUpTableView(){
        contestDetails.append(ContestDetail(image: "image2", title: "온 세상 기획 공모전", period: "2022/12/25 ~ 2023/1/25", dday: 20, hostCompany: "온세상기획협회", prize: "1등 100만원(1명), 2등 50만원(3명), 3등 20만원(5명)"))
        contestDetails.append(ContestDetail(image: "image2", title: "온 세상 기획 공모전", period: "2022/12/25 ~ 2023/1/25", dday: 20, hostCompany: "온세상기획협회", prize: "1등 100만원(1명), 2등 50만원(3명), 3등 20만원(5명)"))
        contestDetails.append(ContestDetail(image: "image2", title: "온 세상 기획 공모전", period: "2022/12/25 ~ 2023/1/25", dday: 20, hostCompany: "온세상기획협회", prize: "1등 100만원(1명), 2등 50만원(3명), 3등 20만원(5명)"))
        contestDetails.append(ContestDetail(image: "image2", title: "온 세상 기획 공모전", period: "2022/12/25 ~ 2023/1/25", dday: 20, hostCompany: "온세상기획협회", prize: "1등 100만원(1명), 2등 50만원(3명), 3등 20만원(5명)"))
        contestDetails.append(ContestDetail(image: "image2", title: "온 세상 기획 공모전", period: "2022/12/25 ~ 2023/1/25", dday: 20, hostCompany: "온세상기획협회", prize: "1등 100만원(1명), 2등 50만원(3명), 3등 20만원(5명)"))
        
        tableView.delegate = self
        tableView.dataSource = self
        tableView.register(UINib(nibName: "ContestDetailTableViewCell", bundle: nil), forCellReuseIdentifier: "ContestDetailTableViewCell")
        tableView.separatorStyle = .none
    }
    
    func setupPopUpButton(){
        let popUpBottonClosure = {(action:UIAction) in print("pop-up action")
        }
        
        orderUIButton.menu = UIMenu(children: [
            UIAction(title:"최신순", handler: popUpBottonClosure),
            UIAction(title: "마감순", handler: popUpBottonClosure)])
        orderUIButton.showsMenuAsPrimaryAction = true
    }
    
    func initborder() {
        // Do any additional setup after loading the view.
        orderView.layer.borderWidth = 1
        orderView.layer.cornerRadius = 15
        orderView.layer.borderColor = CGColor.init(red: 112/255, green: 255/255, blue: 178/255, alpha: 1.0)
    }
    
    func initBtnBorder(button:UIButton){
        button.layer.borderWidth = 1
        button.layer.cornerRadius = 15
        button.layer.borderColor = CGColor.init(red: 112/255, green: 255/255, blue: 178/255, alpha: 1.0)
    }
    
}

extension ContestMainViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ContestDetailTableViewCell", for: indexPath) as! ContestDetailTableViewCell
        cell.configure(with: contestDetails)
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) ->CGFloat {
        return 400
    }
    
    
}
