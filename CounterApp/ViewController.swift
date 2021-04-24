//
//  ViewController.swift
//  CounterApp
//
//  Created by Jameka Echols on 2/22/21.
//

import UIKit

class ViewController: UIViewController {
    var count: Int = 0;
    @IBOutlet var label: UILabel?;
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        
        // with out storyboard
        let label = UILabel()
        label.frame = CGRect(x: 150, y: 150, width: 60, height: 60)
        label.text = "0"
        view.addSubview(label)
        
        
        self.label = label;
        let button = UIButton()
        button.frame = CGRect(x: 150, y: 250, width: 60, height: 60)
        button.setTitle("Click", for: .normal)
        button.setTitleColor(UIColor.blue, for: .normal)
        view.addSubview(button)
        button.addTarget(self, action: #selector(ViewController.incrementCount), for: UIControl.Event.touchUpInside)
        

    }
    @IBAction func incrementCount(){
        self.count += 1
        self.label?.text = "\(self.count)"
    }

}

