//
//  HitVC.swift
//  DoctorsFriend
//
//  Created by Goutham Mac Mini on 20/05/20.
//  Copyright © 2020 Doctors Friend. All rights reserved.
//

import UIKit

class HitVC: UIViewController {

    let hitSixarray = [""," When you have headaches, how often is the pain severe?" ,
                       
                       "How often do headaches limit your ability to do usual daily activities including household work, work, school, or social activities?" ,
                       
                       "When you have a headache, how often do you wish you could lie down?" ,
                       
                       "In the past 4 weeks, how often have you felt too tired to do work or daily activities because of your headaches?",
                       
                       "In the past 4 weeks, how often have you felt fed up or irritated because of your headaches?",
                       
                       "In the past 4 weeks, how often did headaches limit your ability to concentrate on work or daily activities?"
    ]
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
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

extension HitVC : UITableViewDataSource , UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        if indexPath.row == 0{
            
            return 200
        }
        return 144
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 7
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if indexPath.row == 0 {
            
            let hitImpvct = tableView.dequeueReusableCell(withIdentifier: "HitSixCellID", for: indexPath) as! HitSixCell
            
    return hitImpvct
            
        }
        let tapToSelect = tableView.dequeueReusableCell(withIdentifier: "TapToSelectCellID", for: indexPath) as! TapToSelectCell
        let hitVar = hitSixarray[indexPath.row]
        tapToSelect.labelHitDescription.text = hitVar
        return tapToSelect
    }
    
    
    
    
    
}
