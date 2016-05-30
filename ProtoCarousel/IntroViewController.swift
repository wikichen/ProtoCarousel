//
//  IntroViewController.swift
//  ProtoCarousel
//
//  Created by Jonathan Chen on 5/28/16.
//  Copyright © 2016 Chenlo Park. All rights reserved.
//

import UIKit

class IntroViewController: UIViewController, UIScrollViewDelegate {

    @IBOutlet weak var introScrollView: UIScrollView!
    @IBOutlet weak var introImageView: UIImageView!
    
    @IBOutlet weak var tile1ImageView: UIImageView!
    @IBOutlet weak var tile2ImageView: UIImageView!
    @IBOutlet weak var tile3ImageView: UIImageView!
    @IBOutlet weak var tile4ImageView: UIImageView!
    @IBOutlet weak var tile5ImageView: UIImageView!
    @IBOutlet weak var tile6ImageView: UIImageView!
    
    var yOffsets : [CGFloat] = [-300, -270, -430, -408, -520, -510]
    var xOffsets : [CGFloat] = [-60, 40, 10, 90, -100, -80]
    var scales : [CGFloat] = [1, 1.65, 1.7, 1.6, 1.7, 1.6]
    var rotations : [CGFloat] = [-10, -10, 10, 10, 10, -10]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        introScrollView.contentSize = introImageView.image!.size
        introScrollView.delegate = self
        
        introScrollView.sendSubviewToBack(introImageView)

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func transformView(view: UIView!, atIndex index:Int, offset:Float) {
        
    }
    

    func scrollViewDidScroll(scrollView: UIScrollView) {
        // This method is called as the user scrolls
        
        // content offset 0 -> 568
        // x offset: -30 -> 0
        // y offset: -285 -> 0
        let offset = CGFloat(scrollView.contentOffset.y)
        var scale :    CGFloat,
            tx    :    CGFloat,
            ty    :    CGFloat,
            rotation : CGFloat
        
        // Tile 1
        scale = convertValue(offset, r1Min: 0, r1Max: 568, r2Min: scales[0], r2Max: 1)
        tx = convertValue(offset, r1Min: 0, r1Max: 568, r2Min: xOffsets[0], r2Max: 0)
        ty = convertValue((offset), r1Min: 0, r1Max: 568, r2Min: yOffsets[0], r2Max: 0)
        rotation = convertValue(offset, r1Min: 0, r1Max: 568, r2Min: rotations[0], r2Max: 0)
        
        tile1ImageView.transform = CGAffineTransformMakeTranslation(tx, ty)
        tile1ImageView.transform = CGAffineTransformScale(tile1ImageView.transform, scale, scale)
        tile1ImageView.transform = CGAffineTransformRotate(tile1ImageView.transform, CGFloat(Double(rotation) * M_PI / 180))
        
        // Tile 2
        scale = convertValue(offset, r1Min: 0, r1Max: 568, r2Min: scales[1], r2Max: 1)
        tx = convertValue(offset, r1Min: 0, r1Max: 568, r2Min: xOffsets[1], r2Max: 0)
        ty = convertValue((offset), r1Min: 0, r1Max: 568, r2Min: yOffsets[1], r2Max: 0)
        rotation = convertValue(offset, r1Min: 0, r1Max: 568, r2Min: rotations[1], r2Max: 0)
        
        tile2ImageView.transform = CGAffineTransformMakeTranslation(tx, ty)
        tile2ImageView.transform = CGAffineTransformScale(tile2ImageView.transform, scale, scale)
        tile2ImageView.transform = CGAffineTransformRotate(tile2ImageView.transform, CGFloat(Double(rotation) * M_PI / 180))
        
        // Tile 3
        scale = convertValue(offset, r1Min: 0, r1Max: 568, r2Min: scales[2], r2Max: 1)
        tx = convertValue(offset, r1Min: 0, r1Max: 568, r2Min: xOffsets[2], r2Max: 0)
        ty = convertValue((offset), r1Min: 0, r1Max: 568, r2Min: yOffsets[2], r2Max: 0)
        rotation = convertValue(offset, r1Min: 0, r1Max: 568, r2Min: rotations[2], r2Max: 0)
        
        tile3ImageView.transform = CGAffineTransformMakeTranslation(tx, ty)
        tile3ImageView.transform = CGAffineTransformScale(tile3ImageView.transform, scale, scale)
        tile3ImageView.transform = CGAffineTransformRotate(tile3ImageView.transform, CGFloat(Double(rotation) * M_PI / 180))
        
        // Tile 4
        scale = convertValue(offset, r1Min: 0, r1Max: 568, r2Min: scales[3], r2Max: 1)
        tx = convertValue(offset, r1Min: 0, r1Max: 568, r2Min: xOffsets[3], r2Max: 0)
        ty = convertValue((offset), r1Min: 0, r1Max: 568, r2Min: yOffsets[3], r2Max: 0)
        rotation = convertValue(offset, r1Min: 0, r1Max: 568, r2Min: rotations[3], r2Max: 0)
        
        tile4ImageView.transform = CGAffineTransformMakeTranslation(tx, ty)
        tile4ImageView.transform = CGAffineTransformScale(tile4ImageView.transform, scale, scale)
        tile4ImageView.transform = CGAffineTransformRotate(tile4ImageView.transform, CGFloat(Double(rotation) * M_PI / 180))
        
        // Tile 5
        scale = convertValue(offset, r1Min: 0, r1Max: 568, r2Min: scales[4], r2Max: 1)
        tx = convertValue(offset, r1Min: 0, r1Max: 568, r2Min: xOffsets[4], r2Max: 0)
        ty = convertValue((offset), r1Min: 0, r1Max: 568, r2Min: yOffsets[4], r2Max: 0)
        rotation = convertValue(offset, r1Min: 0, r1Max: 568, r2Min: rotations[4], r2Max: 0)
        
        tile5ImageView.transform = CGAffineTransformMakeTranslation(tx, ty)
        tile5ImageView.transform = CGAffineTransformScale(tile5ImageView.transform, scale, scale)
        tile5ImageView.transform = CGAffineTransformRotate(tile5ImageView.transform, CGFloat(Double(rotation) * M_PI / 180))
        
        // Tile 6
        scale = convertValue(offset, r1Min: 0, r1Max: 568, r2Min: scales[5], r2Max: 1)
        tx = convertValue(offset, r1Min: 0, r1Max: 568, r2Min: xOffsets[5], r2Max: 0)
        ty = convertValue((offset), r1Min: 0, r1Max: 568, r2Min: yOffsets[5], r2Max: 0)
        rotation = convertValue(offset, r1Min: 0, r1Max: 568, r2Min: rotations[5], r2Max: 0)
        
        tile6ImageView.transform = CGAffineTransformMakeTranslation(tx, ty)
        tile6ImageView.transform = CGAffineTransformScale(tile6ImageView.transform, scale, scale)
        tile6ImageView.transform = CGAffineTransformRotate(tile6ImageView.transform, CGFloat(Double(rotation) * M_PI / 180))
        
    }
    
    func scrollViewWillBeginDragging(scrollView: UIScrollView) {
        
    }
    
    func scrollViewDidEndDragging(scrollView: UIScrollView,
                                  willDecelerate decelerate: Bool) {
        // This method is called right as the user lifts their finger
    }
    
    func scrollViewDidEndDecelerating(scrollView: UIScrollView) {
        // This method is called when the scrollview finally stops scrolling.
    }
    

}
