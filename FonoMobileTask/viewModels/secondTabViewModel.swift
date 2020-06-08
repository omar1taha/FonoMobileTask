//
//  secondTabViewModel.swift
//  FonoMobileTask
//
//  Created by iMac1 on 6/8/20.
//  Copyright © 2020 yourParts. All rights reserved.
//

import UIKit

class secondTabViewModel: NSObject {
    var selectedArr: [device] = []
    var devicesArray : [device] = []
    var resultDevices : [device] = []
    
    var selectCount = 0
    
    func filterArr( text: String , completion: @escaping(Bool)->() ){
        self.resultDevices = devicesArray.filter { $0.DeviceName?.localizedCaseInsensitiveContains(text) ?? false }
        completion(true)
    }
    
    func selectAndarrange(indexrow: Int, completion: @escaping(Bool)->()){
        
        for (index, element) in self.devicesArray.enumerated(){
            if element.DeviceName == self.resultDevices[indexrow].DeviceName{
                
                if (self.resultDevices[indexrow].isSelected == true){
                    self.devicesArray[index].isSelected = false
                    //self.devicesArray.move(at: index, to: 0)
                    self.selectCount = self.selectCount - 1
                    for (indexSelected, elementSelected) in selectedArr.enumerated(){
                        if elementSelected.DeviceName == element.DeviceName{
                            self.selectedArr.remove(at: indexSelected)
                        }
                    }
                }else{
                    if (self.selectCount < 2){
                        self.devicesArray[index].isSelected = true
                        self.selectedArr.append(self.devicesArray[index])

                        self.devicesArray.move(at: index, to: 0)
                        self.selectCount = self.selectCount + 1
                    }
                }
            }
        }
        
        completion(true)
        
    }

}

extension Array where Element: Equatable {
    mutating func move(_ item: Element, to newIndex: Index) {
        if let index = index(of: item) {
            move(at: index, to: newIndex)
        }
    }
    
    mutating func bringToFront(item: Element) {
        move(item, to: 0)
    }
    
    mutating func sendToBack(item: Element) {
        move(item, to: endIndex-1)
    }
}

extension Array {
    mutating func move(at index: Index, to newIndex: Index) {
        insert(remove(at: index), at: newIndex)
    }
}

