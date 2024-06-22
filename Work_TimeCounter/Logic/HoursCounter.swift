//
//  HoursCounter.swift
//  Work_TimeCounter
//
//  Created by Luis Benvenuto on 21/06/24.
//

import Foundation

class HoursCounter{
    private var amountWork: Int = 0
    private var amountBreak: Int = 0
    
    func addHourWorked(){
        amountWork += 1
    }
    func removeHourWorked(){
        amountWork -= 1
    }
    
    func addHourBreak(){
        amountBreak += 1
    }
    func removeHourBreak(){
        amountBreak -= 1
    }
    
}
