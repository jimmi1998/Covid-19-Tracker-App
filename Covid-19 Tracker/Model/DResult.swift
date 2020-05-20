//
//  DResult.swift
//  Covid-19 Tracker
//
//  Created by Jimit Raval on 27/04/20.
//  Copyright © 2020 Mango. All rights reserved.
//

import Foundation

enum DResult<T>{
    case success(T)
    case error(String)
}
