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
//        let alert = UIAlertController(
//            title: "Hey!",
//            message: "I'm on TV!",
//            preferredStyle: .Alert
//        )
//        alert.addAction(
//            UIAlertAction(
//                title: "YAY",
//                style: .Cancel,
//                handler: { _ in
//                    self.dismissViewControllerAnimated(true, completion: nil)
//            })
//        )
//        self.presentViewController(alert, animated: true, completion: nil)
        
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let imageViewController =
            (storyboard.instantiateViewControllerWithIdentifier("imageViewController") as! ImageViewController)
            .builder_setTitle("Hey, we're on TV!")
            .builder_setImage(UIImage(named: "family")!)
            ==> UINavigationController.init
        
        self.presentViewController(imageViewController, animated: true, completion: nil)
    }
}
