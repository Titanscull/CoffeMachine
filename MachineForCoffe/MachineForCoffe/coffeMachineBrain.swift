//
//  coffeMachineClass.swift
//  MachineForCoffe
//
//  Created by Ievgen Petrovskiy on 12.02.2021.
//

import UIKit

class CoffeMachine {
    
    var water = 0
    var coffeBeans = 0
    var milk = 0
    var thrash = 0
    
    let waterTank: Float = 1000
    let coffeTank: Float = 800
    let milkTank: Float = 1000
    let thrashCan: Float = 800
    let progressBarValue: Float = 1
    
    var waterCapacity: Float = 0.0
    var coffeeBeansCapacity: Float = 0.0
    var milkCapacity: Float = 0.0
    var thrashCapacity: Float = 0.0
    
    var titleMessage = ""
    var componentTitleMessage = ""
    
    func makeDrink(drinkType: DrinkType) {
        
        if thrash >= Int(thrashCan) || (thrash + drinkType.thrashProduction) > Int(thrashCan){
            titleMessage = "Clear thrash, Please"
            return
        }
        
        if water < drinkType.waterNeeded {
            titleMessage = "Add Water, Please"
            return
        }
        
        if coffeBeans < drinkType.coffeNeeded {
            titleMessage = "Add Coffe, Please"
            return
        }
        
        if milk < drinkType.milkNedded {
            titleMessage = "Add milk, Please"
            return
        } else if milk >= drinkType.milkNedded && coffeBeans >= drinkType.coffeNeeded && water >= drinkType.waterNeeded {
            
            titleMessage = "Enjoy youre \(drinkType)"
            
            milk -= drinkType.milkNedded
            coffeBeans -= drinkType.coffeNeeded
            water -= drinkType.waterNeeded
            thrash += drinkType.thrashProduction
            
            milkCapacity -= Float(progressBarValue / (milkTank / Float(drinkType.milkNedded)))
            coffeeBeansCapacity -= Float(progressBarValue / (coffeTank / Float(drinkType.coffeNeeded)))
            waterCapacity -= Float(progressBarValue / (waterTank / Float(drinkType.waterNeeded)))
            thrashCapacity += Float(progressBarValue / (thrashCan / Float(drinkType.thrashProduction)))
            
        }
    }
    
    func clearThrash() {
        thrashCapacity = 0
        thrash = 0
        componentTitleMessage = "Thrash cleared!"
    }
    
    func addWater() {
        
        if water == Int(waterTank) {
            componentTitleMessage = "Water tank is full!"
            return
        }
        
        while water < Int(waterTank) {
            water += 1
        }
        
        componentTitleMessage = "Water is added!"
        waterCapacity = 1
    }
    
    func addBeans() {
        
        if coffeBeans == Int(coffeTank) {
            componentTitleMessage = "Coffe tank is full!"
            return
        }
        
        while coffeBeans < Int(coffeTank) {
            coffeBeans += 1
        }
        componentTitleMessage = "Coffe is added!"
        coffeeBeansCapacity = 1
        
    }
    
    func addMilk() {
        
        if milk == Int(milkTank){
            componentTitleMessage = "Milk tank is full"
            return
        }
        
        while milk < Int(milkTank) {
            milk += 1
        }
        
        componentTitleMessage = "Milk is added"
        milkCapacity = 1
    }
    
    
}
