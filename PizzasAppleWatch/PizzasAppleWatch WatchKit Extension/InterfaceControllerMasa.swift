//
//  InterfaceControllerMasa.swift
//  PizzasAppleWatch
//
//  Created by jesus serrano on 03/09/16.
//  Copyright © 2016 gezuzm. All rights reserved.
//

import WatchKit
import Foundation


class InterfaceControllerMasa: WKInterfaceController {

    @IBOutlet var itemPicker: WKInterfacePicker!
    
    @IBOutlet var btnContinuar: WKInterfaceButton!
    
    var arrayTam: [(String, String)] = [
        ("Crujiente", "Crujiente"),
        ("Delgada", "Delgada"),
        ("Gruesa", "Gruesa")]
    
    var Tam: String = ""
    var Masa : String = ""
    
    
    @IBAction func pickerSelMasa(value: Int) {
        
           Masa = arrayTam[value].0
    }
    
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        
        let c = context as! ValorTam
        
        Tam = c.eleccion
    
      // btnContinuar.setTitle(Tam)
    }

    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
        
        let pickerItems: [WKPickerItem] = arrayTam.map {
            let pickerItem = WKPickerItem()
            pickerItem.title = $0.0
            pickerItem.caption = $0.1
            return pickerItem
        }
        
        itemPicker.setItems(pickerItems)
    
         Masa = arrayTam[0].0
    }

    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }

    @IBAction func btnContinuarMasa() {
        
        // let valorTMP : String = "prueba"
        let valorContexto = ValorMasa(dt: Tam, et: Tam, dm: Masa, em: Masa)
       pushControllerWithName("pantalla_queso", context : valorContexto)

    
    }
}
