//
//  firstTabViewModel.swift
//  FonoMobileTask
//
//  Created by Apple on 6/4/20.
//  Copyright © 2020 yourParts. All rights reserved.
//

import UIKit
import SwiftyJSON

class firstTabViewModel: NSObject {

    
    @IBOutlet var devicesClient : getDevicesClient!
    
    var devicesArr : [device] = []
    
    func getAllDevices(onSuccess: @escaping (Bool)->(), onFailure: @escaping (String?)->()) {
        
        var paramsDic = ["token" : apiToken  , "brand" : "samsung"]
        
        self.devicesClient.getPhonesFromApi(parameters: paramsDic, onSuccess: { (responseSuccess) in
            
            do {
                self.devicesArr = try JSONDecoder().decode([device].self, from: responseSuccess.data!)
            }catch let err{
                print(err.localizedDescription)
            }
            
            onSuccess(true)
        
        }) { (responseFailure) in
            //onFailure error message from server
            let error = "We encountered error. Try again later"
            onFailure(error)
        }
        
    }
}
