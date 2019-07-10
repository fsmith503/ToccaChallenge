//
//  profileViewController.swift
//  ToccaChallenge
//
//  Created by  Franklin Smith on 7/10/19.
//  Copyright © 2019  Franklin Smith. All rights reserved.
//

import Foundation
import UIKit

class profileViewController: UIViewController {
    
    
    @IBOutlet var imageButton: UIButton!
    @IBOutlet var plusButton: UIButton!
    @IBOutlet var shareButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //imageButton.layer.cornerRadius = imageButton.bounds.size.height/2
        //self.view.addSubview(HorizontalView(frame: self.view.bounds))
          imageButton.layer.cornerRadius = 10.0
          //plusButton.layer.cornerRadius = 10.0
          //shareButton.layer.cornerRadius = 10.0
        plusButton.layer.cornerRadius = plusButton.bounds.size.width/2;
        shareButton.layer.cornerRadius = shareButton.bounds.size.width/2;
        // Do any additional setup after loading the view.
         //self.view.addSubview(HorizontalView(frame: self.view.bounds))
    }
    
    
    class HorizontalView: UIView {
        override func draw(_ rect: CGRect) {
            super.draw(rect)
            
            let topRect = CGRect(x: 0, y: 0, width: rect.size.height/2, height: rect.size.width)
            UIColor.red.set()
            guard let topContext = UIGraphicsGetCurrentContext() else { return }
            topContext.fill(topRect)
            
            let bottomRect = CGRect(x: rect.size.height/2, y: 0, width: rect.size.height/2, height: rect.size.height)
            UIColor.green.set()
            guard let bottomContext = UIGraphicsGetCurrentContext() else { return }
            bottomContext.fill(bottomRect)
        }
    }
    
}
