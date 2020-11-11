//
//  DiaryVC.swift
//  DoctorsFriend
//
//  Created by Goutham Mac Mini on 26/05/20.
//  Copyright © 2020 Doctors Friend. All rights reserved.
//

import UIKit

class DiaryVC: UIViewController {

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
extension DiaryVC : UITableViewDelegate , UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 93
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 20
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let diaryLabel = tableView.dequeueReusableCell(withIdentifier: "DiaryCellID", for: indexPath) as!  DiaryCell
        return diaryLabel
    }
    

    
    
}
