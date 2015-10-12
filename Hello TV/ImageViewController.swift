//
//  ImageViewController.swift
//  Hello TV
//
//  Created by Sudeep Yegnashankaran on 10/11/15.
//  Copyright © 2015 Sudeep Yegnashankaran. All rights reserved.
//

import UIKit

class ImageViewController : UIViewController {
    
    let image: UIImage?
    @IBOutlet weak var imageView: UIImageView? = nil
    
    init(image: UIImage) {
        self.image = image
        
        super.init(nibName: nil, bundle: nil)
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.imageView?.image = self.image
    }
}
