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
        btnOK?.backgroundColor = UIColor(colorLiteralRed: 1, green: 1, blue: 0, alpha: 1)
        view.addSubview(btnOK!)
        
        btnOK?.addTarget(self, action: #selector(clickBtnOk), for: UIControlEvents.touchUpInside)
        btnOK?.addTarget(self, action: #selector(clickBtnOk2), for: UIControlEvents.touchDown)
        
        
        switch traitCollection.userInterfaceIdiom {
        case .pad:
            print("pad")
        case .phone:
            print("phone")
                default:
            break
        }
    }
    
    @objc private func clickBtnOk(sender: UIButton) {
        print("click Up")
    }
    @objc private func clickBtnOk2(sender: UIButton) {
        print("click Down")
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

