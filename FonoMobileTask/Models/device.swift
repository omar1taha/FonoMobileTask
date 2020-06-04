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
    var features_c : String?
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
        case features_c = "features_c"
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
    
    init(DeviceName : String, Brand : String, announced : String , status: String,dimensions: String,weight: String, sim: String, type: String, size: String, resolution: String, card_slot: String, loudspeaker_: String, sound_c: String, wlan: String, gps: String, radio: String,  usb: String,  features_c: String,  battery_c: String,  colors: String,  sensors: String,  cpu: String,  os: String,  speed: String,  network_c: String, features: String, chipset: String, protection: String, gpu: String, nfc: String, price: String, sar: String, triple: String, charging: String , models: String ) {
        
        self.DeviceName = DeviceName
        self.Brand = Brand
        self.announced = announced
        self.status = status
        self.dimensions = dimensions
        self.weight = weight
        self.sim = sim
        self.type = type
        self.size = size
        self.resolution = resolution
        self.card_slot = card_slot
        self.loudspeaker_ = loudspeaker_
        self.sound_c = sound_c
        self.wlan = wlan
        self.gps = gps
        self.radio = radio
        self.usb = usb
        self.features_c = features_c
        self.battery_c = battery_c
        self.colors = colors
        self.sensors = sensors
        self.cpu = cpu
        self.os = os
        self.speed = speed
        self.network_c = network_c
        self.features = features
        self.chipset = chipset
        self.protection = protection
        self.gpu = gpu
        self.nfc = nfc
        self.sar = sar
        self.price = price
        self.triple = triple
        self.charging = charging
        self.models = models
    }
    
    required convenience init(from decoder: Decoder) throws {
        
        let values = try decoder.container(keyedBy: CodingKeys.self)
        let DeviceName = try values.decodeIfPresent(String.self, forKey: .DeviceName)!
        let Brand = try values.decodeIfPresent(String.self, forKey: .Brand)!
        let announced = try values.decodeIfPresent(String.self, forKey: .announced)!
        let status = try values.decodeIfPresent(String.self, forKey: .status)!
        let dimensions = try values.decodeIfPresent(String.self, forKey: .dimensions)!
        let weight = try values.decodeIfPresent(String.self, forKey: .weight)!
        let sim = try values.decodeIfPresent(String.self, forKey: .sim)!
        let type = try values.decodeIfPresent(String.self, forKey: .type)!
        let size = try values.decodeIfPresent(String.self, forKey: .size)!
        let resolution = try values.decodeIfPresent(String.self, forKey: .resolution)!
        let card_slot = try values.decodeIfPresent(String.self, forKey: .card_slot)!
        let loudspeaker_ = try values.decodeIfPresent(String.self, forKey: .loudspeaker_)!
        let sound_c = try values.decodeIfPresent(String.self, forKey: .sound_c)!
        let wlan = try values.decodeIfPresent(String.self, forKey: .wlan)!
        let gps = try values.decodeIfPresent(String.self, forKey: .gps)!
        let radio = try values.decodeIfPresent(String.self, forKey: .radio)!
        let usb = try values.decodeIfPresent(String.self, forKey: .usb)!
        let features_c = try values.decodeIfPresent(String.self, forKey: .features_c)!
        let battery_c = try values.decodeIfPresent(String.self, forKey: .battery_c)!
        let colors = try values.decodeIfPresent(String.self, forKey: .colors)!
        let sensors = try values.decodeIfPresent(String.self, forKey: .sensors)!
        let cpu = try values.decodeIfPresent(String.self, forKey: .cpu)!
        let os = try values.decodeIfPresent(String.self, forKey: .os)!
        let speed = try values.decodeIfPresent(String.self, forKey: .speed)!
        let network_c = try values.decodeIfPresent(String.self, forKey: .network_c)!
        let features = try values.decodeIfPresent(String.self, forKey: .features)!
        let chipset = try values.decodeIfPresent(String.self, forKey: .chipset)!
        let protection = try values.decodeIfPresent(String.self, forKey: .protection)!
        let gpu = try values.decodeIfPresent(String.self, forKey: .gpu)!
        let nfc = try values.decodeIfPresent(String.self, forKey: .nfc)!
        let sar = try values.decodeIfPresent(String.self, forKey: .sar)!
        let price = try values.decodeIfPresent(String.self, forKey: .price)!
        let triple = try values.decodeIfPresent(String.self, forKey: .triple)!
        let charging = try values.decodeIfPresent(String.self, forKey: .charging)!
        let models = try values.decodeIfPresent(String.self, forKey: .models)!

        
     
        self.init(DeviceName: DeviceName, Brand: Brand, announced: announced, status: status, dimensions: dimensions, weight: weight, sim: sim, type: type, size: size, resolution: resolution, card_slot: card_slot, loudspeaker_: loudspeaker_, sound_c: sound_c, wlan: wlan, gps: gps, radio: radio, usb: usb, features_c: features_c, battery_c: battery_c, colors: colors, sensors: sensors, cpu: cpu, os: os, speed: speed, network_c: network_c, features: features, chipset: chipset, protection: protection, gpu: gpu, nfc: nfc, price: price, sar: sar, triple: triple, charging: charging,  models: models )
    }
    
    func encode(to encoder: Encoder) throws
    {
        var values = encoder.container(keyedBy: CodingKeys.self)
        try values.encodeIfPresent(self.DeviceName, forKey: .DeviceName)
        try values.encodeIfPresent(self.Brand, forKey: .Brand)
        try values.encodeIfPresent(self.announced, forKey: .announced)
        try values.encodeIfPresent(self.status, forKey: .status)
        try values.encodeIfPresent(self.dimensions, forKey: .dimensions)
        try values.encodeIfPresent(self.weight, forKey: .weight)
        try values.encodeIfPresent(self.sim, forKey: .sim)
        try values.encodeIfPresent(self.type, forKey: .type)
        try values.encodeIfPresent(self.size, forKey: .size)
        try values.encodeIfPresent(self.resolution, forKey: .resolution)
        try values.encodeIfPresent(self.card_slot, forKey: .card_slot)
        try values.encodeIfPresent(self.loudspeaker_, forKey: .loudspeaker_)
        try values.encodeIfPresent(self.wlan, forKey: .wlan)
        try values.encodeIfPresent(self.gps, forKey: .gps)
        try values.encodeIfPresent(self.radio, forKey: .radio)
        try values.encodeIfPresent(self.usb, forKey: .usb)
        try values.encodeIfPresent(self.features_c, forKey: .features_c)
        try values.encodeIfPresent(self.battery_c, forKey: .battery_c)
        try values.encodeIfPresent(self.colors, forKey: .colors)
        try values.encodeIfPresent(self.sensors, forKey: .sensors)
        try values.encodeIfPresent(self.cpu, forKey: .cpu)
        try values.encodeIfPresent(self.os, forKey: .os)
        try values.encodeIfPresent(self.speed, forKey: .speed)
        try values.encodeIfPresent(self.network_c, forKey: .network_c)
        try values.encodeIfPresent(self.features, forKey: .features)
        try values.encodeIfPresent(self.chipset, forKey: .chipset)
        try values.encodeIfPresent(self.protection, forKey: .protection)
        try values.encodeIfPresent(self.gpu, forKey: .gpu)
        try values.encodeIfPresent(self.nfc, forKey: .nfc)
        try values.encodeIfPresent(self.sar, forKey: .sar)
        try values.encodeIfPresent(self.price, forKey: .price)
        try values.encodeIfPresent(self.triple, forKey: .triple)
        try values.encodeIfPresent(self.models, forKey: .models)
    }
    
}

