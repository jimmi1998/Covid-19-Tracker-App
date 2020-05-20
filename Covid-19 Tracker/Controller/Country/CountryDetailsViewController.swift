//
//  CountryDetailsViewController.swift
//  Covid-19 Tracker
//
//  Created by Jimit Raval on 27/04/20.
//  Copyright © 2020 Mango. All rights reserved.
//

import UIKit
import CoreData

class CountryDetailsViewController: UIViewController {

var summary: CountrySummary!


@IBOutlet weak var loadingIndicator: UIActivityIndicatorView!


@IBOutlet weak var CountryName: UITextField!
@IBOutlet weak var CountryImage: UIImageView!
@IBOutlet weak var TotalConfirmed: UILabel!
@IBOutlet weak var NewConfirmed: UILabel!
@IBOutlet weak var NewDeaths: UILabel!
@IBOutlet weak var TotalDeaths: UILabel!
@IBOutlet weak var NewRecovered: UILabel!
@IBOutlet weak var TotalRecovered: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        populateViews(summary)
    }

    func populateViews(_ country: CountrySummary) {
        CountryName.text = country.country
        CountryImage.image = UIImage(named: country.countryCode?.lowercased() ?? "america")
        if CountryImage.image == nil {
            CountryImage.image = UIImage(named:"america")
        }
        TotalConfirmed.text = country.totalConfirmed
        NewConfirmed.text = country.newConfirmed
        TotalDeaths.text = country.totalDeaths
        NewDeaths.text = country.newDeaths
        TotalRecovered.text = country.totalRecovered
        NewRecovered.text = country.newRecovered
    }

}
