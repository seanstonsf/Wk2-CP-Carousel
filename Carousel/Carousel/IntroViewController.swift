//
//  IntroViewController.swift
//  Carousel
//
//  Created by Sean Smith on 9/23/15.
//  Copyright © 2015 Sean Smith. All rights reserved.
//

import UIKit

class IntroViewController: UIViewController, UIScrollViewDelegate {

    @IBOutlet weak var IntroScrollView: UIScrollView!
    @IBOutlet weak var introImageView: UIImageView!
    
    @IBOutlet weak var tile1View: UIImageView!
    @IBOutlet weak var tile2View: UIImageView!
    @IBOutlet weak var tile3View: UIImageView!
    @IBOutlet weak var tile4View: UIImageView!
    @IBOutlet weak var tile5View: UIImageView!
    @IBOutlet weak var tile6View: UIImageView!
    
    
    var yOffsets : [Float] = [-285, -240, -415, -408, -480, -500]
    var xOffsets : [Float] = [-30, 75, -66, 10, -200, -15]
    var scales : [Float] = [1, 1.65, 1.7, 1.6, 1.65, 1.65]
    var rotations : [Float] = [-10, -10, 10, 10, 10, -10]
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        IntroScrollView.contentSize = introImageView.image!.size
        IntroScrollView.delegate = self
        
        IntroScrollView.sendSubviewToBack(introImageView)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func scrollViewDidScroll(scrollView: UIScrollView) {
        let offset = Float(IntroScrollView.contentOffset.y)
        
        // Tile 1
        let ty1 = convertValue(CGFloat(offset), r1Min: 0, r1Max: 568, r2Min: -310, r2Max: 0)
        let tx1 = convertValue(CGFloat(offset), r1Min: 0, r1Max: 568, r2Min: -70, r2Max: 0)
        let scale1 = convertValue(CGFloat(offset), r1Min: 0, r1Max: 568, r2Min: 1, r2Max: 1)
        let rotation1 = convertValue(CGFloat(offset), r1Min: 0, r1Max: 568, r2Min: -10, r2Max: 0)
        
        tile1View.transform = CGAffineTransformMakeTranslation(CGFloat(tx1), CGFloat(ty1))
        tile1View.transform = CGAffineTransformScale(tile1View.transform, CGFloat(scale1), CGFloat(scale1))
        tile1View.transform = CGAffineTransformRotate(tile1View.transform, CGFloat(Double(rotation1) * M_PI / 180))

        // Tile 2
        let ty2 = convertValue(CGFloat(offset), r1Min: 0, r1Max: 568, r2Min: -285, r2Max: 0)
        let tx2 = convertValue(CGFloat(offset), r1Min: 0, r1Max: 568, r2Min: 40, r2Max: 0)
        let scale2 = convertValue(CGFloat(offset), r1Min: 0, r1Max: 568, r2Min: 1.65, r2Max: 1)
        let rotation2 = convertValue(CGFloat(offset), r1Min: 0, r1Max: 568, r2Min: -10, r2Max: 0)
        
        tile2View.transform = CGAffineTransformMakeTranslation(CGFloat(tx2), CGFloat(ty2))
        tile2View.transform = CGAffineTransformScale(tile2View.transform, CGFloat(scale2), CGFloat(scale2))
        tile2View.transform = CGAffineTransformRotate(tile2View.transform, CGFloat(Double(rotation2) * M_PI / 180))

        
        // Tile 3
        let ty3 = convertValue(CGFloat(offset), r1Min: 0, r1Max: 568, r2Min: -435, r2Max: 0)
        let tx3 = convertValue(CGFloat(offset), r1Min: 0, r1Max: 568, r2Min: 00, r2Max: 0)
        let scale3 = convertValue(CGFloat(offset), r1Min: 0, r1Max: 568, r2Min: 1.7, r2Max: 1)
        let rotation3 = convertValue(CGFloat(offset), r1Min: 0, r1Max: 568, r2Min: 10, r2Max: 0)
        
        tile3View.transform = CGAffineTransformMakeTranslation(CGFloat(tx3), CGFloat(ty3))
        tile3View.transform = CGAffineTransformScale(tile3View.transform, CGFloat(scale3), CGFloat(scale3))
        tile3View.transform = CGAffineTransformRotate(tile3View.transform, CGFloat(Double(rotation3) * M_PI / 180))
        
        
        // Tile 4
        let ty4 = convertValue(CGFloat(offset), r1Min: 0, r1Max: 568, r2Min: -420, r2Max: 0)
        let tx4 = convertValue(CGFloat(offset), r1Min: 0, r1Max: 568, r2Min: 70, r2Max: 0)
        let scale4 = convertValue(CGFloat(offset), r1Min: 0, r1Max: 568, r2Min: 1.6, r2Max: 1)
        let rotation4 = convertValue(CGFloat(offset), r1Min: 0, r1Max: 568, r2Min: 10, r2Max: 0)
        
        tile4View.transform = CGAffineTransformMakeTranslation(CGFloat(tx4), CGFloat(ty4))
        tile4View.transform = CGAffineTransformScale(tile4View.transform, CGFloat(scale4), CGFloat(scale4))
        tile4View.transform = CGAffineTransformRotate(tile4View.transform, CGFloat(Double(rotation4) * M_PI / 180))

        
        // Tile 5
        let ty5 = convertValue(CGFloat(offset), r1Min: 0, r1Max: 568, r2Min: -510, r2Max: 0)
        let tx5 = convertValue(CGFloat(offset), r1Min: 0, r1Max: 568, r2Min: -125, r2Max: 0)
        let scale5 = convertValue(CGFloat(offset), r1Min: 0, r1Max: 568, r2Min: 1.65, r2Max: 1)
        let rotation5 = convertValue(CGFloat(offset), r1Min: 0, r1Max: 568, r2Min: 10, r2Max: 0)
        
        tile5View.transform = CGAffineTransformMakeTranslation(CGFloat(tx5), CGFloat(ty5))
        tile5View.transform = CGAffineTransformScale(tile5View.transform, CGFloat(scale5), CGFloat(scale5))
        tile5View.transform = CGAffineTransformRotate(tile5View.transform, CGFloat(Double(rotation5) * M_PI / 180))

 
        // Tile 6
        let ty6 = convertValue(CGFloat(offset), r1Min: 0, r1Max: 568, r2Min: -505, r2Max: 0)
        let tx6 = convertValue(CGFloat(offset), r1Min: 0, r1Max: 568, r2Min: -95, r2Max: 0)
        let scale6 = convertValue(CGFloat(offset), r1Min: 0, r1Max: 568, r2Min: 1.65, r2Max: 1)
        let rotation6 = convertValue(CGFloat(offset), r1Min: 0, r1Max: 568, r2Min: -10, r2Max: 0)
        
        tile6View.transform = CGAffineTransformMakeTranslation(CGFloat(tx6), CGFloat(ty6))
        tile6View.transform = CGAffineTransformScale(tile6View.transform, CGFloat(scale6), CGFloat(scale6))
        tile6View.transform = CGAffineTransformRotate(tile6View.transform, CGFloat(Double(rotation6) * M_PI / 180))

        
//        print("content offiset: \(IntroScrollView.contentOffset.y)")
        
    }

}
