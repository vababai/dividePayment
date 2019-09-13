//
//  QRParameters.swift
//  dividePayment
//
//  Created by Evgeny Salov on 13/09/2019.
//  Copyright © 2019 Evgeny Salov. All rights reserved.
//

import Foundation

struct QRParameters {
    
    var t:  String = ""
    var s:  String = ""
    var fn: String = ""
    var i:  String = ""
    var fp: String = ""
    var n:  String = ""
    
    init(qrParameters parameters:[Substring]) {

        for str in parameters {
            if str.contains("t=") {
                self.t = str.replacingOccurrences(of: "t=", with: "")
            } else if str.contains("s=") {
                self.s = str.replacingOccurrences(of: "s=", with: "")
            } else if str.contains("fn=") {
                self.fn = str.replacingOccurrences(of: "fn=", with: "")
            } else if str.contains("i=") {
                self.i = str.replacingOccurrences(of: "i=", with: "")
            } else if str.contains("fp=") {
                self.fp = str.replacingOccurrences(of: "fp=", with: "")
            } else if str.contains("n=") {
                self.n = str.replacingOccurrences(of: "n=", with: "")
            }
        }
    }
}
