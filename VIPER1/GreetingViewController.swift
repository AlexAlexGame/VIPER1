//
//  GreetingViewController.swift
//  VIPER1
//
//  Created by alex  on 29.07.16.
//  Copyright © 2016 alex . All rights reserved.
//


import UIKit

class GreetingViewController : UIViewController, GreetingView {
    var eventHandler: GreetingViewEventHandler!
    
    @IBOutlet weak var showGreetingButtons: UIButton!
    @IBOutlet weak var greetingLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        self.showGreetingButtons.addTarget(self, action: #selector(GreetingViewController.didTapButton(_:)), forControlEvents: .TouchUpInside)
    }
    
    func didTapButton(button: UIButton) {
        self.eventHandler.didTapShowGreetingButton()
    }
    
    func setGreeting(greeting: String) {
        self.greetingLabel.text = greeting
    }
    
    // layout code goes here
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}