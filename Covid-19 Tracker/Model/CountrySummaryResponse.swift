//
//  CountrySummaryResponse.swift
//  Covid-19 Tracker
//
//  Created by Jimit Raval on 27/04/20.
//  Copyright © 2020 Mango. All rights reserved.
//

import Foundation

struct CountrySummaryResponse : Codable {
    let Countries: [SummaryResponseModel]
}

struct SummaryResponseModel : Codable {
    let Country: String
    let CountryCode: String
    let NewConfirmed: Int
    let TotalConfirmed: Int
    let NewDeaths: Int
    let TotalDeaths: Int
    let NewRecovered: Int
    let TotalRecovered: Int
}

