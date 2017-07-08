//
//  ViewController.swift
//  checkwork_teamNknk
//
//  Created by yuki takei on 2017/07/06.
//  Copyright © 2017年 Yuki Takei. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var timeLabel: UILabel!
    
    var timer:Timer = Timer()
    
    var timeNumber:Int
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        timeLabel.text = timeNumber
        


    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    @IBAction func tappedPlusButton(_ sender: Any) {
        timeNumber += 1
        timeLabel.text = String(timeNumber)
    }

    
    @IBAction func tappedStartButton(_ sender: UIButton) {
        
        if timer.isValid == false{
            sender.setTitle("STOP", for: .normal)
            timer = Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(updateTimer(timer:)), userInfo: nil, repeats: true)
            
        }else{
            sender.setTitle("START", for: .normal)
            timer.invalidate()
        }
    
    }
    
    
    func updateTimer(timer:Timer){
        timeNumber -= 1
        
        timeLabel.text = String(timeNumber)
        
    }
    




