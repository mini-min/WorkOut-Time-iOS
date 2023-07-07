//
//  TimerViewController.swift
//  WorkOut-Time-iOS
//
//  Created by 민 on 2023/07/04.
//

import UIKit

class TimerViewController: UIViewController {
    
    // MARK: - Properties
    private let timer = Timer()
    private let timerList: [String] = ["30초", "1분", "2분", "2분 30초"]
    private var isPlay: Bool = false
    
    // MARK: - @IBOutlet Properties
    @IBOutlet weak var timerPickerView: UIPickerView!
    @IBOutlet weak var timerView: UIView!
    @IBOutlet weak var cancelButton: UIButton!
    @IBOutlet weak var startPauseButton: UIButton!
    
    // MARK: - View Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        
        timerView.isHidden = true
        cancelButton.isEnabled = false
        
        timerPickerView.delegate = self
        timerPickerView.dataSource = self
    }
    
    // MARK: - @IBAction Properties
    @IBAction func cancelTimerAction(_ sender: Any) {
        timerView.isHidden = true
        cancelButton.isEnabled = false
        changeButton(startPauseButton, title: "Start", titleColor: UIColor.green)
    }
    
    @IBAction func startPauseTimerAction(_ sender: Any) {
        cancelButton.isEnabled = true
        timerView.isHidden = false
        
        // 시간이 멈추어져 있을 때 (버튼은 Resume로 표출) -> 상황은 Resume를 눌렀을 때의 코드임
        if !isPlay {
            isPlay = true
            changeButton(startPauseButton, title: "Pause", titleColor: UIColor.orange)
        }
        
        // 시간이 가고 있을 때 (버튼은 Pause으로 표출) -> 상황은 Pause을 눌렀을 때의 코드임
        else {
            isPlay = false
            changeButton(startPauseButton, title: "Resume", titleColor: UIColor.green)
        }
    }
    
}

// MARK: - Action Functions
extension TimerViewController {
    
}

// MARK: - PickerView Extensions

extension TimerViewController: UIPickerViewDelegate {
    
}

extension TimerViewController: UIPickerViewDataSource {
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return timerList.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return timerList[row]
    }
    
//    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
//        <#code#>
//    }
}
