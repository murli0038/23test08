//
//  ViewController.swift
//  calApp
//
//  Created by COE-029 on 23/08/19.
//  Copyright © 2019 COE-029. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var txtA: UITextField!
    
    @IBOutlet weak var txtB: UITextField!
    
    @IBAction func segmentvalue(_ sender: UISegmentedControl)
    {
        let a = ((Int)(txtA.text!))!
        let b = ((Int)(txtB.text!))!
        let c = 0
        
        switch sender.selectedSegmentIndex {
        case 0:
            let c = a + b
        case 1:
            let c = a - b
        case 2:
            let c = a * b
        case 3:
            let c = a / b
        default:
            print("Invalid choice")
        }
        
        let alertView = UIAlertController (title: "Answer", message: "Answer is \(c)", preferredStyle:.alert)
        
        self.present(alertView,animated: true)
        {
            print("After view present")
        }
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

