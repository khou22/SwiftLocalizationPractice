//
//  ViewController.swift
//  LocalizationPractice
//
//  Created by Kevin Hou on 6/14/16.
//  Copyright © 2016 KevinHou. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var mainBodyText: UILabel!
    @IBOutlet var titleLabel: UILabel!
    @IBOutlet var testButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        mainBodyText.numberOfLines = 0 // Set number of lines to 0 for word wrap
        testButton.setTitle(NSLocalizedString("Button", comment: "Label on the button"), forState: .Normal)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func pressedTestButton(sender: AnyObject) {
        mainBodyText.text = NSLocalizedString("This is a hard coded string in English", comment: "This is a test for a hard coded string")
        testButton.setTitle(NSLocalizedString("Button Was Pressed", comment: "Label on the button"), forState: .Normal)
    }

}

