//
//  coffeMachineClass.swift
//  MachineForCoffe
//
//  Created by Ievgen Petrovskiy on 12.02.2021.
//

import UIKit

class CoffeMachine {
    
    var water: Int = 0
    var coffeBeans: Int = 0
    var milk: Int = 0
    
    func makeDrink(drinkType: DrinkType) {
        var message = ""
        if water < drinkType.waterNeeded {
            message = "Add Water"
            return
        } else {
            print("Enjoy Youre Drink")
            water -= drinkType.waterNeeded
        }
        if coffeBeans < drinkType.coffeNeeded {
            print("Add coffe")
            return
        } else {
            print("Enjoy youre drink")
            coffeBeans -= drinkType.coffeNeeded
            
        }
        if milk < drinkType.milkNedded {
            print("Add milk")
            return
        } else {
            print("Enjoy youre drink")
            milk -= drinkType.milkNedded
        }
    }
    
    func addWater() {
        water += 50
    }
    
    func addBeans() {
        coffeBeans += 50
    }
    
    func addMilk() {
        milk += 50
    }
}
