//
//  ViewController.swift
//  IOS-Swift-LongPressGesture
//
//  Created by Pooya on 2018-08-22.
//  Copyright © 2018 Pooya. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var longView: UIButton!
    var longGesture = UILongPressGestureRecognizer()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // LongPress Gesture
        longGesture = UILongPressGestureRecognizer(target: self, action: #selector(ViewController.longPress(_:)))
        longGesture.minimumPressDuration = 1
        longView.addGestureRecognizer(longGesture)
    }
    
    @objc func longPress(_ sender: UILongPressGestureRecognizer) {
        let alertC = UIAlertController(title: "Long Press", message: "Long press gesture called when you press on view of 1 second duration.", preferredStyle: UIAlertControllerStyle.alert)
        let ok = UIAlertAction(title: "OK", style: UIAlertActionStyle.default) { (alert) in
        }
        alertC.addAction(ok)
        self.present(alertC, animated: true, completion: nil)
    }




}

