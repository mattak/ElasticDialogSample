//
//  ViewController.swift
//  DialogSample
//
//  Created by mattak on 2015/06/03.
//  Copyright (c) 2015年 mattak. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var innerContentView: UIView!
    private var touched: Bool = false
    private var constraint = NSLayoutConstraint()

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    @IBAction func buttonDidTouchUped(sender: AnyObject) {
        touched = !touched
        let ratio = touched ? CGFloat(2.0) : CGFloat(3.0)
        updateConstraint(ratio)
    }

    func updateConstraint(ratio: CGFloat) {
        innerContentView.removeConstraint(constraint)
        constraint = NSLayoutConstraint(
            item: innerContentView,
            attribute: NSLayoutAttribute.Height,
            relatedBy: NSLayoutRelation.Equal,
            toItem: innerContentView,
            attribute: NSLayoutAttribute.Width,
            multiplier: ratio,
            constant: CGFloat(0.0)
        )
        constraint.priority = 501
        innerContentView.addConstraints([ constraint ])
        innerContentView.updateConstraints()
    }
}

