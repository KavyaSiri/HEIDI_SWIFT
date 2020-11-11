//
//  RegistrationPresenter.swift
//  DoctorsFriend
//
//  Created by Goutham Mac Mini on 17/05/20.
//  Copyright © 2020 Doctors Friend. All rights reserved.
//

import Foundation


class RegistrationPresenter {
    
    let registrationVC : RegistrationVC! 
    
    init(viewController : RegistrationVC) {
        registrationVC = viewController
    }
    
}
extension RegistrationPresenter: RegistrationPresenterProtocol{
    func isValidEmail(email: String) -> Bool {
        
        print("Hi")
    return true
        
    }
    
    func isValidPassword(password: String) -> Bool {
        print("HibdkjHG")
        return true
    }
    
}
