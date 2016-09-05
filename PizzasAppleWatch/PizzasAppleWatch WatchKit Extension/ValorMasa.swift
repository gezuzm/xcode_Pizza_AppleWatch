//
//  ValorMasa.swift
//  PizzasAppleWatch
//
//  Created by jesus serrano on 03/09/16.
//  Copyright © 2016 gezuzm. All rights reserved.
//

import WatchKit

class ValorMasa: NSObject {

    var descripcionT : String  = ""
    var eleccionT : String = ""
    var descripcionM : String  = ""
    var eleccionM : String = ""
    
    init(dt: String, et: String,dm: String, em: String) {
        descripcionT = dt
        eleccionT = et
        descripcionM = dm
        eleccionM = em
    }
    
}
