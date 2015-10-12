//
//  Helpers.swift
//  Hello TV
//
//  Created by Sudeep Yegnashankaran on 10/11/15.
//  Copyright © 2015 Sudeep Yegnashankaran. All rights reserved.
//

import UIKit

private class CustomButton : UIBarButtonItem {
    let viewController: UIViewController?
    
    init(viewController: UIViewController) {
        self.viewController = viewController
        
        super.init()
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func dismiss() {
        viewController?.dismissViewControllerAnimated(true, completion: nil)
    }
}

func addDismiss(viewController: UIViewController) -> UIViewController {
    let dismissButton = CustomButton(viewController: viewController)
    dismissButton.style = .Done
    dismissButton.target = dismissButton
    dismissButton.action = Selector("dismiss")
    viewController.navigationItem.rightBarButtonItem = dismissButton
    return viewController
}

infix operator ==> { associativity left precedence 160 }

func ==><T, U>(t: T, f: T -> U) -> U {
    return f(t)
}
