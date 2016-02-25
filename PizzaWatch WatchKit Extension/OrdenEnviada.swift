//
//  OrdenEnviada.swift
//  PizzaWatch
//
//  Created by Juan  Sanchez on 24/2/16.
//  Copyright © 2016 Juan  Sanchez. All rights reserved.
//

import WatchKit
import Foundation


class OrdenEnviada: WKInterfaceController {
    
    var pizza = Pizza()
    
    
    @IBAction func btnOtraOrden() {
        pushControllerWithName("mainView", context: pizza)
    }
    
    
    
    @IBAction func btnSalir() {
        exit(0)
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
