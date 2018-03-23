//
//  CartAlertView.swift
//  SDOrderHD
//
//  Created by 朱晓峰 on 2017/11/20.
//  Copyright © 2017年 叶木兰. All rights reserved.
//

import UIKit

class CartAlertView: UIView {

    class func sharedInstance() -> CartAlertView {
        let hintView = CartAlertView.loadFromXIB() as! CartAlertView
        let attributedString = NSMutableAttributedString.init(string: "确认是否提交订单\n\n（提交后商品不可更改!）")
        attributedString.addAttribute(NSAttributedStringKey.foregroundColor, value: UIColor.red, range: NSMakeRange(8, 14))
        hintView.nameLable.attributedText =  attributedString
        return hintView
    }
    @IBAction func canclebtn() {
//        GlobalInterface.dismissPresentingView(view: self)
    }
    
    @IBOutlet weak var cancleBtn: UIButton!
    @IBOutlet weak var surebtn: UIButton!
    @IBAction func sureBtn() {
        SDToastTool.dissmissPopupView()
    }
    @IBOutlet weak var nameLable: UILabel!
}
