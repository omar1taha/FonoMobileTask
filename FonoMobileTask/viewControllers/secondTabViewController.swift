//
//  secondTabViewController.swift
//  FonoMobileTask
//
//  Created by Apple on 6/6/20.
//  Copyright © 2020 yourParts. All rights reserved.
//

import UIKit

class secondTabViewController: UIViewController , UITextFieldDelegate, UITableViewDataSource, UITableViewDelegate{

    @IBOutlet weak var compareBtn: UIButton!
    @IBOutlet var secondTabVM : secondTabViewModel!
    @IBOutlet weak var searchTf: UITextField!
    
    @IBOutlet weak var searchTableView: UITableView!
    
    override func viewWillAppear(_ animated: Bool) {
        self.createObserver()

    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let nib = UINib.init(nibName: String(describing: mobileTableViewCell.self), bundle: nil)
        self.searchTableView.register(nib, forCellReuseIdentifier: "mobileCell")
        
       
        self.searchTableView.delegate = self
        self.searchTableView.dataSource = self
        self.searchTf.delegate = self

       // self.senderDelegate = self
    }

    func createObserver(){
        NotificationCenter.default.addObserver(self, selector: #selector(self.passDataArr(_:)), name: NSNotification.Name(rawValue: notificationName), object: nil)

    }

    @objc func passDataArr(_ notification: NSNotification) {
        print(notification.userInfo ?? "")
        if let dict = notification.userInfo as NSDictionary? {
            if let devices = dict["devices"] as? [device]{
                self.secondTabVM.devicesArray = devices
                self.secondTabVM.resultDevices = self.secondTabVM.devicesArray
                self.searchTableView.isHidden = false
                self.searchTableView.reloadData()
            }
        }
    }
    
    
    @IBAction func searchTFDevice(_ sender: UITextField) {
        
        self.secondTabVM.filterArr(text: sender.text!) { (isSuccess) in
            
            if (sender.text == ""){
                self.secondTabVM.resultDevices = self.secondTabVM.devicesArray
            }
            
            self.searchTableView.reloadData()
            
        }
    
    }
    
    @IBAction func searchDevice(_ sender: UITextField) {
   
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if (segue.identifier == "gotoCompare"){
            let destVC = segue.destination as! compareViewController
            destVC.selectedDeviceArr = self.secondTabVM.selectedArr
        }
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.secondTabVM.resultDevices.count ?? 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        var cell = tableView.dequeueReusableCell(withIdentifier: "mobileCell") as! mobileTableViewCell
        
        cell.mobileName.text = self.secondTabVM.resultDevices[indexPath.row].DeviceName
        cell.mobileStatus.text = self.secondTabVM.resultDevices[indexPath.row].status
        cell.mobileColor.text = self.secondTabVM.resultDevices[indexPath.row].colors
        cell.accDet.isHidden = true
        if (self.secondTabVM.resultDevices[indexPath.row].isSelected == true ){
            cell.deviceCheckBox.on = true
        }else{
            cell.deviceCheckBox.on = false
        }
        return cell
    }
    
    
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
            self.secondTabVM.selectAndarrange(indexrow: indexPath.row) { (isSuccess) in
                
                self.secondTabVM.resultDevices = self.secondTabVM.devicesArray
                self.searchTf.text = ""
                self.searchTableView.reloadData()
                
                if (self.secondTabVM.selectCount == 2){
                    self.compareBtn.isHidden = false
                }else if self.secondTabVM.selectCount > 2{
                    self.compareBtn.isHidden = false

                    AlertViewer().showAlertView(withMessage: "You can't select more than 2 devices to compare", onController: self)
                }else{
                    self.compareBtn.isHidden = true
                }
                
            }
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 97.0
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

