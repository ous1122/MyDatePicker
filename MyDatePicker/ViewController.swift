//
//  ViewController.swift
//  MyDatePicker
//
//  Created by D7703_13 on 2018. 4. 11..
//  Copyright © 2018년 ous. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var myTimePicker: UIDatePicker! //데이트피커 아울렛변수 지정
    @IBOutlet weak var timeLabel: UILabel!
    
    @IBOutlet weak var dateLabel: UILabel!
    
    @IBOutlet weak var myDate: UIDatePicker!
    override func viewDidLoad() {
        super.viewDidLoad()
        timeLabel.text = "Please Pick the Time."
        dateLabel.text = "Please Pick the Date."
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    @IBAction func changeTimePicker(_ sender: Any) { //데이트 피커를 썼을때에
        print("시간이 변경되었다.") //움직일때마다 프린터 출력
        // dateFormat
        let formatter = DateFormatter() //포메터를 데이트 포멧으로 준다.
        formatter.dateFormat = "HH시 mm분  a"
        timeLabel.text = formatter.string(from: myTimePicker.date) //텍스트에 인트값을 스트링으로 변환하여 올려야 하기때문에 formatter.string(from:아울렛.date)
        
    }
    
    @IBAction func changeDatdPicker(_ sender: Any) {
        print("날짜가 변경되었다.")
        let formatter = DateFormatter()
        formatter.dateFormat = "yyyy년 MM월 dd일 HH시 mm분  a EEEE"
        dateLabel.text = formatter.string(from: myDate.date)
        
    }
}

