//
//  ViewController.swift
//  StartStopWatch
//
//  Created by Soumyajit Sarkar on 1/22/16.
//  Copyright © 2016 Raul. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var timer = NSTimer()
    var timeMeasure = 0
    func increment(){
        timeMeasure++
        timerLabel.text = "\(timeMeasure)" // String(timeMeasure)
    }
    
    @IBOutlet var timerLabel: UILabel!

    @IBAction func play(sender: AnyObject) {
        
        timer = NSTimer.scheduledTimerWithTimeInterval(1, target: self, selector: Selector("increment"), userInfo: nil, repeats: true)
        
    }
    @IBAction func pause(sender: AnyObject) {
        timer.invalidate()
    }
    
    @IBAction func stop(sender: AnyObject) {
        timer.invalidate()
        timeMeasure = 0
        timerLabel.text = String(timeMeasure)
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

