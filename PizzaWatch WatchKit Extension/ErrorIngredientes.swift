//
//  ErrorIngredientes.swift
//  PizzaWatch
//
//  Created by Juan  Sanchez on 24/2/16.
//  Copyright © 2016 Juan  Sanchez. All rights reserved.
//

import WatchKit
import Foundation


class ErrorIngredientes: WKInterfaceController {

     var pizza = Pizza()
    
    
    @IBAction func btnAceptar() {
        pushControllerWithName("seleccionIngredientes", context: pizza)
    }
    
    
    
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        
        pizza = context! as! Pizza
        
        // Configure interface objects here.
    }
    
    
    
    

    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
    }

    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }

}
