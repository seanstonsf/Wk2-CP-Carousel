//
//  SettingsViewController.swift
//  Carousel
//
//  Created by Sean Smith on 9/26/15.
//  Copyright © 2015 Sean Smith. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController {

//    @IBOutlet weak var settingsScrollView: UIScrollView!
    @IBOutlet weak var settingsImageView: UIImageView!
    @IBOutlet weak var settingsScrollView: UIScrollView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

//        settingsScrollView.contentSize = settingsImageView.image!.size
        settingsScrollView.contentSize = CGSize(width: 320, height: 760)

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func SettingsBackNavButton(sender: AnyObject) {
        dismissViewControllerAnimated(true, completion: nil)

    }

}
