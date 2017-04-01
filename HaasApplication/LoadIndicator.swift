//
//  LoadIndicator.swift
//  HaasApplication
//
//  Created by 松下航平 on 2017/03/30.
//  Copyright © 2017年 TRICK RING. All rights reserved.
//

import UIKit

struct LoadIndicator {
    
    static var activityIndicator: UIActivityIndicatorView!
    
    static func set(v : UIViewController){
        self.activityIndicator = UIActivityIndicatorView()
        self.activityIndicator.frame = CGRect(x: 0, y: 0, width: 50, height: 50)
        self.activityIndicator.center = v.view.center
        self.activityIndicator.hidesWhenStopped = false
        self.activityIndicator.activityIndicatorViewStyle = UIActivityIndicatorViewStyle.white
        self.activityIndicator.backgroundColor = UIColor.gray;
        self.activityIndicator.layer.masksToBounds = true
        self.activityIndicator.layer.cornerRadius = 5.0;
        self.activityIndicator.layer.opacity = 0.8;
        v.view.addSubview(self.activityIndicator);
        
        self.off();
    }
    
    static func on(){
        activityIndicator.startAnimating();
        activityIndicator.isHidden = false;
    }
    
    static func off(){
        activityIndicator.stopAnimating();
        activityIndicator.isHidden = true;
    }
    
}
