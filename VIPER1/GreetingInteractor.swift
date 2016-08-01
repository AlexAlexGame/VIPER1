//
//  GreetingInteractor.swift
//  VIPER1
//
//  Created by alex  on 29.07.16.
//  Copyright © 2016 alex . All rights reserved.
//


class GreetingInteractor : GreetingProvider {//provideGreetingData()
    weak var output: GreetingOutput!
    weak var outputName: GreetingDataName!
    
    func provideGreetingData() {
//        let person = Person(firstName: "Alex", lastName: "Name")
//        
//        let subject = person.firstName + " " + person.lastName
//        let greeting = GreetingData(greeting: "Hello", subject: subject)
//        self.output.receiveGreetingData(greeting)

        let subjects = PersonName(firstName: "Alex")
        self.output.receiveGreetingDataName(subjects)
        

    }
}