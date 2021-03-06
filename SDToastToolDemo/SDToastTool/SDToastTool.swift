//
//  SDToastTool.swift
//  SDToastToolDemo
//
//  Created by pangxiang on 3/23/18.
//  Copyright © 2018 pangxiang. All rights reserved.
//

import UIKit
class SDToastTool: NSObject {
    /**
     通过VTPopupBaseView单例展示指定视图
     
     - parameter contenView:  需要展示的视图
     - returns:    Void
     */
    class func showPopupView(withContentView contentView:UIView){
        SDToastTool.showPopupView(withContentView: contentView, andDissmissWithBackgroundTouch: true)
    }
    
    /**
     通过VTPopupBaseView单例展示指定视图
     
     - parameter contenView:  需要展示的视图
     - parameter dissmissWithBackgroundTouch:  点击背景是否dismiss
     - returns:    Void
     */
    class func showPopupView(withContentView contentView:UIView,andDissmissWithBackgroundTouch bgTouchDismiss:Bool){
        let popupView = VTPopupBaseView.shared()
        popupView.showPopupView(contentView: contentView, bgTouchDismiss: bgTouchDismiss)
    }
    
    /**
     将VTPopupBaseView单例从window上移除
     - returns:    Void
     */
    class func dissmissPopupView(){
        SDToastTool.dissmissWithCallback(callback: nil)
    }
    
    /**
     将VTPopupBaseView单例从window上移除
     - returns:    Void
     */
    class func dissmissWithCallback(callback:ClearClosure?){
        let popupView = VTPopupBaseView.shared()
        popupView.dismissPopupView(withCallback: callback)
        
    }


}
