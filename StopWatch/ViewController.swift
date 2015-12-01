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
        
        
        
    }
    
    
    @IBAction func lapReset(sender: AnyObject) {
        
        
    }
    
    
    func updateStopWatch(){
    
    
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

        
        
        
            }

    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    
    }


}

