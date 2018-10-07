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
      
      let bgView: UIView = UIView(frame: CGRect(x: 10, y: 0, width: 367, height: 37))
      
      bgView.backgroundColor = UIColor.gray
      bgView.layer.borderWidth = 3
      bgView.alpha = 1
      bgView.layer.cornerRadius = 9
      bgView.tag = 100
      
      let label = UILabel(frame: CGRect(x:0, y:10, width:200, height:15))
      //label.center = CGPointMake(160, 284)
      label.textAlignment = NSTextAlignment.center
      
      label.textColor = UIColor.black
      label.backgroundColor = UIColor.clear
      label.alpha = 10
      label.text = "title: \(indexPath.row)"
      label.tag = 101
      label.font  = UIFont(name: "Avenir", size: 17.0)
      
      bgView.addSubview(label)
      
      cell!.addSubview(bgView)
      
      return cell!
      
      
    }
    
    
    
    let cell = tableView.dequeueReusableCell(withIdentifier: "cell1")
    

    let bgView: UIView = UIView(frame: CGRect(x: 15, y: 0, width: 367, height: 40))
    
    bgView.backgroundColor = UIColor.green
    bgView.layer.borderWidth = 1
    bgView.alpha = 1
    bgView.layer.cornerRadius = 9
    
    bgView.tag = 100
    
    let bgViewM: UIView = UIView(frame: CGRect(x: 20, y: 3.4, width: 200, height: 29))
    
    bgViewM.backgroundColor = UIColor.white
    bgViewM.layer.borderWidth = 1
    bgViewM.alpha = 1
    bgViewM.layer.cornerRadius = 9
    bgViewM.tag = 300
    
    let label = UILabel(frame: CGRect(x:10, y:10, width:200, height:15))

    label.textAlignment = NSTextAlignment.center
    
    label.textColor = UIColor.black
    label.backgroundColor = UIColor.clear
    label.alpha = 10
    label.text = "title: \(indexPath.row)"
    label.tag = 101
    label.font  = UIFont(name: "Avenir", size: 17.0)
    
    
    bgViewM.addSubview(label)
    bgView.addSubview(bgViewM)
    
    

    cell!.addSubview(bgView)
    
    return cell!
    
    

    
    
  }
  
  
}

