//
//  GreetingPresenter.swift
//  VIPER1
//
//  Created by alex  on 29.07.16.
//  Copyright © 2016 alex . All rights reserved.
//



class GreetingPresenter : GreetingOutput, GreetingViewEventHandler{//, GreetingDataName {
    weak var view: GreetingView!
    var greetingProvider: GreetingProvider!
    
    func didTapShowGreetingButton() {
        self.greetingProvider.provideGreetingData()
    }
    
    func receiveGreetingData(greetingData: GreetingData) {
        let greeting = greetingData.greeting + " " + greetingData.subject
        self.view.setGreeting(greeting)
    }
    func receiveGreetingDataName(personData: PersonName) {
        let greeting = personData.firstName
        self.view.setGreeting(greeting)
    }

}
