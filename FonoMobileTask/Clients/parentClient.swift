//
//  parentClient.swift
//  FonoMobileTask
//
//  Created by Apple on 6/4/20.
//  Copyright © 2020 yourParts. All rights reserved.
//

import Foundation


import UIKit
import Alamofire
import SwiftyJSON

class parentClient: NSObject {
    
    //let storedToken = UserDefaults.standard.string(forKey: PHOTOGRAPHER_TOKEN)
    
    let headers: HTTPHeaders? = nil
    let urlHeaders : HTTPHeaders? = nil
    

    
    func communicateWithApi(url: String?, pagingUrl:String?, method: HTTPMethod, parameters: [String:String]?, onSuccess: @escaping (JSON) -> Void, onFailure: @escaping (JSON) -> Void) {
        
        var apiURL: URL?
        if url != nil {
            apiURL = URL(string: url!)
        }else{
            apiURL = URL(string: pagingUrl!)
        }
        
        //print(self.headers as Any)
        //print(parameters as Any)
        Alamofire.request(apiURL!, method: method, parameters: parameters, encoding: JSONEncoding.default, headers: self.headers).responseJSON { (response) in
            
            
            print("Request: \(String(describing: response.request))")
            print("Response: \(String(describing: response.response))")
            print("Result: \(response.result)")
            
            
            if response.response?.statusCode == 200 {
                
                do{
                    let responseJson = try JSON(data: response.data!)
                    //print(responseJson)
                    onSuccess(responseJson)
                }catch _{
                    //print(error)
                    onSuccess(JSON.null)
                }
                
                
            }else if response.response?.statusCode == 400{
                
            }else{
                
         
            }
        }
    }
    
    
}
