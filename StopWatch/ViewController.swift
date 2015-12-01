//
//  ViewController.swift
//  StopWatch
//
//  Created by michael adams on 12/1/15.
//  Copyright © 2015 michael adams. All rights reserved.
//

import UIKit

class ViewController: UIViewController , UITableViewDelegate, UITableViewDataSource {
    
    


    
    var laps: [String] = []
    
    var timer = NSTimer()
    var minutes: Int = 0
    var seconds: Int = 0
    var fractions: Int = 0
    
    
    var stopWatchString: String = ""
    
    var startStopWatch: Bool =  true
    var addLap: Bool = false
    
    
    
    @IBOutlet weak var stopWatchLabel: UILabel!
    @IBOutlet weak var lapsTableView: UITableView!
    
    @IBOutlet weak var startStopButton: UIButton!
    @IBOutlet weak var lapResetButton: UIButton!
    
    
    @IBAction func startStop(sender: AnyObject) {
        
        
        if startStopWatch == true {
            
            
            
            timer = NSTimer.scheduledTimerWithTimeInterval(0.01, target: self, selector: Selector( "updateStopWatch"), userInfo: nil, repeats: true)
            
            startStopWatch = false
            
            
            debugPrint("StartStop")
              startStopButton.setImage(UIImage(named: "stop"), forState: UIControlState.Normal)
            
              lapResetButton.setImage(UIImage(named:"lap"), forState: UIControlState.Normal)
            
              addLap = true
            
            
        }else{
            
            
         timer.invalidate()
        startStopWatch = true
            
            
            startStopButton.setImage(UIImage(named: "start"), forState: UIControlState.Normal)
            
            lapResetButton.setImage(UIImage(named:"reset"), forState: UIControlState.Normal)
            
            addLap = false

            
            
        }
        
        
        
    }
    
    
    @IBAction func lapReset(sender: AnyObject) {
        
        
    }
    
    
    func updateStopWatch() {
    
        fractions += 1
        
        if fractions == 100{
            
           seconds += 1
            fractions = 0
            
            
            
        }
        
        
        if seconds == 60{
            
           minutes  += 1
            seconds = 0
            
            
        }
        
        
        
        let fractionString  = fractions > 9 ? "\(fractions)" : "0\(fractions)"
        let secondString = seconds > 9 ? "\(seconds)" : "0\(seconds)"
        let minuteString = minutes > 9 ? "\(minutes)" : "0\(minutes)"
        
        stopWatchString = "\(minuteString) : \(secondString). \(fractionString)"
        
        stopWatchLabel.text = stopWatchString
        
        
        
    
    }
    
    
    
    // Table View Methods
    
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        let cell = UITableViewCell(style: UITableViewCellStyle.Value1, reuseIdentifier: "Cell")
        
        // Configure the cell
        
        return  cell

    }
    
    
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return  laps.count
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()

        
        stopWatchLabel.text = "00:00.00"
        lapsTableView.delegate = self
        lapsTableView.dataSource = self
        
        
        
        
            }

    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    
    }


}

