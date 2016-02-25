//
//  SelQuesoPizza.swift
//  PizzaWatch
//
//  Created by Juan  Sanchez on 24/2/16.
//  Copyright © 2016 Juan  Sanchez. All rights reserved.
//

import WatchKit
import Foundation


class SelQuesoPizza: WKInterfaceController {
    
    var pizza = Pizza()
    
    let lista_queso = ["Mozarela", "Cheddar", "Parmesano", "Sin queso"]
    
    
    @IBOutlet var lblQueso: WKInterfaceLabel!
    
    
    @IBAction func sldQueso(value: Float) {
        let indice = Int(value)
        lblQueso.setText(lista_queso[indice])
        self.pizza.queso = lista_queso[indice]
    }
    
    
    @IBAction func btnConfirmarQueso() {
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
