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
        print("the value is \(txtB.text!) & \(txtA.text!)")
        if (txtB.text) != "" && (txtA.text) != ""
        {
        let a = ((Int)(txtA.text!))!
        let b = ((Int)(txtB.text!))!
        var c = 0
        
        switch sender.selectedSegmentIndex {
        case 0:
             c = a + b
        case 1:
             c = a - b
        case 2:
             c = a * b
        case 3:
             c = a / b
        default:
            print("Invalid choice")
        }
        
        let alertView = UIAlertController (title: "Answer", message: "Answer is \(c)", preferredStyle:.alert)
        
            let btnResign = UIAlertAction(title:"Cancel",style: .cancel)
            {
                (action) in self.dismiss(animated: true, completion: nil)
            }
            alertView.addAction(btnResign)
            
            
        self.present(alertView,animated: true)
        {
            print("After view present")
        }
            let errorShow = UIAlertController(title: "Error",message:"Please enter value in text box",preferredStyle : .actionSheet)
            let btnCancle = UIAlertAction(title: "Cancel", style: .cancel)
            {
                (action) in
                self.dismiss(animated: true, completion: nil)
            }
            errorShow.addAction(btnCancle)
            
            self.present(errorShow,animated: true,completion: nil)
    }
            func touchesBegan(_ touches:Set<UITouch>, with event : UIEvent?)
    {
        self.view.endEditing(true)
        
    }
        func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

        func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}
}

