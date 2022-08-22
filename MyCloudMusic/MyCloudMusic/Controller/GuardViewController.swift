//
//  GuardViewController.swift
//  MyCloudMusic
//
//  Created by xuqingqing on 2022/8/21.
//

import UIKit

class GuardViewController: UIViewController {
    @IBOutlet weak var headerContainerView: UIView!
    @IBOutlet weak var footerContainerView: UIView!
    
    @IBOutlet weak var registerBtn: UIButton!
    @IBOutlet weak var enterBtn: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    override func viewDidLayoutSubviews() {
        registerBtn.showFullRadius()
        enterBtn.showFullRadius()
        enterBtn.showColorPrimaryBorder()
    }
    
    @IBAction func registerOrLogin(_ sender: Any) {
        SceneDelegate.shared.toLogin()
    }
    
    @IBAction func enter(_ sender: Any) {
        SceneDelegate.shared.toHome()
    }
}
