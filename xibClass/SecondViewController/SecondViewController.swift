//
//  SecondViewController.swift
//  xibClass
//
//  Created by Alvin Julian on 30/07/18.
//  Copyright © 2018 Alvin Julian. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        tableView.register(UINib(nibName: "SecondCell", bundle: nil), forCellReuseIdentifier: "globalViewForEveryoneIdentifier")
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
        return 124
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let myCell = tableView.dequeueReusableCell(withIdentifier: "globalViewForEveryoneIdentifier", for: indexPath) as! SecondCell
        
        //Delegate incvrease and decrease function
        myCell.delegate = self
        
        //Untuk change picture di dalam cellnya
        if indexPath.row % 2 == 0 {
            myCell.imageProduct.image = #imageLiteral(resourceName: "accelerometer")
        } else {
            myCell.imageProduct.image = #imageLiteral(resourceName: "microphone")
        }
        
        return myCell
    }
}

extension SecondViewController: secondCellDelegate {
    func increaseQuantityPressed() {
        
    }
    func decreaseQuantityPressed() {
        
    }
}
