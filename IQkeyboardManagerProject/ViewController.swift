//
//  ViewController.swift
//  IQkeyboardManagerProject
//
//  Created by 香川紗穂 on 2019/07/29.
//  Copyright © 2019 香川紗穂. All rights reserved.
//

import UIKit
//追加
import FontAwesome_swift
import RevealingSplashView

class ViewController: UIViewController {
    
    @IBOutlet weak var label1: UILabel!
    
    @IBOutlet weak var label2: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
//         ラベル１にアイコン追加
        label1.font = UIFont.fontAwesome(ofSize: 100, style: .brands)
        label1.text = String.fontAwesomeIcon(name: .github)
        
        
        label2.font = UIFont.fontAwesome(ofSize: 100, style: .solid)
        label2.text = String.fontAwesomeIcon(name: .users)
        
//コピー
    //Initialize a revealing Splash with with the iconImage, the initial size and the background color
    let revealingSplashView = RevealingSplashView(iconImage: UIImage(named: "logo")!,iconInitialSize: CGSize(width: 70, height: 70), backgroundColor: UIColor(red:0.11, green:0.56, blue:0.95, alpha:1.0))
    
    //Adds the revealing splash view as a sub view
    self.view.addSubview(revealingSplashView)
    
    //Starts animation
    revealingSplashView.startAnimation(){
    print("Completed")
    }

}

}
