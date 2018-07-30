//
//  SecondViewController.swift
//  xibClass
//
//  Created by Alvin Julian on 30/07/18.
//  Copyright © 2018 Alvin Julian. All rights reserved.
//

import UIKit

var priceList:[String:Int] = [:]

class SecondViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        tableView.register(UINib(nibName: "SecondCell", bundle: nil), forCellReuseIdentifier: "globalViewForEveryoneIdentifier")
        
        tableView.register(UINib(nibName: "ThirdCell", bundle: nil), forCellReuseIdentifier: "secondLayerIdentifier")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}

extension SecondViewController: UITableViewDataSource {
    func numberOfSections (in tableView: UITableView) -> Int {
        return 1
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
}

extension SecondViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        if indexPath.row <= 2 {
            return 126
        } else {
            return 330
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if indexPath.row <= 2 {
            let myCell = tableView.dequeueReusableCell(withIdentifier: "globalViewForEveryoneIdentifier", for: indexPath) as! SecondCell
            
            //Delegate incvrease and decrease function
            myCell.delegate = self
            
            //Start customize cell View
            //        myCell.bgView.backgroundColor = #colorLiteral(red: 0.9764705896, green: 0.850980401, blue: 0.5490196347, alpha: 1)
            myCell.bgView.layer.cornerRadius = 5.0
            myCell.bgView.layer.borderColor = UIColor.lightGray.cgColor
            myCell.bgView.layer.borderWidth = 0.5
            myCell.bgView.layer.shadowColor = UIColor.darkGray.cgColor
            
            
            //Untuk change picture di dalam cellnya
            if indexPath.row % 2 == 0 {
                myCell.imageProduct.image = #imageLiteral(resourceName: "accelerometer")
                myCell.productName.text = "Accelerometer"
                if let name = myCell.productName.text {
                    priceList[name] = 100
                }
            } else {
                myCell.imageProduct.image = #imageLiteral(resourceName: "microphone")
                myCell.productName.text = "Microphone"
                if let name = myCell.productName.text {
                    priceList[name] = 200
                }
            }
            
            //Kalau misalkan pakai JSON Array
            //indexPath.row[myJson.name] <-- nyari keynya si JSON dan start dari 0
            
            return myCell
        } else {
            let myCell = tableView.dequeueReusableCell(withIdentifier: "secondLayerIdentifier", for: indexPath) as! ThirdCell
            
            return myCell
        }        
    }
}

extension SecondViewController: secondCellDelegate {
    func increaseQuantityPressed() {
        
    }
    func decreaseQuantityPressed() {
        
    }
}
