//
//  SelIngredientesPizza.swift
//  PizzaWatch
//
//  Created by Juan  Sanchez on 24/2/16.
//  Copyright © 2016 Juan  Sanchez. All rights reserved.
//

import WatchKit
import Foundation


class SelIngredientesPizza: WKInterfaceController {
    
    var pizza = Pizza()
    

    @IBOutlet var conPavo: WKInterfaceSwitch!
    
    @IBOutlet var conSalchicha: WKInterfaceSwitch!
    
    @IBOutlet var conPeperoni: WKInterfaceSwitch!
    
    @IBOutlet var conJamon: WKInterfaceSwitch!
    
    @IBOutlet var conAceituna: WKInterfaceSwitch!
    
    @IBOutlet var conCebolla: WKInterfaceSwitch!
    
    @IBOutlet var conAnchoa: WKInterfaceSwitch!
    
    
    @IBAction func swPavo(value: Bool) {
        if value {
           pizza.pavo = "S"
           pizza.cantidadIngredientes++
        } else {
           pizza.pavo = "N"
           pizza.cantidadIngredientes--
        }
    }
    
    @IBAction func swSalchicha(value: Bool) {
        if value {
            pizza.salchicha = "S"
            pizza.cantidadIngredientes++
        } else {
            pizza.salchicha = "N"
            pizza.cantidadIngredientes--
        }
    }
    
    @IBAction func swPeperoni(value: Bool) {
        if value {
            pizza.peperoni = "S"
            pizza.cantidadIngredientes++
        } else {
            pizza.peperoni = "N"
            pizza.cantidadIngredientes--
        }
    }
    
    @IBAction func swJamon(value: Bool) {
        if value {
            pizza.jamon = "S"
            pizza.cantidadIngredientes++
        } else {
            pizza.jamon = "N"
            pizza.cantidadIngredientes--
        }
    }
    
    
    @IBAction func swAceituna(value: Bool) {
        if value {
            pizza.aceituna = "S"
            pizza.cantidadIngredientes++
        } else {
            pizza.aceituna = "N"
            pizza.cantidadIngredientes--
        }
    }
    
    
    @IBAction func swCebolla(value: Bool) {
        if value {
            pizza.cebolla = "S"
            pizza.cantidadIngredientes++
        } else {
            pizza.cebolla = "N"
            pizza.cantidadIngredientes--
        }
    }
    
    
    @IBAction func swAnchoa(value: Bool) {
        if value {
            pizza.anchoa = "S"
            pizza.cantidadIngredientes++
        } else {
            pizza.anchoa = "N"
            pizza.cantidadIngredientes--
        }
    }
    
    
    @IBAction func btnConfirmarIngredientes() {
        
        if (pizza.cantidadIngredientes > 0 && pizza.cantidadIngredientes < 6 ) {
        pushControllerWithName("confirmarPizza", context: pizza)
        } else {
            pushControllerWithName("corregirIngredientes", context: pizza)
        }
        
    }
    
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        
        pizza = context! as! Pizza
        pizza.cantidadIngredientes = 0
        pizza.borrarIngredientes()
        
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
