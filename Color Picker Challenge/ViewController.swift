//
//  ViewController.swift
//  Color Picker Challenge
//
//  Created by Sharoze Amir on 10/5/18.
//  Copyright © 2018 Sharoze Amir. All rights reserved.
//

import UIKit

struct Color {
    var name: String
    var UIColor: UIColor
}

class ViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return colors.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return colors[row].name
   }
    
   
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        self.view.backgroundColor = colors[row].UIColor
        self.LabelColor.text = colors[row].name
    }
    
    
    @IBOutlet weak var LabelColor: UILabel!
    @IBOutlet weak var pickerContr: UIPickerView!
    var colorIndex = 0
    var colors = [Color]();
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        self.pickerContr.delegate = self
        self.pickerContr.dataSource = self
        
        
        colors = [Color(name: "Red", UIColor: UIColor.red), Color(name: "Orange", UIColor: UIColor.orange), Color(name: "Yellow", UIColor: UIColor.yellow), Color(name: "Green", UIColor: UIColor.green), Color(name: "Blue", UIColor: UIColor.blue), Color(name: "Purple", UIColor: UIColor.purple)]
        
        self.view.backgroundColor = colors[colorIndex].UIColor
        self.LabelColor.text = colors[colorIndex].name
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

