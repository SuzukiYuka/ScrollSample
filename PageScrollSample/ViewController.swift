//
//  ViewController.swift
//  PageScrollSample
//
//  Created by nagata on 1/31/16.
//  Copyright © 2016 nagata. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var scrollView: UIScrollView!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        scrollView.pagingEnabled = true
        scrollView.showsHorizontalScrollIndicator = false
        scrollView.showsVerticalScrollIndicator = false
        scrollView.decelerationRate = UIScrollViewDecelerationRateFast
        let contentView = UIView(frame: CGRectMake(0,0,self.scrollView.frame.width*3,self.scrollView.frame.height))
        scrollView.contentSize = contentView.frame.size
        
        for i in 0..<3
        {
            let view = UIView(frame: CGRectMake(scrollView.frame.width*CGFloat(i), 0, self.scrollView.frame.width,self.scrollView.frame.height))
            let button = UIButton(frame: CGRectMake(0, 0, scrollView.frame.width, scrollView.frame.height))
            button.setTitle(String(i), forState: .Normal)
            button.backgroundColor = UIColor.blackColor()
            view.addSubview(button)
            contentView.addSubview(view)
        }
        scrollView.addSubview(contentView)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

