//
//  getDevicesClient.swift
//  FonoMobileTask
//
//  Created by Apple on 6/4/20.
//  Copyright © 2020 yourParts. All rights reserved.
//

import Foundation
import Alamofire
import SwiftyJSON

class getDevicesClient: parentClient{
    
    
    func getPhonesFromApi(parameters: [String: String] , onSuccess: @escaping (JSON) -> (), onFailure: @escaping (JSON) -> ()){
            //videosURL
            self.communicateWithApi(url: getDevices_URL, pagingUrl: nil, method: .post, parameters: parameters, onSuccess: onSuccess, onFailure: onFailure)
        }
        
   

    
}
