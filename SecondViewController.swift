//
//  SecondViewController.swift
//  SegueApp
//
//  Created by Sinan Selek on 5.08.2022.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var myLabel: UILabel!
    
    var myName = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()

        nameLabel.text = myName
        
    }
    

}
