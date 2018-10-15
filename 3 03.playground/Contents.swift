// made on October 14
// made by Nicholas Pasco-Arnone
// made for ICS3U
// Rock Paper Scissors 


import PlaygroundSupport


import UIKit

class ViewController : UIViewController {
    // this is the main view controller, that will show the UIKit elements
    
    // properties
    let computerChoice : Int = Int(arc4random_uniform(3) + 1)
    
    let instructionLabel = UILabel()
    let rpcTextField = UITextField()
    let checkButton = UIButton()
    let answerLabel = UILabel()
    
    override func viewDidLoad() {
        // UI
        super.viewDidLoad()
        
        let view = UIView()
        view.backgroundColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        self.view = view
        
        instructionLabel.text = "type 1 for rock, 2 for paper, or 3 for scissors?"
        view.addSubview(instructionLabel)
        instructionLabel.translatesAutoresizingMaskIntoConstraints = false
        instructionLabel.topAnchor.constraint(equalTo: view.topAnchor, constant: 20).isActive = true
        instructionLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20).isActive = true
        
        
        rpcTextField.borderStyle = UITextBorderStyle.roundedRect
        rpcTextField.placeholder = "Enter 1, 2 or 3 "
        view.addSubview(rpcTextField)
        rpcTextField.translatesAutoresizingMaskIntoConstraints = false
        rpcTextField.topAnchor.constraint(equalTo: instructionLabel.bottomAnchor, constant: 20).isActive = true
        rpcTextField.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20).isActive = true
        
        checkButton.setTitle("results", for: .normal)
        checkButton.setTitleColor(.blue, for: .normal)
        checkButton.titleLabel?.textAlignment = .center
        checkButton.addTarget(self, action: #selector(checkNumberOfStudents), for: .touchUpInside)
        view.addSubview(checkButton)
        checkButton.translatesAutoresizingMaskIntoConstraints = false
        checkButton.topAnchor.constraint(equalTo: rpcTextField.bottomAnchor, constant: 20).isActive = true
        checkButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20).isActive = true
        
        answerLabel.text = nil
        view.addSubview(answerLabel)
        answerLabel.translatesAutoresizingMaskIntoConstraints = false
        answerLabel.topAnchor.constraint(equalTo: checkButton.bottomAnchor, constant: 20).isActive = true
        answerLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20).isActive = true
    }
    
    @objc func checkNumberOfStudents() {
        // check if there are too many students in the class 
        
        //input
        let numberEntered : Int = Int(rpcTextField.text!)!
        
        // process
        
        if numberEntered == 1 {
            if computerChoice == 1 {
                answerLabel.text = "tie"
            }
            if computerChoice == 2 {
                answerLabel.text = "paper beats rock. you lose"
            }
            if computerChoice == 3 {
                answerLabel.text = "rock beats scissors. you win"
                
            }
        }
        if numberEntered == 2 {
            if computerChoice == 1 {
                answerLabel.text = "paper beats rock. you win"
            }
            if computerChoice == 2 {
                answerLabel.text = "tie"
            }
            if computerChoice == 3 {
                answerLabel.text = "scissors beat paper"
            }
        }
        if numberEntered == 3 {
            if computerChoice == 1 {
                answerLabel.text = "rock beats scissors. you lose"
            }
            if computerChoice == 2 {
                answerLabel.text = "scissors beat paper. you win"
            }
            if computerChoice == 3 {
                answerLabel.text = "tie"
            }
        }
    }
    
    override var prefersStatusBarHidden: Bool {
        return true
    }
}

// this will be commented out when code moved to Xcode
PlaygroundPage.current.liveView = ViewController()

