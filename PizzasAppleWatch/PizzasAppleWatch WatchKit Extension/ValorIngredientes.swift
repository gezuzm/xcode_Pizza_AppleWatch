//
//  ValorIngredientes.swift
//  PizzasAppleWatch
//
//  Created by jesus serrano on 03/09/16.
//  Copyright © 2016 gezuzm. All rights reserved.
//

import WatchKit

class ValorIngredientes: NSObject {
    
    var descripcionT : String  = ""
    var eleccionT : String = ""
    var descripcionM : String  = ""
    var eleccionM : String = ""
    var descripcionQ: String  = ""
    var eleccionQ : String = ""
    var descripcionI: String = ""
    var eleccionI : String = ""
    var mensaje : String = ""
    
    
    init(dt: String, et: String,dm: String, em: String,
         dq: String, eq: String, di : String, ei : String,
         m: String) {
        descripcionT = dt
        eleccionT = et
        descripcionM = dm
        eleccionM = em
        descripcionQ = dq
        eleccionQ = eq
        descripcionI = di
        eleccionI = ei
        mensaje = m
    }

}
