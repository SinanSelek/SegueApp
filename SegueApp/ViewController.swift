//
//  ViewController.swift
//  SegueApp
//
//  Created by Sinan Selek on 5.08.2022.
//

import UIKit

class ViewController: UIViewController
{
    var userName = ""
    
    @IBOutlet weak var nameText: UITextField!
    @IBOutlet weak var myLabel: UILabel!
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        //lifecycle
        print("viewDidLoad called")
    }
    
    override func viewWillAppear(_ animated: Bool)
    {
        print("viewWillAppear called")
        nameText.text = ""
    }
    
    override func viewDidAppear(_ animated: Bool)
    {
        print("viewDidAppear called")
    }
    
    override func viewWillDisappear(_ animated: Bool)
    {
        print("viewWillDisappear called")
    }
    
    override func viewDidDisappear(_ animated: Bool)
    {
        print("viewDidDisappear called")
    }

    @IBAction func nextClicked(_ sender: Any)
    {
        userName = nameText.text!
        performSegue(withIdentifier: "toSecondVC", sender: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?)
    {
        if segue.identifier == "toSecondVC"
        {
            let destinationVC = segue.destination as! SecondViewController //destination as ile cast edildi
            destinationVC.myName = userName
        }

    }
}

