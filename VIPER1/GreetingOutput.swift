//
//  GreetingOutput.swift
//  VIPER1
//
//  Created by alex  on 29.07.16.
//  Copyright © 2016 alex . All rights reserved.
//

protocol GreetingOutput: class {
    func receiveGreetingData(greetingData: GreetingData)
    func receiveGreetingDataName(personName: PersonName)
}
