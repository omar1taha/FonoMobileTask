//
//  settingsViewController.swift
//  FonoMobileTask
//
//  Created by iMac1 on 6/9/20.
//  Copyright © 2020 yourParts. All rights reserved.
//

import UIKit

class settingsViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {

    var pagingPickerView = UIPickerView()
    
    @IBOutlet weak var pagingTypeTf: UITextField!
   
    override func viewDidLoad() {
        super.viewDidLoad()

        self.pagingPickerView.delegate = self
        self.pagingPickerView.dataSource = self
        
        self.pagingTypeTf.inputView = self.pagingPickerView
        // Do any additional setup after loading the view.
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return 2
    }

    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        if ( row == 0 ) {
            return "Automatic"
        }else{
            return "Manual"
        }
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        if ( row == 0 ) {
           self.pagingTypeTf.text = "Automatic"
        }else{
            self.pagingTypeTf.text = "Manual"
        }
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
