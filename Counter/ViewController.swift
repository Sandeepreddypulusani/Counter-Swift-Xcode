//
//  ViewController.swift
//  Counter
//
//  Created by Sandeep Reddy Pulusani on 2020-02-04.
//  Copyright © 2020 Sandeep Reddy Pulusani. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var CountingLabel: UILabel!
    @IBOutlet weak var button: UIButton!
    
    var timer:Timer = Timer()
    var a:Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func startCounter(_ sender: Any) {
        
        timer = Timer.scheduledTimer(timeInterval: 0.1, target: self, selector: #selector(counter), userInfo: nil, repeats: true)
    }
    
    @IBAction func stopCounter(_ sender: Any) {
        
        timer.invalidate()
    }
    
    
    @IBAction func resetCounter(_ sender: Any) {
        
        timer.invalidate()
        a = 0
        CountingLabel.text = String(a)
    }
    
    @objc func counter() -> Void {
        a+=2
        CountingLabel.text = String(a)
    }
    
}

