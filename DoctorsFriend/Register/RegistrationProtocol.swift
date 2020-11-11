 //
//  RegistrationProtocol.swift
//  DoctorsFriend
//
//  Created by Goutham Mac Mini on 17/05/20.
//  Copyright © 2020 Doctors Friend. All rights reserved.
//

import Foundation

protocol RegistrationPresenterProtocol{
    
    func isValidEmail(email : String) -> Bool
    func isValidPassword(password : String) -> Bool
}

protocol RegistrationViewProtocol{
    
    func reloadRegistrationTable()
    func hideLinesForEmptyCells()
}
