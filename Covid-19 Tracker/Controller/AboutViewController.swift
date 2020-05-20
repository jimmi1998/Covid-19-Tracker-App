//
//  AboutViewController.swift
//  Covid19
//
//  Created by Jimit Raval on 27/04/20.
//  Copyright © 2020 Abdalfattah Altaeb. All rights reserved.
//

import UIKit

class AboutViewController: UIViewController {

    @IBOutlet weak var aboutText: UITextView!
    @IBOutlet weak var aboutToMeSegment: UISegmentedControl!
    
    
    var currentSegment = 0;
    let aboutTexts = [
        0: "Covid-19 Tracker is an iOS app which tracks the Covid-19 cases. This app was created as the capstone project during Udacity's iOS Developer Nanodegree program.\n\nThe app displays the covid-19 cases according to countrys stats. It shows Confirmed cases, confirmed deaths, and confirmed recovered cases.",
        1: "Heyyy There!!!\nI am is Jimit Raval.\n\nI am a Website and Android Application developer since 2 years. I am learning iOS application development with Udacity's iOS developer Nanodegree. I recently received Intel AI at the Edge Scholarship from Udacity.\n\nI am a badminton and basketball player."
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "About"
        
        updateView();
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    private func updateView(){
        aboutText?.text = aboutTexts[currentSegment]
    }
    
    @IBAction func appToMeSegment(_ sender: Any) {
        currentSegment = aboutToMeSegment.selectedSegmentIndex;updateView()
    }
    
}
