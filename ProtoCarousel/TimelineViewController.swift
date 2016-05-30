//
//  TimelineViewController.swift
//  ProtoCarousel
//
//  Created by Jonathan Chen on 5/30/16.
//  Copyright © 2016 Chenlo Park. All rights reserved.
//

import UIKit

class TimelineViewController: UIViewController {

    @IBOutlet weak var timelineScrollView: UIScrollView!
    @IBOutlet weak var timelineImage: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        timelineScrollView.contentSize = timelineImage.image!.size
        timelineScrollView.contentInset.bottom = 40
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
