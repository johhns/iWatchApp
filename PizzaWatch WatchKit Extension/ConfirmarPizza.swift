//
//  ConfirmarPizza.swift
//  PizzaWatch
//
//  Created by Juan  Sanchez on 24/2/16.
//  Copyright © 2016 Juan  Sanchez. All rights reserved.
//

import WatchKit
import Foundation


class ConfirmarPizza: WKInterfaceController {
    
    var pizza = Pizza()
    
    
    @IBOutlet var lblTamano: WKInterfaceLabel!
    
    @IBOutlet var lblMasa: WKInterfaceLabel!
    
    @IBOutlet var lblQueso: WKInterfaceLabel!
    
    @IBOutlet var lblIngredientes: WKInterfaceLabel!
    
    
    
    
    @IBAction func btnConfirmarPizza() {
        
        pushControllerWithName("ordenEnviada", context: pizza)
        
    }
    
    
    @IBAction func btnCancelar() {
       pushControllerWithName("mainView", context: pizza)
    }
    

    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        
        pizza = context! as! Pizza
        lblTamano.setText(pizza.tamano)
        lblMasa.setText(pizza.masa)
        lblQueso.setText(pizza.queso)
        lblIngredientes.setText(pizza.ingredientes())
        
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
