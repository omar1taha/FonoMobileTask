//
//  device.swift
//  FonoMobileTask
//
//  Created by Apple on 6/4/20.
//  Copyright © 2020 yourParts. All rights reserved.
//

import Foundation


class device : Codable {
    
    var DeviceName : String?
    var Brand : String?
    var technology : String?
    var announced : String?
    var status : String?
    var dimensions : String?
    var weight : String?
    var sim : String?
    var type : String?
    var size : String?
    var resolution : String?
    var card_slot : String?
    var loudspeaker_ : String?
    var sound_c : String?
    var wlan : String?
    var bluetooth : String?
    var gps : String?
    var radio : String?
    var usb : String?
  //  var features_c : String?
    var battery_c : String?
    var colors : String?
    var sensors : String?
    var cpu : String?
    var os : String?
    var speed: String?
    var network_c : String?
    var features : String?
    var chipset : String?
    var protection : String?
    var gpu : String?
    var nfc : String?
    var price : String?
    var sar : String?
    var single : String?
    var triple : String?
    var charging : String?
    var models : String?

    enum CodingKeys: String, CodingKey {
        
        case DeviceName = "DeviceName"
        case Brand = "Brand"
        case announced = "announced"
        case status = "status"
        case dimensions = "dimensions"
        case weight = "weight"
        case sim = "sim"
        case type = "type"
        case size = "size"
        case resolution = "resolution"
        case card_slot = "card_slot"
        case loudspeaker_ = "loudspeaker_"
        case sound_c = "sound_c"
        case wlan = "wlan"
        case bluetooth = "bluetooth"
        case gps = "gps"
        case radio = "radio"
        case usb = "usb"
       // case features_c = "features_c"
        case battery_c = "battery_c"
        case colors = "colors"
        case sensors = "sensors"
        case cpu = "cpu"
        case os = "os"
        case speed = "speed"
        case network_c = "network_c"
        case features = "features"
        case chipset = "chipset"
        case protection = "protection"
        case gpu = "gpu"
        case nfc = "nfc"
        case price = "price"
        case sar = "sar"
        case triple = "triple"
        case charging = "charging"
        case models = "models"
    }
    
}

