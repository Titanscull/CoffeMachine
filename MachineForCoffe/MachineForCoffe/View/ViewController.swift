//
//  ViewController.swift
//  MachineForCoffe
//
//  Created by Ievgen Petrovskiy on 12.02.2021.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var tetxLabel: UITextField!
    
    let coffeMachine = CoffeMachine()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
    }
    
    @IBAction func drinkTypeChoosedButton(_ sender: UIButton) {
        
        coffeMachine.makeDrink(drinkType: .americano)
       
    }
    
    @IBAction func addWaterButton(_ sender: UIButton) {
        coffeMachine.addWater()
        tetxLabel.text = "Water Added"
    }
    
    @IBAction func addBeansButton(_ sender: UIButton) {
        coffeMachine.addBeans()
        tetxLabel.text = "Beans Added"
    }
    
    @IBAction func addMilkButton(_ sender: UIButton) {
        coffeMachine.addMilk()
        tetxLabel.text = "Milk Added"
    }
    

}

