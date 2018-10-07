//
//  ViewController.swift
//  tvAdd
//
//  Created by Michael Chirico on 10/7/18.
//  Copyright © 2018 Michael Chirico. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
  
  
  @IBOutlet weak var tableView0: UITableView!
  
  
  @IBOutlet weak var tableView1: UITableView!
  
  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view, typically from a nib.
    delegates()
  }
  
  func delegates() {
    tableView0.delegate = self
    tableView1.delegate = self
    
    tableView0.dataSource = self
    tableView1.dataSource = self
  }
  
  
  
}

extension ViewController: UITableViewDelegate, UITableViewDataSource {
  func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    
    if tableView == tableView0 {
      return 2
    }
    
    if tableView == tableView1 {
      return 40
    }
    
    return 0
  }
  
  func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    
    
    if tableView == tableView0 {
      let cell = tableView.dequeueReusableCell(withIdentifier: "cell0")
      
      if let tvc = cell as? TableViewCell0 {
        tvc.label0.text = "one"
        tvc.label1.text = "s"
      }
      
      return cell!
      
      
    }
    
    
   
      let cell = tableView.dequeueReusableCell(withIdentifier: "cell1")
      
      if let tvc = cell as? TableViewCell1 {
        tvc.label0.text = "two"
        tvc.label1.text = "s"
      }
      return cell!
    
    
  }
  
  
}

