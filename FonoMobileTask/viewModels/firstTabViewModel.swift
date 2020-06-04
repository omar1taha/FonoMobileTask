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
    
   // var videosArr : [VideosModel] = []
    
    func getAllDevices(onSuccess: @escaping (Bool)->(), onFailure: @escaping (String?)->()) {
        
        
        self.devicesClient.getPhonesFromApi(parameters: [:], onSuccess: { (responseSuccess) in
            if responseSuccess != JSON.null{
               // self.videosArr = videoParser().parsePhotos(fromResponse: responseSuccess)
                onSuccess(true)
            }else{
                onSuccess(false)
            }
            
            
        }) { (responseFailure) in
            //onFailure error message from server
            let error = "We encountered error. Try again later"
            onFailure(error)
        }
        
    }
}
