//
//  ViewController.swift
//  FonoMobileTask
//
//  Created by Apple on 6/4/20.
//  Copyright © 2020 yourParts. All rights reserved.
//

import UIKit
import NVActivityIndicatorView




class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    var threeshold = 0
    
    @IBOutlet weak var activityind: NVActivityIndicatorView!
    
    @IBOutlet weak var devicesTableVIew: UITableView!
    @IBOutlet var firstTabVM : firstTabViewModel!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let nib = UINib.init(nibName: String(describing: mobileTableViewCell.self), bundle: nil)
        self.devicesTableVIew.register(nib, forCellReuseIdentifier: "mobileCell")
        
        // Do any additional setup after loading the view, typically from a nib.
        self.devicesTableVIew.delegate = self
        self.devicesTableVIew.dataSource = self
        
        fetchPhones()
        
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        let imageDataDict:[String: [device]] = ["devices": self.firstTabVM.devicesArr]
        NotificationCenter.default.post(name: NSNotification.Name(rawValue: notificationName), object: nil, userInfo: imageDataDict)
    }

    
    func fetchPhones(){
        self.activityind.startAnimating()
        self.firstTabVM.getAllDevices(onSuccess: { isSuccess in
            //
            self.activityind.stopAnimating()
            self.threeshold = 10
            self.devicesTableVIew.reloadData()
        }) { (error) in
            self.activityind.stopAnimating()
            AlertViewer().showAlertView(withMessage: error!, onController: self)
        }
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.threeshold
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        var cell = tableView.dequeueReusableCell(withIdentifier: "mobileCell") as! mobileTableViewCell
        
        cell.mobileName.text = self.firstTabVM.devicesArr[indexPath.row].DeviceName
        cell.mobileStatus.text = self.firstTabVM.devicesArr[indexPath.row].status
        cell.mobileColor.text = self.firstTabVM.devicesArr[indexPath.row].colors

        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 97.0
    }

    func tableView(_ tableView: UITableView, willDisplay cell: UITableViewCell, forRowAt indexPath: IndexPath) {
        if indexPath.section == tableView.numberOfSections - 1 &&
            indexPath.row == tableView.numberOfRows(inSection: indexPath.section) - 1 {
            //print(" you reached end of the table")
            self.threeshold = self.threeshold + 10
            if self.threeshold <= 100{
                print(self.threeshold)
                self.devicesTableVIew.reloadData()
            }
        }
    }
    
    
}

