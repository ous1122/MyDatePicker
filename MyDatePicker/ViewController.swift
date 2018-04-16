//
//  ViewController.swift
//  MyDatePicker
//
//  Created by D7703_13 on 2018. 4. 11..
//  Copyright © 2018년 ous. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var myTimer = Timer()
    @IBOutlet weak var myTimePicker: UIDatePicker!//데이트피커 아울렛변수 지정
    @IBOutlet weak var timeLabel: UILabel!
    
    @IBOutlet weak var nowTime: UILabel!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        timeLabel.text = "Please Pick the Time."
        
        myTimer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(updateTime), userInfo: nil, repeats: true)
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    @objc func updateTime() {
        let date = Date()
        let formatter1 = DateFormatter()
        formatter1.dateFormat = "HH시 mm분 ss초 a"
        nowTime.text = formatter1.string(from: date)
        

        if timeLabel.text == nowTime.text {
            view.backgroundColor=UIColor.red
            let Alert = UIAlertController(title: "알람", message: "설정한 시간이 되었어요.", preferredStyle: .alert ) //얼럿을 띄울 창을 설정한다.
            let ok = UIAlertAction(title: "종료", style: .default, handler:{ (action:UIAlertAction) ->Void in self.view.backgroundColor = UIColor.white})
            //얼럿에 나올 버튼 액션을 추가한다. handler구문에 대해서는 주의하여 작성할것
            
            let cancle = UIAlertAction(title: "취소", style: .cancel , handler:{ (action:UIAlertAction) ->Void in self.view.backgroundColor = UIColor.green })
            Alert.addAction(ok) //위에 만든 액션을 얼럿에 나올 버튼으로 추가한다.
            Alert.addAction(cancle)
            present(Alert, animated: true, completion: nil)
        }
        
    }
        
    
    @IBAction func changeTimePicker(_ sender: Any) { //데이트 피커를 썼을때에
        print("시간이 변경되었다.") //움직일때마다 프린터 출력
        // dateFormat
        let formatter1 = DateFormatter() //포메터를 데이트 포멧으로 준다.
        formatter1.dateFormat = "HH시 mm분 ss초 a"
        timeLabel.text = formatter1.string(from: myTimePicker.date) //텍스트에 인트값을 스트링으로 변환하여 올려야 하기때문에 formatter.string(from:아울렛.date)
        
    }
        
    @IBAction func btreturn(_ sender: Any) {
        view.backgroundColor = UIColor.white
    }
}

