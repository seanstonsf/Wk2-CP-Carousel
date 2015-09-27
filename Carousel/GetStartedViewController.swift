//
//  GetStartedViewController.swift
//  Carousel
//
//  Created by Sean Smith on 9/26/15.
//  Copyright © 2015 Sean Smith. All rights reserved.
//

import UIKit

class GetStartedViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func didPressCloseButton(sender: AnyObject) {
        dismissViewControllerAnimated(true, completion: nil)
    }


}
