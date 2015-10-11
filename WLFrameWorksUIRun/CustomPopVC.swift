//
//  CustomPopVC.swift
//  WLFrameWorksUIRun
//
//  Created by Ronaldinho on 15/9/9.
//  Copyright (c) 2015年 HotWordLand. All rights reserved.
//

import UIKit
protocol CustomPopVCProtocol : class{
    func clickClose()
}
class CustomPopVC: UIViewController {
    weak var delegate : CustomPopVCProtocol?
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    @IBAction func close(sender: UIButton) {
        if let thisDelegate: () = delegate?.clickClose(){
          print("delegate has value")
        }
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
