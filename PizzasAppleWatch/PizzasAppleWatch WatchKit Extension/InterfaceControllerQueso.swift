//
//  InterfaceControllerQueso.swift
//  PizzasAppleWatch
//
//  Created by jesus serrano on 03/09/16.
//  Copyright © 2016 gezuzm. All rights reserved.
//

import WatchKit
import Foundation


class InterfaceControllerQueso: WKInterfaceController {

    var arrayQueso: [(String, String)] = [
        ("Chedrar", "Chedrar"),
        ("Mozarella", "Mozarella"),
        ("Parmesano", "Parmesano"),
        ("Sin Queso", "Sin Queso")]
    
    var Tam: String = ""
    var Masa : String = ""
    var Queso : String = ""
    
    
    @IBOutlet var itemPicker: WKInterfacePicker!
    @IBOutlet var btnContinuar: WKInterfaceButton!
    
    
    @IBAction func pickerSelQueso(value: Int) {
       
            Queso = arrayQueso[value].0
    }
    
    
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        
        let c = context as! ValorMasa
        
        Tam=c.eleccionT
        Masa=c.eleccionM
    
    }

    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
        
        let pickerItems: [WKPickerItem] = arrayQueso.map {
            let pickerItem = WKPickerItem()
            pickerItem.title = $0.0
            pickerItem.caption = $0.1
            return pickerItem
        }
        itemPicker.setItems(pickerItems)
        
          Queso = arrayQueso[0].0
        
//btnContinuar.setTitle(Tam + Masa + Queso)
    
    }

    @IBAction func btnContinuarQueso() {
        
       
        let valorContexto = ValorQueso(dt: Tam, et: Tam, dm: Masa, em: Masa, dq: Queso, eq: Queso)
        pushControllerWithName("pantalla_ingredientes", context : valorContexto)
    
    }
    
    
    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }

}
