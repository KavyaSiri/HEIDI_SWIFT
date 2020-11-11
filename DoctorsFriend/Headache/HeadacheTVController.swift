//
//  HeadacheTVController.swift
//  DoctorsFriend
//
//  Created by Goutham Mac Mini on 20/05/20.
//  Copyright © 2020 Doctors Friend. All rights reserved.
//

import UIKit

class HeadacheTVController: UIViewController
{
    
    
    @IBOutlet var viewDatePicker: UIView!
    
    @IBOutlet weak var buttonChoose: UIButton!
    
    @IBOutlet weak var datePicker: UIDatePicker!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let formatter = DateFormatter()
        formatter.dateFormat = "dd/mm/yyyy"
        datePicker.datePickerMode = .date
        
        
         // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false
        
        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }
    
    @IBAction func buttonDateAction(_ sender: UIButton) {
        viewDatePicker.frame = CGRect(x: 0, y: 0, width: view.frame.width, height: view.frame.height)
               self.view.addSubview(viewDatePicker)
    }
    @IBAction func actionChoose(_ sender: Any) {
      
    }
    
    @IBAction func actionDatePicker(_ sender: Any) {
       
    }
    
    func showSelectDateView(){
        
        viewDatePicker.frame = CGRect(x: 0, y: 0, width: view.frame.width , height: view.frame.height)
        view.addSubview(viewDatePicker)
    }
    
}
extension HeadacheTVController : UITableViewDelegate , UITableViewDataSource {
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        if indexPath.row == 0{
            return 100
        }
        else if indexPath.row == 1{
            return 275
            
        }
        else if indexPath.row == 2{
            
            return 220
        }
        else if indexPath.row == 3{
            
            return 220
        }
        else if indexPath.row == 4{
            
            return 220
        }
        return 200
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 6
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if indexPath.row == 0{
            let date = tableView.dequeueReusableCell(withIdentifier: "HaDateCellID", for: indexPath) as! HaDateCell
            
            return date
            
        }
        else if indexPath.row == 1 {
            
            let switchVar = tableView.dequeueReusableCell(withIdentifier: "HaSwitchCellID", for: indexPath)as! HaSwitchCell
            return switchVar
        }
        else if indexPath.row == 2 {
            
            let nausea = tableView.dequeueReusableCell(withIdentifier: "HaNauseaCellID", for: indexPath)as! HaNauseaCell
            return nausea
            
        }
        else if indexPath.row == 3 {
            
            let sensitivity = tableView.dequeueReusableCell(withIdentifier: "HaSensitivityCellID", for: indexPath)as! HaSensitivityCell
            return sensitivity
            
        }
        else if indexPath.row == 4 {
            
            let painRelief = tableView.dequeueReusableCell(withIdentifier: "HaPainReliefCellID", for: indexPath)as!  HaPainReliefCell
            
            return painRelief
            
        }
        
        let message = tableView.dequeueReusableCell(withIdentifier: "HaMessagesCellID", for: indexPath)as! HaMessagesCell
        
        return message
    }
    
    
}








