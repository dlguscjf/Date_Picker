//
//  ViewController.swift
//  Date_Picker
//
//  Created by D7703_06 on 2018. 4. 11..
//  Copyright © 2018년 IceArrow. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var datetext: UILabel!
    @IBOutlet weak var datepicker: UIDatePicker!
    @IBOutlet weak var time: UILabel!
    var timer = Timer();
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
       
        timer = Timer.scheduledTimer(withTimeInterval: 1, repeats: true, block: {(myTimer) in
            self.updatetime()})
    }



    @IBAction func datepicker(_ sender: Any) {
        let dateformatter = DateFormatter()
        dateformatter.locale = Locale(identifier: "ko_KR")
        dateformatter.dateFormat="a yyyy-MM-dd EEE"
        let date = dateformatter.string(from: datepicker.date)
        datetext.text = date
       
        
    }
    func updatetime(){
        let date1 = Date()
        let formatter = DateFormatter()
        formatter.locale = Locale(identifier: "ko_KR")
        formatter.dateFormat = "a HH:mm:ss EEE"
        let time1 = formatter.string(from: date1)
        time.text = time1
    }
}

