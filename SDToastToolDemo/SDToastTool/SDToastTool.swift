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
    class func showPopupView(contentView:UIView){
        SDToastTool.showPopupView(contentView: contentView, dissmissWithBackgroundTouch: true)
    }
    
    /**
     通过VTPopupBaseView单例展示指定视图
     
     - parameter contenView:  需要展示的视图
     - parameter dissmissWithBackgroundTouch:  点击背景是否dismiss
     - returns:    Void
     */
    class func showPopupView(contentView:UIView,dissmissWithBackgroundTouch:Bool){
        let popupView = VTPopupBaseView.shared()
        popupView.showPopupView(contentView: contentView, dissmissWithBackgroundTouch: dissmissWithBackgroundTouch)
    }
    
    /**
     将VTPopupBaseView单例从window上移除
     - returns:    Void
     */
    class func dissmissPopupView(){
        let popupView = VTPopupBaseView.shared()
        popupView.removePopupView()
    }

}
