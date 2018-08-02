//
//  ViewController.swift
//  swift Fun
//
//  Created by waleed  on 7/20/18.
//  Copyright © 2018 waleed . All rights reserved.
//

import UIKit


class ViewController: UIViewController {
    @IBOutlet weak var uptexy: UITextField!
    var addition = true
    
    @IBOutlet weak var plusminuslabel: UILabel!
    @IBOutlet weak var pic: UIImageView!
    @IBOutlet weak var outputtxt: UITextField!
    @IBOutlet weak var downtext: UITextField!
    @IBOutlet weak var button2: UIButton!
    @IBOutlet weak var button: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    @IBAction func plusminus(_ sender: Any) {
        addition = !addition
        if addition {
            plusminuslabel.text = String("addition")
        } else {
             plusminuslabel.text = String("subtraction")
        }
    }
    @IBAction func tapped(_ sender: Any) {
        
        if addition {
        let sum = Int(uptexy.text!)! + Int(downtext.text!)!
        outputtxt.text = "this is \(uptexy.text!)+\(downtext.text!) = \(sum)"
        pic.image = #imageLiteral(resourceName: "wa.jpg")
        } else {
            let sum = Int(uptexy.text!)! - Int(downtext.text!)!
            outputtxt.text = "this is \(uptexy.text!)-\(downtext.text!) = \(sum)"
            pic.image = #imageLiteral(resourceName: "wa.jpg")
        }
        
        
    }
    
    @IBOutlet var tomtom: [UIButton]!
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

