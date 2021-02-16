//
//  ViewController.swift
//  MachineForCoffe
//
//  Created by Ievgen Petrovskiy on 12.02.2021.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var textLable: UILabel!
    @IBOutlet weak var waterProgressBar: UIProgressView!
    @IBOutlet weak var coffeBeansProgressBar: UIProgressView!
    @IBOutlet weak var milkProgressBar: UIProgressView!
    @IBOutlet weak var thrashProgressBar: UIProgressView!
    
    let coffeMachine = CoffeMachine()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        waterProgressBar.progress = coffeMachine.waterCapacity
        coffeBeansProgressBar.progress = coffeMachine.coffeeBeansCapacity
        milkProgressBar.progress = coffeMachine.milkCapacity
        thrashProgressBar.progress = coffeMachine.thrashCapacity
        
        textLable.layer.masksToBounds = true
        textLable.layer.cornerRadius = 20
        
        textLable.text = "Add ingredients, Please"
        
        
    }
    
    @IBAction func americanoChosedButton(_ sender: UIButton) {
        
        coffeMachine.makeDrink(drinkType: .americano)
        textLable.text = coffeMachine.titleMessage
        thrashProgressBar.progress = coffeMachine.thrashCapacity
        waterProgressBar.progress = coffeMachine.waterCapacity
        coffeBeansProgressBar.progress = coffeMachine.coffeeBeansCapacity
        milkProgressBar.progress = coffeMachine.milkCapacity
    }
    
    @IBAction func espressoChosedButton(_ sender: UIButton) {
        
        coffeMachine.makeDrink(drinkType: .espresso)
        textLable.text = coffeMachine.titleMessage
        thrashProgressBar.progress = coffeMachine.thrashCapacity
        waterProgressBar.progress = coffeMachine.waterCapacity
        coffeBeansProgressBar.progress = coffeMachine.coffeeBeansCapacity
        milkProgressBar.progress = coffeMachine.milkCapacity
    }
    
    @IBAction func cupucinoChosedButton(_ sender: UIButton) {
        
        coffeMachine.makeDrink(drinkType: .cappucino)
        textLable.text = coffeMachine.titleMessage
        thrashProgressBar.progress = coffeMachine.thrashCapacity
        waterProgressBar.progress = coffeMachine.waterCapacity
        coffeBeansProgressBar.progress = coffeMachine.coffeeBeansCapacity
        milkProgressBar.progress = coffeMachine.milkCapacity
    }
        
    @IBAction func mocacinoChosedButton(_ sender: UIButton) {
        
        coffeMachine.makeDrink(drinkType: .moccacino)
        textLable.text = coffeMachine.titleMessage
        thrashProgressBar.progress = coffeMachine.thrashCapacity
        waterProgressBar.progress = coffeMachine.waterCapacity
        coffeBeansProgressBar.progress = coffeMachine.coffeeBeansCapacity
        milkProgressBar.progress = coffeMachine.milkCapacity
    }
    
    @IBAction func addWaterButton(_ sender: UIButton) {
        
        coffeMachine.addWater()
        textLable.text = coffeMachine.componentTitleMessage
        waterProgressBar.progress = coffeMachine.waterCapacity
    }
    
    @IBAction func addBeansButton(_ sender: UIButton) {
        
        coffeMachine.addBeans()
        textLable.text = coffeMachine.componentTitleMessage
        coffeBeansProgressBar.progress = coffeMachine.coffeeBeansCapacity
    }
    
    @IBAction func addMilkButton(_ sender: UIButton) {
        
        coffeMachine.addMilk()
        textLable.text = coffeMachine.componentTitleMessage
        milkProgressBar.progress = coffeMachine.milkCapacity
    }
    
    @IBAction func clearThrashButton(_ sender: UIButton) {
        
        coffeMachine.clearThrash()
        textLable.text = coffeMachine.componentTitleMessage
        thrashProgressBar.progress = 0
    }
    
    
    
}

