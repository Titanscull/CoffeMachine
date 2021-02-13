//
//  drinkClass.swift
//  MachineForCoffe
//
//  Created by Ievgen Petrovskiy on 12.02.2021.
//

import UIKit

enum DrinkType {
    case americano, espresso, moccacino, cupucino
    
    var coffeNeeded: Int {
        switch self {
        case .americano: return 50
        case .espresso:  return 40
        case .moccacino: return 30
        case .cupucino: return 20
        }
    }

    var milkNedded: Int {
        switch self {
        case .americano: return 0
        case .espresso: return 0
        case .moccacino: return 50
        case .cupucino: return 40
        }
    }
    
    var waterNeeded: Int {
        switch self {
        case .americano: return 50
        case .espresso: return 30
        case .cupucino: return 30
        case .moccacino: return 20
        }
    }


}


