//
//  InterfaceControllerMasa.swift
//  PizzasAppleWatch
//
//  Created by jesus serrano on 03/09/16.
//  Copyright © 2016 gezuzm. All rights reserved.
//

import WatchKit
import Foundation


class InterfaceControllerTam: WKInterfaceController {
   
    @IBOutlet var itemPicker: WKInterfacePicker!
    
    @IBOutlet var btnContinuar: WKInterfaceButton!
   
    var arrayTam: [(String, String)] = [
        ("Chica", "Chica"),
        ("Mediana", "Mediana"),
        ("Grande", "Grande")]

    var Tam: String = ""
    
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        
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
   
        Tam = arrayTam[0].0
    }
    
    @IBAction func pickerSelTam(value: Int) {
        
         // NSLog("List Picker: \(arrayMasas[value].0) selected")
        Tam = arrayTam[value].0
        
    }

    
    @IBAction func btnContinuarTam() {
        
        
        // let valorTMP : String = "prueba"
         let valorContexto = ValorTam(d: Tam,e: Tam )
         pushControllerWithName("pantalla_masa", context : valorContexto)

    }
    

    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }

}
