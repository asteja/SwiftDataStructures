//
//  ViewController.swift
//  DominosTest
//
//  Created by Saiteja Alle on 8/3/17.
//  Copyright © 2017 Saiteja Alle. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var PhraseTF: UITextField!
    @IBOutlet weak var SelectedRowTF: UITextField!
    
    var strArray:[String] = []
    var selectedRow:String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func viewDidAppear(_ animated: Bool) {
        self.SelectedRowTF.text = selectedRow
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func ScreenAction(_ sender: Any) {
        
        if let str = PhraseTF.text {
            self.strArray = str.components(separatedBy: " ")
            performSegue(withIdentifier: "Screen2Action", sender: self)
        }
        
    }
    
    @IBAction func unwindToVC(segue: UIStoryboardSegue) {
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "Screen2Action" {
            
            let navController:UINavigationController = segue.destination as! UINavigationController
            let vc = PhraseTableViewController()
            vc.data = self.strArray
            navController.pushViewController(vc, animated: true)
        }
    }

}

