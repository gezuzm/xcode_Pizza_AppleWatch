//
//  InterfaceController.swift
//  PizzasAppleWatch WatchKit Extension
//
//  Created by jesus serrano on 03/09/16.
//  Copyright © 2016 gezuzm. All rights reserved.
//

import WatchKit
import Foundation


class InterfaceController: WKInterfaceController {

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
    
    /*  let valorTMP : String = "prueba"
     let valorContexto = ValorMasa(d: "masa",e: valorTMP)
     pushControllerWithName("pantalla_masa", context : valorContexto)
     
     */
    
    @IBAction func btnInicio() {
     
        
    }

}