//
//  ImageViewController.swift
//  Hello TV
//
//  Created by Sudeep Yegnashankaran on 10/11/15.
//  Copyright © 2015 Sudeep Yegnashankaran. All rights reserved.
//

import UIKit

class ImageViewController : UIViewController {
    
    var image: UIImage? = nil {
        didSet {
            self.imageView?.image = self.image
        }
    }
    @IBOutlet weak var imageView: UIImageView? = nil
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.imageView?.image = self.image
    }
    
    func builder_setTitle(title: String?) -> ImageViewController {
        self.title = title
        return self
    }
    
    func builder_setImage(image: UIImage?) -> ImageViewController {
        self.image = image
        return self
    }
}
