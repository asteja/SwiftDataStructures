//
//  ViewController.swift
//  TableViewinTableViewCell
//
//  Created by Saiteja Alle on 8/7/17.
//  Copyright © 2017 Saiteja Alle. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    func numberOfSections(in tableView: UITableView) -> Int {
        return 3
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        var cell:CustomCell? = tableView.dequeueReusableCell(withIdentifier: "Cell") as?  CustomCell
        
        if cell == nil {
            cell = CustomCell(style: UITableViewCellStyle.default, reuseIdentifier: "Cell")
        }
        
        cell?.dataArr = ["subMenu->1","subMenu->2","subMenu->3","subMenu->4","subMenu->5"]
        
        return cell!
    }
    
    func  tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 150.0
    }

}

