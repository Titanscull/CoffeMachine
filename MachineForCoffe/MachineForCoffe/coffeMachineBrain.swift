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
    
    var titleMessage = ""
    var componentTitleMessage = ""
    
    func makeDrink(drinkType: DrinkType) {
        
        if thrash >= 100 {
            titleMessage = "Clear thrash"
            print(thrash)
            return
        }
        
        if water < drinkType.waterNeeded {
            titleMessage = "Add Water"
            print(titleMessage)
            return
        }
        
        if coffeBeans < drinkType.coffeNeeded {
            titleMessage = "Add Coffe"
            print(titleMessage)
            return
        }
        
        if milk < drinkType.milkNedded {
            titleMessage = "Add milk"
            print(titleMessage)
            return
        } else if milk >= drinkType.milkNedded && coffeBeans >= drinkType.coffeNeeded && water >= drinkType.waterNeeded {
            titleMessage = "Enjoy youre \(drinkType)"
            milk -= drinkType.milkNedded
            coffeBeans -= drinkType.coffeNeeded
            water -= drinkType.waterNeeded
            thrash += 50
        }
        
        print("Water = \(water)")
        print("Coffe beans = \(coffeBeans)")
        print("Milk = \(milk)")
        
    }
    
    func clearThrash() {
        thrash -= 100
        componentTitleMessage = "Thrash cleard"
    }
    
    func addWater() {
        water += 100
        componentTitleMessage = "Water is added"
    }
    
    func addBeans() {
        coffeBeans += 50
        componentTitleMessage = "Coffe beans are added"
    }
    
    func addMilk() {
        milk += 200
        componentTitleMessage = "Milk is added"
    }
    
    
}
