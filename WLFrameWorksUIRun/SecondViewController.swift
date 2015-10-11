//
//  SecondViewController.swift
//  WLFrameWorksUIRun
//
//  Created by Ronaldinho on 15/9/7.
//  Copyright (c) 2015年 HotWordLand. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController,CustomPopVCProtocol {
    var popV : CustomPopVC!
    override func viewDidLoad() {
        super.viewDidLoad()
//         toalert()
        initCustomPop()
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    func clickClose() {
        closeCustomPopVC()
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
/*
一个小技巧,如果我们有一系列的私有方法,我们可以把它们组织起来,放进一个extension里,这样就不需要每个方法都标记private,同时也便于管理组织代码：
// MARK: Private
private extension ViewController {
func privateFunction() {
}
}
*/
private extension SecondViewController
{
    func toalert(){
        UIAlertView(title: "提示", message: "私有方法", delegate:nil , cancelButtonTitle: "OK").show()
    }
    func initCustomPop(){
        if popV==nil{
           popV = UIStoryboard(name: "Main", bundle: NSBundle.mainBundle()).instantiateViewControllerWithIdentifier("CustomPopVC") as! CustomPopVC
            popV.delegate = self
        }
//        popV.view.setTranslatesAutoresizingMaskIntoConstraints(false)
        popV.view.translatesAutoresizingMaskIntoConstraints = false
        if popV.view.superview == nil{
            self.view.addSubview(popV.view)
        }
        self.view.addConstraints([NSLayoutConstraint(item: popV.view, attribute: NSLayoutAttribute.CenterX, relatedBy: NSLayoutRelation.Equal, toItem: self.view, attribute: NSLayoutAttribute.CenterX, multiplier: 1, constant: 0),NSLayoutConstraint(item: popV.view, attribute: NSLayoutAttribute.CenterY, relatedBy: NSLayoutRelation.Equal, toItem: self.view, attribute: NSLayoutAttribute.CenterY, multiplier: 1, constant: 0),NSLayoutConstraint(item: popV.view, attribute: NSLayoutAttribute.Width, relatedBy: NSLayoutRelation.Equal, toItem: nil, attribute: NSLayoutAttribute.Width, multiplier: 1, constant: 300),NSLayoutConstraint(item: popV.view, attribute: NSLayoutAttribute.Height, relatedBy: NSLayoutRelation.Equal, toItem: nil, attribute: NSLayoutAttribute.Height, multiplier: 1, constant: 300)])
        popV.view.transform = CGAffineTransformMakeScale(0, 0)
        UIView.animateWithDuration(0.3, delay: 0, options: UIViewAnimationOptions.CurveEaseOut, animations: { () -> Void in
            self.popV.view.transform = CGAffineTransformMakeScale(1, 1)
        }) { (success) -> Void in
            
        }
        
    }
    func closeCustomPopVC(){
               UIView.animateWithDuration(0.3, delay: 0, usingSpringWithDamping: 0.7, initialSpringVelocity: 3, options: UIViewAnimationOptions.CurveEaseInOut, animations: { () -> Void in
            self.popV.view.transform = CGAffineTransformMakeScale(0.1,0.1)
        }) { (success) -> Void in
            self.popV.view.removeFromSuperview()

        }

    }

}
