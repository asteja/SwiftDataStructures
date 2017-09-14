//
//  ViewController.swift
//  NavigExp
//
//  Created by Saiteja Alle on 8/17/17.
//  Copyright © 2017 Saiteja Alle. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var selfTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationItem.title = "Sai Teja"
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell")!
        let OneLBL = cell.viewWithTag(1) as! UILabel
        OneLBL.text = "One"
        let TwoLBL = cell.viewWithTag(2) as! UILabel
        TwoLBL.text = "Two"
        return cell
    }


}

