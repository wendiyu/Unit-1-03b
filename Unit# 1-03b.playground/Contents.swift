

// Created on: September-27-2018
// Created by: Wendi Yu
// Created for: ICS3U
// This program is the UIKit solution for basic math
// this will be commented out when code moved to Xcode
import PlaygroundSupport


import UIKit

class ViewController : UIViewController {
    // this is the main view controller, that will show the UIKit elements
    
    // properties
    let questionLable = UILabel()
    let lengthLable = UILabel()
    let widthLable = UILabel()
    let lengthTextField = UITextField()
    let widthTextField = UITextField()
    let areaLabel = UILabel()
    let perimeterLabel = UILabel()
    let answerButton = UIButton()
    
    override func viewDidLoad() {
        // UI
        super.viewDidLoad()
        
        let view = UIView()
        view.backgroundColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        self.view = view
        
        questionLable.text = "Calculate the area and perimeter of a rectangle."
        view.addSubview(questionLable)
        questionLable.translatesAutoresizingMaskIntoConstraints = false
        questionLable.topAnchor.constraint(equalTo: view.topAnchor, constant: 20).isActive = true
        questionLable.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20).isActive = true
        
        lengthLable.text = "Enter length"
        view.addSubview(lengthLable)
        lengthLable.translatesAutoresizingMaskIntoConstraints = false
        lengthLable.topAnchor.constraint(equalTo: questionLable.bottomAnchor, constant: 10).isActive = true
        lengthLable.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20).isActive = true
        
        lengthTextField.borderStyle = UITextBorderStyle.roundedRect
        lengthTextField.placeholder = "In cm    "
        view.addSubview(lengthTextField)
        lengthTextField.translatesAutoresizingMaskIntoConstraints = false
        lengthTextField.topAnchor.constraint(equalTo: lengthLable.bottomAnchor, constant: 5).isActive = true
        lengthTextField.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20).isActive = true
        
        widthLable.text = "Enter width"
        view.addSubview(widthLable)
        widthLable.translatesAutoresizingMaskIntoConstraints = false
        widthLable.topAnchor.constraint(equalTo: lengthTextField.bottomAnchor, constant: 5).isActive = true
        widthLable.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20).isActive = true
        
        
        widthTextField.borderStyle = UITextBorderStyle.roundedRect
        widthTextField.placeholder = "In cm    "
        view.addSubview(widthTextField)
        widthTextField.translatesAutoresizingMaskIntoConstraints = false
        widthTextField.topAnchor.constraint(equalTo: widthLable.bottomAnchor, constant: 5).isActive = true
        widthTextField.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20).isActive = true
        
        answerButton.setTitle("Answer", for: .normal)
        answerButton.setTitleColor(.blue, for: .normal)
        answerButton.addTarget(self, action: #selector(calculateAreaAndPerimeter), for: .touchUpInside)
        view.addSubview(answerButton)
        answerButton.translatesAutoresizingMaskIntoConstraints = false
        answerButton.topAnchor.constraint(equalTo: widthTextField.bottomAnchor, constant: 10).isActive = true
        answerButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20).isActive = true
        
        areaLabel.text = nil
        view.addSubview(areaLabel)
        areaLabel.translatesAutoresizingMaskIntoConstraints = false
        areaLabel.topAnchor.constraint(equalTo: answerButton.bottomAnchor, constant: 20).isActive = true
        areaLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20).isActive = true
        
        perimeterLabel.text = nil
        view.addSubview(perimeterLabel)
        perimeterLabel.translatesAutoresizingMaskIntoConstraints = false
        perimeterLabel.topAnchor.constraint(equalTo: areaLabel.bottomAnchor, constant: 10).isActive = true
        perimeterLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20).isActive = true
        
        
        
    }
    
    @objc func calculateAreaAndPerimeter() {
        // show answers 
        let length : Int =  Int(lengthTextField.text!)!
        let width : Int =  Int(widthTextField.text!)!
        
        let area = length * width
        let perimeter = 2 * (length + width)
        
        areaLabel.text = "The area is : \(area) cm^2"
        perimeterLabel.text = "The perimeter is : \(perimeter) cm"
    }
    
    override var prefersStatusBarHidden: Bool {
        return true
    }
}

// this will be commented out when code moved to Xcode
PlaygroundPage.current.liveView = ViewController()
