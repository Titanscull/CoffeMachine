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
    
    var message = ""
    var componentMessage = ""
    
    func makeDrink(drinkType: DrinkType) {
        
        if water < drinkType.waterNeeded {
            message = "Add Water"
        } else if water > drinkType.waterNeeded {
            message = "Enjoy youre \(drinkType)"
            water -= drinkType.waterNeeded
        }
        
        if coffeBeans < drinkType.coffeNeeded {
            message = "Add Coffe"
        } else if coffeBeans > drinkType.coffeNeeded && water > drinkType.waterNeeded {
            message = "Enjoy youre \(drinkType)"
            coffeBeans -= drinkType.coffeNeeded
            water -= drinkType.waterNeeded
        }
        
        if milk < drinkType.milkNedded {
            message = "Add milk"
        } else if milk > drinkType.milkNedded && coffeBeans > drinkType.coffeNeeded && water > drinkType.waterNeeded {
            message = "Enjoy youre \(drinkType)"
            milk -= drinkType.milkNedded
            coffeBeans -= drinkType.coffeNeeded
            water -= drinkType.waterNeeded
        }
        
        print("Water = \(water)")
        print("Coffe beans = \(coffeBeans)")
        print("Milk = \(milk)")
        
    }
    
    func addWater() {
        water += 60
        componentMessage = "Water is added"
    }
    
    func addBeans() {
        coffeBeans += 50
        componentMessage = "Coffe beans are added"
    }
    
    func addMilk() {
        milk += 80
        componentMessage = "Milk is added"
    }
    
    
}
