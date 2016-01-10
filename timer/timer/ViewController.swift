//
//  ViewController.swift
//  timer
//
//  Created by Lohit  on 2015-12-27.
//  Copyright © 2015 Lohit Talasila. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var time = 0;
    
    @IBOutlet weak var timerLabel: UILabel!
    
    @IBAction func startPressed(sender: AnyObject) {
        time++
        timerLabel.text = String(time)
    }
    
    
    @IBAction func pausePressed(sender: AnyObject) {
        timerLabel.text = String(time);
        
    }
    
    
    @IBAction func resetPressed(sender: AnyObject) {
        time = 0
        timerLabel.text = String(time)
    }
    
    func result(){
        time = 0
        timerLabel.text = String(time)
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
        var timer = NSTimer()
        
        timer = NSTimer.scheduledTimerWithTimeInterval(1, target: self, selector: Selector("result"), userInfo: nil, repeats: true)
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
   

}

