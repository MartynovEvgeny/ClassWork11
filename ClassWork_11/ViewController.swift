//
//  ViewController.swift
//  ClassWork_11
//
//  Created by Мартынов Евгений on 8.08.23.
//

import UIKit

final class ViewController: UIViewController {

    @IBOutlet private weak var segmentedControl: UISegmentedControl!
    @IBOutlet private weak var infoLabel: UILabel!
    @IBOutlet private weak var slider: UISlider!
    @IBOutlet private weak var textField: UITextField!
    @IBOutlet private weak var saveBtn: UIButton!
    @IBOutlet private weak var datePicker: UIDatePicker!
    @IBOutlet private weak var hideLbl: UILabel!
    @IBOutlet private weak var hideSwitch: UISwitch!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func segmentedControlAction(_ sender: UISegmentedControl) {
        print(sender.selectedSegmentIndex)
        switch sender.selectedSegmentIndex {
        case 0:
            infoLabel.text = "Selected index: \(sender.selectedSegmentIndex)"
            infoLabel.textColor = .green
        case 1:
            infoLabel.text = "Selected index: \(sender.selectedSegmentIndex)"
            infoLabel.textColor = .red
        case 2:
            infoLabel.text = "Selected index: \(sender.selectedSegmentIndex)"
            infoLabel.textColor = .blue
        default: break
        }
    }
    
    @IBAction func saveBtnAction(_ sender: UIButton) {
        if textField.text != "" {
            infoLabel.text = textField.text
            infoLabel.textColor = .black
        } else {
            infoLabel.text = "Name empty"
            infoLabel.textColor = .red
        }
    }
    
    @IBAction func sliderValueChanged(_ sender: UISlider) {
        print(sender.value)
//        print(slider.value)
//        print(sender === slider)
        let backgroundColor = view.backgroundColor
        view.backgroundColor = backgroundColor?.withAlphaComponent(CGFloat(slider.value))
        infoLabel.text = String(slider.value)
    }
    
    @IBAction func tfValueChanged(_ sender: UITextField) {
        print(sender.text)
    }
    
    @IBAction func datePickerAction(_ sender: UIDatePicker) {
        print(sender.date)
    }
    
    @IBAction func switchAction(_ sender: UISwitch) {
        let isOn = sender.isOn
        print(isOn)
        segmentedControl.isHidden = isOn
        infoLabel.isHidden = isOn
        slider.isHidden = isOn
        textField.isHidden = isOn
        hideLbl.text = isOn ? "Элементы скрыты" : "Я все вижу"
    }
}

