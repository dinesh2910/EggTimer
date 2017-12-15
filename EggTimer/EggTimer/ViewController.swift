//
//  ViewController.swift
//  EggTimer
//
//  Created by dinesh danda on 1/13/17.
//  Copyright © 2017 dinesh danda. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var timer = Timer()
    var time = 210
    
    func decreasefunction(){
        if time > 0{
            time -= 1
            resultlabel.text = String(time)
        } else {
            timer.invalidate()
        }
        }
    
    @IBOutlet weak var resultlabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }

    @IBAction func stopbtn(_ sender: Any) {
        timer.invalidate()
    }

    @IBAction func playbtn(_ sender: Any) {
        timer = Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(ViewController.decreasefunction), userInfo: nil, repeats: true)
        
    }
    @IBAction func plustenbtn(_ sender: Any) {
        time += 10
        resultlabel.text = String(time)
                }
    
    @IBAction func minustenbtn(_ sender: Any) {
        if time > 10 {
            time -= 10
            resultlabel.text = String(time)
        }
    func resetbtn(_ sender: Any) {
        time = 210
        resultlabel.text = String(time)
    }
    
    }
}

