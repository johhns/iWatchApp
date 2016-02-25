//
//  SelMasaPizza.swift
//  PizzaWatch
//
//  Created by Juan  Sanchez on 24/2/16.
//  Copyright © 2016 Juan  Sanchez. All rights reserved.
//

import WatchKit
import Foundation


class SelMasaPizza: WKInterfaceController {
    
    var pizza = Pizza()
    
    let lista_masas = ["Delgada", "Crujiente", "Gruesa"]
    
    @IBOutlet var lblMasa: WKInterfaceLabel!
    
    
    @IBAction func sldMasa(value: Float) {
        let indice = Int(value)
        lblMasa.setText(lista_masas[indice])
        self.pizza.masa = lista_masas[indice]
    }
    
    
    @IBAction func btnConfirmarMasa() {
        pushControllerWithName("seleccionQueso", context: pizza)
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
