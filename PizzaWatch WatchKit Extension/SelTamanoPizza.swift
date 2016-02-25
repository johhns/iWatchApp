//
//  SelTamanoPizza.swift
//  PizzaWatch
//
//  Created by Juan  Sanchez on 24/2/16.
//  Copyright © 2016 Juan  Sanchez. All rights reserved.
//

import WatchKit
import Foundation



class SelTamanoPizza: WKInterfaceController {

    let pizza = Pizza()
    
    let lista_tamano = ["Chica", "Mediana", "Grande"]
    
    @IBOutlet var lblTamano: WKInterfaceLabel!
    
    @IBOutlet var sliderTamano: WKInterfaceSlider!
    
    
    
    @IBAction func sldTamano(value: Float) {
        let indice = Int(value)
        lblTamano.setText(lista_tamano[indice])
        self.pizza.tamano = lista_tamano[indice]
    }
    
    
    @IBAction func btnConfirmarTamano() {
        pushControllerWithName("seleccionMasa", context: pizza)
    }
    
    
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        
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
