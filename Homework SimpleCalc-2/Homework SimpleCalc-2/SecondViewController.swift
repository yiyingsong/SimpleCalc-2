//
//  SecondViewController.swift
//  Homework SimpleCalc-2
//
//  Created by apple on 4/23/16.
//  Copyright © 2016 Sophie. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    
    @IBOutlet weak var scroll: UIScrollView!
    
    var receivedArray : [String] = [];
    
    @IBOutlet var labels: [UILabel]!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        /*for n in 0 ... receivedArray.count - 1 {
            let line = UILabel()
            line.text = receivedArray[n]
            print(line)
            self.scroll.addSubview(line)
        }*/
        
        var historyCount: Int = receivedArray.count - 1
        
        for n in 0...historyCount {
            labels[n].text = "\(receivedArray[historyCount])"
            historyCount = historyCount - 1
        }
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
