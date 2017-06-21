//
//  ViewController.swift
//  MyApp06
//
//  Created by iii on 2017/6/21.
//  Copyright © 2017年 iii. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    private var btnOK:UIButton?

    override func viewDidLoad() {
        super.viewDidLoad()
     
        btnOK = UIButton(type: UIButtonType.system)
        btnOK?.frame = CGRect(x: 0, y: 20, width: 40, height: 40)
        btnOK?.setTitle("OK", for: UIControlState.normal)
        view.addSubview(btnOK!)
        
        switch traitCollection.userInterfaceIdiom {
        case .pad:
            print("pad")
        case .phone:
            print("phone")
                default:
            break
        }
    }
    override func viewWillTransition(to size: CGSize, with coordinator: UIViewControllerTransitionCoordinator) {
        super.viewWillTransition(to: size, with: coordinator)
        
        switch UIDevice.current.orientation {
        case .faceUp:
            print("faceup")
        case.faceDown:
            print("facedown")
        case .landscapeLeft:
            print("Home -> ")
        case .landscapeRight:
            print("<- Home ")
        case .portrait:
            print("normal")
        case.portraitUpsideDown:
            print("normal 顛倒")
        default:
            break
        }
        print("size => w = \(size.width), h = \(size.height)")
    }
 
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

