//
//  ViewController.swift
//  Calculator StoryBoard
//
//  Created by Serper Kurmanbek on 22.11.2023.
//
//Проверка
import UIKit

class ViewController: UIViewController {
    var numberFromScreen : Double = 0;
    var firstNum : Double = 0;
    var operation : Int = 0;
    var mathSign : Bool = false;
    
    @IBOutlet weak var label: UILabel!
    
    @IBAction func digits(_ sender: UIButton) {
        if mathSign == true {
            label.text = String(sender.tag)
            mathSign = false
        }
        else {
            label.text = label.text! + String(sender.tag)
        }
        
        
        numberFromScreen = Double(label.text!)!
    }
    
    @IBAction func buttons(_ sender: UIButton) {
        if label.text != "" && sender.tag != 10 && sender.tag != 15 {
        firstNum = Double(label.text!)!
            
            if sender.tag == 11{
                label.text = "/"
            } // Деление
            else if sender.tag == 12 {
                label.text = "x"
            } // Умножение
            else if sender.tag == 13 {
                label.text = "-"
            } // Вычетание
            else if sender.tag == 14 {
                label.text = "+"
            } // Сложение
            
            operation = sender.tag
            mathSign = true
        }
        else if sender.tag == 15 {
            if operation == 11 {
                label.text = String(firstNum / numberFromScreen)
            }
           else if operation == 12 {
                label.text = String(firstNum * numberFromScreen)
            }
          else  if operation == 13 {
                label.text = String(firstNum - numberFromScreen)
            }
         else   if operation == 14 {
                label.text = String(firstNum + numberFromScreen)
            }
        }
        else if sender.tag == 10 {
            label.text = ""
            firstNum = 0
            numberFromScreen = 0
            operation = 0
        }
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

