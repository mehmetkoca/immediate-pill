//
//  ViewController.swift
//  ImmediatePill
//
//  Created by Mehmet Koca on 30/06/2017.
//  Copyright © 2017 on3. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UIPickerViewDataSource,UIPickerViewDelegate {

    @IBOutlet weak var statePicker: UIPickerView!
    @IBOutlet weak var statePickerBtn: UIButton!
    @IBOutlet weak var buyNowBtn: UIImageView!
    @IBOutlet weak var successImage: UIImageView!
    @IBOutlet weak var countryLbl: UILabel!
    @IBOutlet weak var countryTxt: UITextField!
    @IBOutlet weak var zipLbl: UILabel!
    @IBOutlet weak var zipTxt: UITextField!
    
    let states = ["Alaska","Arkansas","Alabama","California","Maine","New York"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        statePicker.dataSource = self
        statePicker.delegate = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func stateBtnPressed(_ sender: Any) {
        statePicker.isHidden = false
        countryLbl.isHidden = true
        countryTxt.isHidden = true
        zipLbl.isHidden = true
        zipTxt.isHidden = true
        
    }
    @IBAction func BtnBuy(_ sender: Any) {
        successImage.isHidden = false
        for view in self.view.subviews as [UIView]{
            view.isHidden = true
        }
        successImage.isHidden = false
    }
    
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return states.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return states[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        statePickerBtn.setTitle(states[row], for: UIControlState())
        statePicker.isHidden = true
        countryTxt.isHidden = false
        countryLbl.isHidden = false
        zipTxt.isHidden = false
        zipLbl.isHidden = false
    }

}

