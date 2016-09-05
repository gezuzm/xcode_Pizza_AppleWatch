//
//  InterfaceControllerConfirmacion.swift
//  PizzasAppleWatch
//
//  Created by jesus serrano on 03/09/16.
//  Copyright © 2016 gezuzm. All rights reserved.
//

import WatchKit
import Foundation


class InterfaceControllerConfirmacion: WKInterfaceController {

    var Tam: String = ""
    var Masa : String = ""
    var Queso : String = ""
    var Ingredientes : String = ""
    var Mensaje : String = ""
    
    @IBOutlet var btnConfirmar: WKInterfaceButton!
    
    @IBOutlet var labIngredientes: WKInterfaceLabel!
    
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        
        let c = context as! ValorIngredientes
        
        Tam=c.eleccionT
        Masa=c.eleccionM
        Queso=c.eleccionQ
        Ingredientes=c.eleccionI
        
        if c.mensaje != ""
        {
        labIngredientes.setText(c.mensaje)
            labIngredientes.setTextColor(UIColor.redColor())
          btnConfirmar.setEnabled(false)
        }
        else
        {
            labIngredientes.setText("Tam: " + Tam + " - Masa: " + Masa + " - Queso: " + Queso + " - Ingredientes: " + Ingredientes)
            
            //labIngredientes.setText(Tam + Masa + Queso + Ingredientes)
            
            labIngredientes.setTextColor(UIColor.whiteColor())
          
            btnConfirmar.setEnabled(true)
            
        }
        
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
