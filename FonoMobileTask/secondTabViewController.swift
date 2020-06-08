//
//  secondTabViewController.swift
//  FonoMobileTask
//
//  Created by Apple on 6/6/20.
//  Copyright © 2020 yourParts. All rights reserved.
//

import UIKit

class secondTabViewController: UIViewController , UITextFieldDelegate, UITableViewDataSource, UITableViewDelegate{

    @IBOutlet weak var compareBtn: UITabBarItem!
    var devicesArray : [device] = []
    var resultDevices : [device] = []
    @IBOutlet weak var searchTf: UITextField!
    @IBOutlet weak var device1Thumb: UIImageView!
    @IBOutlet weak var device2Thumb: UIImageView!
    @IBOutlet weak var device1: UILabel!
    @IBOutlet weak var device2: UILabel!
    
    @IBOutlet weak var searchTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let nib = UINib.init(nibName: String(describing: mobileTableViewCell.self), bundle: nil)
        self.searchTableView.register(nib, forCellReuseIdentifier: "mobileCell")
        
        self.device1.isHidden = true
        self.device2.isHidden = true
        self.device1Thumb.isHidden = true
        self.device2Thumb.isHidden = true
        self.searchTableView.isHidden = true
        self.searchTableView.delegate = self
        self.searchTableView.dataSource = self
        self.searchTf.delegate = self

       // self.senderDelegate = self
        self.createObserver()
    }

    func createObserver(){
        NotificationCenter.default.addObserver(self, selector: #selector(self.passDataArr(_:)), name: NSNotification.Name(rawValue: notificationName), object: nil)

    }

    @objc func passDataArr(_ notification: NSNotification) {
        print(notification.userInfo ?? "")
        if let dict = notification.userInfo as NSDictionary? {
            if let devices = dict["devices"] as? [device]{
                self.devicesArray = devices
            }
        }
    }
    
    
    @IBAction func searchTFDevice(_ sender: UITextField) {
        
        self.resultDevices = devicesArray.filter { $0.DeviceName?.localizedCaseInsensitiveContains(sender.text!) ?? false }

//        self.resultDevices = devicesArray.filter({$0.DeviceName?.contains("\(sender.text)") ?? false}) ?? []
        
        if (sender.text == ""){
            self.searchTableView.isHidden = true
        }else{
            self.searchTableView.reloadData()

        }
        
    
    }
    
    @IBAction func searchDevice(_ sender: UITextField) {
   
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.resultDevices.count ?? 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        var cell = tableView.dequeueReusableCell(withIdentifier: "mobileCell") as! mobileTableViewCell
        
        cell.mobileName.text = self.resultDevices[indexPath.row].DeviceName
        cell.mobileStatus.text = self.resultDevices[indexPath.row].status
        cell.mobileColor.text = self.resultDevices[indexPath.row].colors
        
        return cell
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
