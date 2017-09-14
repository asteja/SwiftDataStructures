//
//  CustomCell.swift
//  TableViewinTableViewCell
//
//  Created by Saiteja Alle on 8/7/17.
//  Copyright © 2017 Saiteja Alle. All rights reserved.
//

import UIKit

class CustomCell:UITableViewCell {
    var dataArr:[String] = ["subMenu->1","subMenu->2","subMenu->3","subMenu->4","subMenu->5"]
    var subMenuTable:UITableView?
    override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
        super.init(style: style , reuseIdentifier: reuseIdentifier)
        setUpTable()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setUpTable()
    }
    
//    required init(coder aDecoder: NSCoder) {
//        setUpTable()
//        fatalError("init(coder:) has not been implemented")
//    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        setUpTable()
    }
    
    func setUpTable(){
        subMenuTable = UITableView(frame: CGRect.zero, style:UITableViewStyle.plain)
        subMenuTable?.delegate = self as? UITableViewDelegate
        subMenuTable?.dataSource = self as? UITableViewDataSource
        self.addSubview(subMenuTable!)
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        subMenuTable?.frame = CGRect(x: 0.2, y: 0.3, width: self.bounds.size.width-5, height: self.bounds.size.height-5)
        
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        // Configure the view for the selected state
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dataArr.count
    }
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "cellID")
        var dataArr:[String] = ["subMenu->1","subMenu->2","subMenu->3","subMenu->4","subMenu->5"]

        var cell: UITableViewCell? = tableView.dequeueReusableCell(withIdentifier: "cellID")
        
        if cell == nil {
            cell = UITableViewCell(style: UITableViewCellStyle.default, reuseIdentifier: "cellID")
        }
        
        cell?.textLabel?.text = dataArr[indexPath.row]
        
        return cell!
    }
    
    func  tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 40.0
    }

}
