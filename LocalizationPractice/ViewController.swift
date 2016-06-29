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
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func pressedTestButton(sender: AnyObject) {
        let varInsert = "1"
        mainBodyText.text = String.localizedStringWithFormat(NSLocalizedString("This is a hard coded string in %@", comment: "Hard coded string with variable"), varInsert)
        testButton.setTitle(NSLocalizedString("Button Was Pressed", comment: "Label on the button"), forState: .Normal)
    }

}

