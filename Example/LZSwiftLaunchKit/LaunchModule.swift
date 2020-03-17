//
//  LaunchModule.swift
//  LZSwiftLaunchKit_Example
//
//  Created by Sun Moon on 2020/3/17.
//  Copyright © 2020 CocoaPods. All rights reserved.
//

import UIKit
import LZSwiftAppDelegateKit

class LaunchModule: LZBaseModule {
    override init() {
        super.init()
        NotificationCenter.default.addObserver(self, selector: #selector(observerLaunchFinish), name: NSNotification.Name.UIApplicationDidFinishLaunching, object: nil)
    }
    
    @objc func observerLaunchFinish() {
        if let window = UIApplication.shared.delegate?.window.unsafelyUnwrapped {
            window.addSubview(launchView)
        }
    }
    
    lazy var launchView: UIView = {
        let v = UIView.init(frame: UIScreen.main.bounds)
        v.backgroundColor = .red
        return v
    }()
}
