//
//  VisitsVC.swift
//  DoctorsFriend
//
//  Created by Goutham Mac Mini on 21/05/20.
//  Copyright © 2020 Doctors Friend. All rights reserved.
//

import UIKit

class VisitsVC: UIViewController {

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
extension VisitsVC : UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 128
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let visits = tableView.dequeueReusableCell(withIdentifier: "VisitsCellID", for: indexPath)as! VisitsCell
        
        return visits
    }
    
  
}
