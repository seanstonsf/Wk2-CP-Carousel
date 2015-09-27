//
//  FeedViewController.swift
//  Carousel
//
//  Created by Sean Smith on 9/26/15.
//  Copyright © 2015 Sean Smith. All rights reserved.
//

import UIKit

class FeedViewController: UIViewController {
    @IBOutlet weak var feedScrollView: UIScrollView!
    @IBOutlet weak var feedImageView: UIImageView!
    @IBOutlet weak var bannerContainerView: UIView!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        feedScrollView.contentSize = CGSize(width: 320, height: 1608)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func closeLearnButton(sender: AnyObject) {
        delay(0.3){
                UIView.animateWithDuration(0.3) { () -> Void in
                    self.feedImageView.transform = CGAffineTransformMakeTranslation(CGFloat(0), CGFloat(-44))
                }
        delay(0.6) {
            UIView.animateWithDuration(0.1) { () -> Void in
                self.bannerContainerView.alpha = 0.0
                self.feedScrollView.contentSize = CGSize(width: 320, height: 1564)
            }
        }
        }
    }



}
