//
//  WelcomeViewController.swift
//  Carousel
//
//  Created by Sean Smith on 9/26/15.
//  Copyright © 2015 Sean Smith. All rights reserved.
//

import UIKit

class WelcomeViewController: UIViewController, UIScrollViewDelegate {

    @IBOutlet weak var welcomeScrollView: UIScrollView!
    @IBOutlet weak var pageControl: UIPageControl!
    @IBOutlet weak var backupButtonImageView: UIImageView!
    @IBOutlet weak var backupButtonContainer: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        welcomeScrollView.contentSize = CGSize(width: 1280, height: 568)
        welcomeScrollView.delegate = self

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func scrollViewDidEndDecelerating(scrollView: UIScrollView) {
        let page : Int = Int(round(scrollView.contentOffset.x / 320))
        pageControl.currentPage = page
//        print(page)
        
        if pageControl.currentPage == 3{
            delay(0.3) {
//                print("ALPHA")
                UIView.animateWithDuration(0.3) { () -> Void in
                    self.pageControl.alpha = 0.0
                    self.backupButtonContainer.alpha = 1.0
                }
            }
        } else {
            delay(0.3) {
//                print("Transparent")
                UIView.animateWithDuration(0.3) { () -> Void in
                    self.pageControl.alpha = 1.0
                    self.backupButtonContainer.alpha = 0.0
                }
            }
        }
    }

    
}
