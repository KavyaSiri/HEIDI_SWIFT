//
//  DiaryModel.swift
//  DoctorsFriend
//
//  Created by Goutham Mac Mini on 03/06/20.
//  Copyright © 2020 Doctors Friend. All rights reserved.
//

import Foundation

struct DiaryModel : Codable{
    
    var diaryArray : [DiaryElements]
   
    
    struct DiaryElements : Codable{
        
        var diaryInformation : String!
    }
}
