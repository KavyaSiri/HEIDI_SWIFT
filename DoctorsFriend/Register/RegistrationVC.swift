//
//  RegistrationVC.swift
//  DoctorsFriend
//
//  Created by Goutham Mac Mini on 17/05/20.
//  Copyright © 2020 Doctors Friend. All rights reserved.
//

import UIKit

class RegistrationVC: UIViewController {
    
    // MARK: - Properties
    
    @IBOutlet weak var tableRegistration: UITableView!
    
   var registrationArray  : [[String : String]] =                    [ ["Title" : "Hospital Code" , "Value" : ""] ,
                                                                        ["Title" : "Study ID" , "Value" : ""] ,
                                                                        ["Title" : "Registration Code" , "Value" : ""] ,
                                                                        ["Title" : "Registration Password" , "Value" : ""] ,
                                                                        ["Title" : "Password for app" , "Value" : ""] ,
                                                                        ["Title" : "Retype Password" , "Value" : ""] ]
    
    
    
    
    var presenterRegistration : RegistrationPresenter! 
    
    //MARK: - ViewController LifCycle
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        presenterRegistration = RegistrationPresenter(viewController: self)
        tableRegistration.tableFooterView = UIView()
        
        
        
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        
    }
    
    // MARK: - Button actions
    
    @IBAction func buttonRegisteraction(_ sender: Any) {
        
        print("final arra \(registrationArray)")
        
    }
    
    
    @IBAction func buttonReset(_ sender: Any) {

        //

        print("final arra \(registrationArray)")
        for index in 0..<registrationArray.count {
            
            registrationArray[index]["Value"] = ""
            print(index)
        }
        tableRegistration.reloadData()

    }
}

extension RegistrationVC : RegistrationViewProtocol{
    func hideLinesForEmptyCells() {
        
        tableRegistration.tableFooterView = UIView()
       
    }
    
    
    func reloadRegistrationTable() {
        
        print("Hi")
    }
}
extension RegistrationVC : UITableViewDelegate , UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return registrationArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let registrationCellVar = tableView.dequeueReusableCell(withIdentifier: "RegistrationCellID", for: indexPath) as! RegistrationCell
        let registrationDict = registrationArray[indexPath.row]
        
        let registrationTitle = registrationDict["Title"]
        registrationCellVar.lableRegistration.text = registrationTitle
        registrationCellVar.textFieldRegistration.placeholder = registrationTitle
        registrationCellVar.textFieldRegistration.text = registrationDict["Value"]
        registrationCellVar.textFieldRegistration.tag = indexPath.row
        registrationCellVar.textFieldRegistration.delegate = self
        return registrationCellVar
    }
}
extension RegistrationVC : UITextFieldDelegate{
    
    
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        
        var updatedTextString : NSString = textField.text! as NSString
        updatedTextString = updatedTextString.replacingCharacters(in: range, with: string) as NSString
        registrationArray[textField.tag]["Value"] = updatedTextString as String
        return true
        
    }
    
    
}
