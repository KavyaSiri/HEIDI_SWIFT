//
//  TabbarController.swift
//  DoctorsFriend
//
//  Created by Goutham Mac Mini on 20/05/20.
//  Copyright © 2020 Doctors Friend. All rights reserved.
//

import UIKit

class TabbarController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        moreNavigationController.navigationBar.tintColor = UIColor.white
        moreNavigationController.navigationBar.barTintColor = UIColor.init(red: 62/255.0, green: 167/255.0 , blue: 134/255.0, alpha: 1.0)
        
        let titleDict: NSDictionary = [NSAttributedString.Key.foregroundColor: UIColor.white]
        
        moreNavigationController.navigationBar.titleTextAttributes = (titleDict as! [NSAttributedString.Key : Any])
 
        
        
        
        
    }
    override func tabBar(_ tabBar: UITabBar, didSelect item: UITabBarItem) {
        customizableViewControllers = nil
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
