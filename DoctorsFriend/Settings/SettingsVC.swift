//
//  SettingsVC.swift
//  DoctorsFriend
//
//  Created by Goutham Mac Mini on 26/05/20.
//  Copyright © 2020 Doctors Friend. All rights reserved.
//

import UIKit

class SettingsVC: UIViewController  {

    
    
    
    var settingsPasswordArray  : [[String : String]] =                  [ ["Title" : "Hospital Code" , "Value" : ""] ,
                                                                        ["Title" : "Study ID" , "Value" : ""] ,
                                                                        ["Title" : "Registration Code" , "Value" : ""] ,
                                                                        ["Title" : "Registration Password" , "Value" : ""] ,
                                                                        ["Title" : "Password for app" , "Value" : ""] ,
                                                                        ["Title" : "Retype Password" , "Value" : ""] ]
    
    
    
    @IBOutlet var viewPassword: UIView!
    @IBOutlet var viewDeregister: UIView!
    
    @IBOutlet weak var viewforPasswordandDeregister: UIView!
    
    @IBOutlet weak var segmentControl: UISegmentedControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        

        // Do any additional setup after loading the view.
        
        addPassword()
        addRegister()
        configureInitials()
        
        
        
    }
    
    @IBAction func buttonStopUsingHeidi(_ sender: Any) {
        
        
        
    }
    
    
    
    func addPassword() {
        viewPassword.frame = CGRect(x: 0, y: 0, width: view.frame.size.width, height: 500)
        
        viewforPasswordandDeregister.addSubview(viewPassword)
    }
    func addRegister(){
    
        viewDeregister.frame = CGRect(x: 0, y: 0, width: view.frame.size.width , height: 100)
        
    viewforPasswordandDeregister.addSubview(viewDeregister)

    }
    
    func configureInitials(){
        viewPassword.isHidden = false
        viewDeregister.isHidden = true
    }

    @IBAction func segmentAction(_ sender: UISegmentedControl) {
        
        if sender.selectedSegmentIndex == 0 {
      viewPassword.isHidden = false
            viewDeregister.isHidden = true

            
        }
        else {
            viewPassword.isHidden = true

            viewDeregister.isHidden = false

        }
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



extension SettingsVC : UITableViewDataSource , UITableViewDelegate {
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return settingsPasswordArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let passwordSettingsTable = tableView.dequeueReusableCell(withIdentifier: "SettingsPasswordCellID", for: indexPath) as! SettingsPasswordCell
        let SettingsToPassword = settingsPasswordArray[indexPath.row]
        let labelOfPassword = SettingsToPassword["Title"]
        passwordSettingsTable.lableSettingsPasswordLabel.text = labelOfPassword
       
        return passwordSettingsTable
    }
    
    
    
    
}
