//
//  compareViewController.swift
//  FonoMobileTask
//
//  Created by iMac1 on 6/8/20.
//  Copyright © 2020 yourParts. All rights reserved.
//

import UIKit
import SpreadsheetView

class compareViewController: UIViewController, SpreadsheetViewDataSource, SpreadsheetViewDelegate {

    
    var selectedDeviceArr : [device] = []

    @IBOutlet weak var spreadSheetView: SpreadsheetView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        spreadSheetView.register(ScheduleCell.self, forCellWithReuseIdentifier: String(describing: ScheduleCell.self))

        spreadSheetView.dataSource = self
        spreadSheetView.delegate = self
        // Do any additional setup after loading the view.
    }
    
    
    func numberOfColumns(in spreadsheetView: SpreadsheetView) -> Int {
        return 2
    }
    
    func numberOfRows(in spreadsheetView: SpreadsheetView) -> Int {
        return 6
    }
    
    func spreadsheetView(_ spreadsheetView: SpreadsheetView, widthForColumn column: Int) -> CGFloat {
            return self.view.frame.width / 2.0
    }
    
    func spreadsheetView(_ spreadsheetView: SpreadsheetView, heightForRow row: Int) -> CGFloat {
            return self.view.frame.height / 5.0
    }

    func spreadsheetView(_ spreadsheetView: SpreadsheetView, cellForItemAt indexPath: IndexPath) -> Cell? {
        
        let cell = spreadsheetView.dequeueReusableCell(withReuseIdentifier: String(describing: ScheduleCell.self), for: indexPath) as! ScheduleCell

        
        switch indexPath.row {
            case 0:
                if indexPath.column == 0{
                    cell.label.text = self.selectedDeviceArr[0].DeviceName
                }else{
                    cell.label.text = self.selectedDeviceArr[1].DeviceName
                }
            case 1:
                if indexPath.column == 0{
                    cell.label.text = self.selectedDeviceArr[0].announced
                }else{
                    cell.label.text = self.selectedDeviceArr[1].announced
                }
            case 2:
                if indexPath.column == 0{
                    cell.label.text = self.selectedDeviceArr[0].price
                }else{
                    cell.label.text = self.selectedDeviceArr[1].price
                }
            case 3:
                if indexPath.column == 0{
                    cell.label.text = self.selectedDeviceArr[0].models
                }else{
                    cell.label.text = self.selectedDeviceArr[1].models
                }
            case 4:
                if indexPath.column == 0{
                    cell.label.text = self.selectedDeviceArr[0].colors
                }else{
                    cell.label.text = self.selectedDeviceArr[1].colors
                }
            case 5:
                if indexPath.column == 0{
                    cell.label.text = self.selectedDeviceArr[0].cpu
                }else{
                    cell.label.text = self.selectedDeviceArr[1].cpu
                }
            default:
                break
            
            }

        
 
  
        return cell
        
    }
    
    
    @IBAction func exitSearch(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
    
 

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
