//
//  drinkClass.swift
//  MachineForCoffe
//
//  Created by Ievgen Petrovskiy on 12.02.2021.
//

import UIKit

enum DrinkType {
    case americano, espresso, moccacino, cappucino
    
    var coffeNeeded: Int {
        switch self {
        case .americano: return 50
        case .espresso:  return 40
        case .moccacino: return 30
        case .cappucino: return 20
        }
    }
    
    var milkNedded: Int {
        switch self {
        case .americano: return 0
        case .espresso: return 0
        case .moccacino: return 50
        case .cappucino: return 40
        }
    }
    
    var waterNeeded: Int {
        switch self {
        case .americano: return 50
        case .espresso: return 30
        case .cappucino: return 30
        case .moccacino: return 20
        }
    }
    
    var thrashProduction: Int {
        switch self {
        case .americano: return 50
        case .espresso:  return 40
        case .moccacino: return 30
        case .cappucino: return 20
        }
    }
    
    
    
}


