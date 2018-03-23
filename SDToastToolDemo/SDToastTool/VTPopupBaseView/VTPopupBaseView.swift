//
//  VTPopupBaseView.swift
//  SDToastToolDemo
//
//  Created by pangxiang on 3/22/18.
//  Copyright © 2018 pangxiang. All rights reserved.
//

import UIKit
class VTPopupBaseView: UIView {
    
    private static let instance = VTPopupBaseView.init(frame: UIScreen.main.bounds)
    private var contentView: UIView!
    private var backgroundView: UIView!
    private var dissMissWithBackgroudTouch:Bool!
    
    private override init(frame: CGRect) {
        super.init(frame: frame)
        self.isUserInteractionEnabled = true
        self.backgroundColor = UIColor.clear
        
        dissMissWithBackgroudTouch = true
        backgroundView = UIView.init(frame: frame)
        backgroundView.isUserInteractionEnabled = false
        backgroundView.backgroundColor = UIColor.init(red: 0.0/255.0, green: 0.0/255.0, blue: 0.0/255.0, alpha: 0.5)
        
        self.addSubview(backgroundView)
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK: - Class Public
    ///获取单例
    class func shared() -> VTPopupBaseView{
        return instance
    }
        
    // MARK: - Class Private
    func showPopupView(contentView:UIView,dissmissWithBackgroundTouch:Bool){
        self.contentView = contentView
        self.dissMissWithBackgroudTouch = dissmissWithBackgroundTouch
        let mainQueue = DispatchQueue.main
        mainQueue.async {
            if self.superview == nil{
                let reverseWindows = UIApplication.shared.windows.reversed()
                for window in reverseWindows{
                    if window.windowLevel == UIWindowLevelNormal{
                        window.addSubview(self)
                        break
                    }
                }
            }
            if contentView.superview != self{
                contentView.center = self.backgroundView.center
                self.addSubview(contentView)
            }
        }
        
    }
    func removePopupView(){
        let mainQueue = DispatchQueue.main
        mainQueue.async {
            if self.contentView != nil{
                self.contentView.removeFromSuperview()
            }
            self.removeFromSuperview()
            self.dissMissWithBackgroudTouch = true
        }
    }
    
    // MARK: - UIView
    override func hitTest(_ point: CGPoint, with event: UIEvent?) -> UIView? {
        let view = super.hitTest(point, with: event)
        if view == self {
            if dissMissWithBackgroudTouch{
                self.removePopupView()
            }
        }
           return view
    }
}

