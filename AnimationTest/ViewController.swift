//
//  ViewController.swift
//  AnimationTest
//
//  Created by YAMAMOTOHIROKI on 2017/08/01.
//  Copyright © 2017年 YAMAMOTOHIROKI. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func tapButton(_ sender: Any) {
        let secondVC = storyboard?.instantiateViewController(withIdentifier: "second")
        let parentVC = navigationController!
        parentVC.addChildViewController(secondVC!)
        parentVC.view.addSubview(secondVC!.view)
        secondVC?.didMove(toParentViewController: parentVC)
        UIView.transition(from: parentVC.view,
                          to: secondVC!.view,
                          duration: 5,
                          options: .transitionFlipFromLeft,
                          completion: nil)
    }

}

