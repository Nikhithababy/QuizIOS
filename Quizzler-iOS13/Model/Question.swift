//
//  Question.swift
//  Quizzler-iOS13
//
//  Created by user186829 on 2/7/21.
//  Copyright © 2021 The App Brewery. All rights reserved.
//

import Foundation

struct Question
{
    let text:String
    let ans:String
    
    init(q:String , a: String)
    {
        text = q
        ans=a
    }
}
