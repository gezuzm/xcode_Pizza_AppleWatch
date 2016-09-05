//
//  InterfaceControllerIngredientes.swift
//  PizzasAppleWatch
//
//  Created by jesus serrano on 03/09/16.
//  Copyright © 2016 gezuzm. All rights reserved.
//

import WatchKit
import Foundation


class InterfaceControllerIngredientes: WKInterfaceController {

    var num: Int = 0
    var  contador: Int = 0
    var Tam: String = ""
    var Masa : String = ""
    var Queso : String = ""
    var Ingredientes : String = ""
    var Mensaje : String = ""
    
    var aceituna: Bool = false
    var anchoa: Bool = false
    var cebolla: Bool = false
    var jamon: Bool = false
    var pavo: Bool = false
    var pepperoni: Bool = false
    var salami: Bool = false
    var salchicha: Bool = false
    
    @IBOutlet var chkAceituna: WKInterfaceSwitch!
    @IBOutlet var chkAnchoa: WKInterfaceSwitch!
    @IBOutlet var chkCebolla: WKInterfaceSwitch!
    @IBOutlet var chkJamon: WKInterfaceSwitch!
    @IBOutlet var chkPavo: WKInterfaceSwitch!
    @IBOutlet var chkPepperoni: WKInterfaceSwitch!
    @IBOutlet var chkSalchicha: WKInterfaceSwitch!
    @IBOutlet var chkSalami: WKInterfaceSwitch!
    
    @IBOutlet var btnContinuar: WKInterfaceButton!
    
    @IBAction func StateAceitunas(value: Bool) {
        
        aceituna = value
    }
    
    @IBAction func StateAnchoas(value: Bool) {
        anchoa = value

    }
    
    
    @IBAction func StateCebolla(value: Bool) {
    cebolla = value
    }
  
    
    @IBAction func StateJamon(value: Bool) {
    jamon = value
    }
    
    
    @IBAction func StatePavo(value: Bool) {
    pavo = value
    }
    
    
    @IBAction func StatePepperoni(value: Bool) {
    pepperoni = value
    }
    
    
    @IBAction func StateSalami(value: Bool) {
    salami = value
    }
    
    
    @IBAction func StateSalchicha(value: Bool) {
    salchicha = value
    }
    
    
    
    @IBAction func btnContinuarIngredientes() {
        
        num  = RegresaNumIngredientes()
        Mensaje = ""
        
        if (num > 5)
        {
            
            Mensaje = "NO es posible procesar tu pedido, ya que " +
                "seleccionaste mas de 5 ingredientes, favor de regresar a la pantalla anterior y " + "eliminar los sobrantes. " + "gracias."
        }
        else if (num == 0)
        {
        Mensaje = "NO es posible procesar tu pedido. Es necesario " +
                "seleccionar por lo menos 1 ingrediente. Favor de regresar a la pantalla anterior y elegirlo, " + "gracias."
        }
        else{
            
            
            Ingredientes = RegresaIngredientes()
            
        }

        
        let valorContexto = ValorIngredientes(dt: Tam, et: Tam, dm: Masa, em: Masa, dq: Queso, eq: Queso,
                                              di: Ingredientes,ei:  Ingredientes,
                                              m: Mensaje)
        
        pushControllerWithName("pantalla_confirmacion", context : valorContexto)
        
    }
    
    
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        
        
        let c = context as! ValorQueso
        
        Tam=c.eleccionT
        Masa=c.eleccionM
        Queso=c.eleccionQ

      // btnContinuar.setTitle(Tam + Masa + Queso)
        // Configure interface objects here.
    }

    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
        
        
        chkAceituna.setOn(false)
        chkAnchoa.setOn(false)
        chkCebolla.setOn(false)
        chkJamon.setOn(false)
        chkPavo.setOn(false)
        chkPepperoni.setOn(false)
        chkSalami.setOn(false)
        chkSalchicha.setOn(false)
        
        aceituna = false
        anchoa = false
        cebolla = false
        jamon = false
        pavo = false
        pepperoni = false
        salami = false
        salchicha = false
        
        contador += 1
        
        //btnContinuar.setTitle(String(contador))
        
    }

    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }
    
    
    func RegresaNumIngredientes() -> Int
    {
        var contador : Int = 0
        
        if (aceituna == true)
        {
            contador += 1
        }
        
        if (anchoa == true)
        {
            contador += 1
        }
        
        if (cebolla == true)
        {
            contador += 1
        }
        
        if (jamon == true)
        {
            contador += 1
        }
        
        if (pavo == true)
        {
            contador += 1
        }
        
        if (pepperoni == true)
        {
            contador += 1
        }
        
        if (salami == true)
        {
            contador += 1
        }
        
        if (salchicha == true)
        {
            contador += 1
        }
        
        return contador
        
    }
    
    
    func RegresaIngredientes() -> String
    {
        var ingredientes : String = ""
        
        if (aceituna == true)
        {
            ingredientes += "aceitunas,"
        }
        
        if (anchoa == true)
        {
            ingredientes += "anchoas,"
        }
        
        if (cebolla == true)
        {
            ingredientes += "cebolla,"
        }
        
        if (jamon == true)
        {
            ingredientes += "jamon,"
        }
        
        if (pavo == true)
        {
            ingredientes += "pavo,"
        }
        
        if (pepperoni == true)
        {
            ingredientes += "pepperoni,"
        }
        
        if (salami == true)
        {
            ingredientes += "salami,"
        }
        
        if (salchicha == true)
        {
            ingredientes += "salchicha"
        }
        
        return ingredientes
        
    }
    

    
    

}
