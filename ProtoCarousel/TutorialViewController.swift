//
//  TutorialViewController.swift
//  ProtoCarousel
//
//  Created by Jonathan Chen on 5/30/16.
//  Copyright © 2016 Chenlo Park. All rights reserved.
//

import UIKit

class TutorialViewController: UIViewController, UIScrollViewDelegate {

    @IBOutlet weak var pageControl: UIPageControl!
    @IBOutlet weak var scrollView: UIScrollView!
    @IBOutlet weak var button: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        scrollView.contentSize = CGSize(width: 1280, height: 568)
        scrollView.delegate = self
        pageControl.numberOfPages = 4
        button.alpha = 0
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func scrollViewDidEndDecelerating(scrollView: UIScrollView) {
        // Get the current page based on the scroll offset
        let page : Int = Int(round(scrollView.contentOffset.x / 320))
        
        // Set the current page, so the dots will update
        pageControl.currentPage = page
        
        if page == 3 {
            pageControl.hidden = true
            UIView.animateWithDuration(0.35) {
                self.button.alpha = 1
            }
        } else {
            self.pageControl.hidden = false
            UIView.animateWithDuration(0.35) {
                self.button.alpha = 0
            }
        }
    }

}
