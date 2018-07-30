//
//  ViewController.swift
//  xibClass
//
//  Created by Alvin Julian on 30/07/18.
//  Copyright © 2018 Alvin Julian. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var loginTextField: UITextField!
    @IBOutlet weak var submitButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func submitEditPressed(_ sender: Any) {
        //Initiate which controller that we want to navigate
        let secondVC = SecondViewController()
        
        //Call navigation controller to push other view controller
        self.navigationController?.pushViewController(secondVC, animated: true)
        
        //Kalau misalkan ga pakai navigation Controller, bisa pakai self.present
        //self.present(secondVC, animated: true, completion: nil)
    }
    
}

