//
//  ViewController.swift
//  Hello TV
//
//  Created by Sudeep Yegnashankaran on 10/11/15.
//  Copyright © 2015 Sudeep Yegnashankaran. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBAction func didTapButton() {
        let alert = UIAlertController(
            title: "Hey!",
            message: "I'm on TV!",
            preferredStyle: .Alert
        )
        alert.addAction(
            UIAlertAction(
                title: "YAY",
                style: .Cancel,
                handler: { _ in
                    self.dismissViewControllerAnimated(true, completion: nil)
            })
        )
        self.presentViewController(alert, animated: true, completion: nil)
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

