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
    
    
    @IBAction func americanoChosedButton(_ sender: UIButton) {
        coffeMachine.makeDrink(drinkType: .americano)
        tetxLabel.text = coffeMachine.message
    }
    
    @IBAction func espressoChosedButton(_ sender: UIButton) {
        coffeMachine.makeDrink(drinkType: .espresso)
        tetxLabel.text = coffeMachine.message
    }
    
    
    @IBAction func cupucinoChosedButton(_ sender: UIButton) {
        coffeMachine.makeDrink(drinkType: .cupucino)
        tetxLabel.text = coffeMachine.message
    }
    
    
    @IBAction func mocacinoChosedButton(_ sender: UIButton) {
        coffeMachine.makeDrink(drinkType: .moccacino)
        tetxLabel.text = coffeMachine.message
    }
    
    
    @IBAction func addWaterButton(_ sender: UIButton) {
        coffeMachine.addWater()
        tetxLabel.text = coffeMachine.componentMessage
    }
    
    
    @IBAction func addBeansButton(_ sender: UIButton) {
        coffeMachine.addBeans()
        tetxLabel.text = coffeMachine.componentMessage
    }
    
    
    @IBAction func addMilkButton(_ sender: UIButton) {
        coffeMachine.addMilk()
        tetxLabel.text = coffeMachine.componentMessage
    }
    

}

