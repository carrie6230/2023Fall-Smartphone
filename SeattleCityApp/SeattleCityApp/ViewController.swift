//
//  ViewController.swift
//  SeattleCityApp
//
//  Created by Yanting Chen on 12/9/23.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    let pics = ["Seattle1", "Seattle2","Seattle3","Seattle4", "Seattle5","Seattle6","Seattle7","Seattle8","Seattle9","Seattle10"]
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return pics.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell =   Bundle.main.loadNibNamed("SeattleCityTableViewCell", owner: self)?.first as! SeattleCityTableViewCell
        cell.imgView?.image = UIImage(named: pics[indexPath.row])
        cell.lblSeattle.text = pics[indexPath.row]
        return cell
    }
    



}

