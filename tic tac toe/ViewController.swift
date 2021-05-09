//
//  ViewController.swift
//  tic tac toe
//
//  Created by Sreenivas k on 09/05/21.
//

import UIKit

class ViewController: UIViewController {
    var isGameOver = false
    var player=1
    
    override func viewDidLoad() {
        super.viewDidLoad()
        refreshView()
    }
    @IBOutlet weak var WinnerLable: UILabel!
    
    @IBOutlet weak var One: UIButton!
    @IBOutlet weak var Two: UIButton!
    @IBOutlet weak var Three: UIButton!
    @IBOutlet weak var Four: UIButton!
    @IBOutlet weak var Five: UIButton!
    @IBOutlet weak var Six: UIButton!
    @IBOutlet weak var Seven: UIButton!
    @IBOutlet weak var Eight: UIButton!
    @IBOutlet weak var Nine: UIButton!
    
    @IBOutlet weak var resetButton: UIButton!
  
    @IBAction func resetPressed(_ sender: UIButton) {
        
        
        viewDidLoad()
        print("Reset")
      
        
    }
    
   
    
    
    @IBAction func One(_ sender: UIButton) {
        print("Here")
        placeingObject(with: sender)
        checkWinner()
    }
    
    
    
    func placeingObject(with sender:UIButton){
        if isGameOver{}else{
            if sender.titleLabel?.text == nil {
                if self.player==1{
                    sender.setTitleColor(.white, for: .normal)
                    sender.setTitle("X", for: .normal)
                    player = 2
                }else{
                    sender.setTitleColor(.white, for: .normal)
                    sender.setTitle("O", for: .normal)
                    player = 1
                }
            }else{
                print("already Exist")
            }
        }
        
    }
    
    func refreshView(){

        
            self.isGameOver = false
            self.One.setTitle("", for: .normal)
            self.Two.setTitle("", for: .normal)
            self.Three.setTitle(nil, for: .normal)
            self.Four.setTitle(nil, for: .normal)
            self.Five.setTitle(nil, for: .normal)
            self.Six.setTitle(nil, for: .normal)
            self.Seven.setTitle(nil, for: .normal)
            self.Eight.setTitle(nil, for: .normal)
            self.Nine.setTitle(nil, for: .normal)
            
            self.WinnerLable.text=""
            self.player=1
            self.resetButton.isHidden=true
        

    }

    func checkWinner() {
        var one = One.titleLabel?.text
        let two = Two.titleLabel?.text
        let three = Three.titleLabel?.text
        let four = Four .titleLabel?.text
        let five = Five.titleLabel?.text
        let six = Six.titleLabel?.text
        let seven = Seven.titleLabel?.text
        let eight = Eight.titleLabel?.text
        let nine = Nine.titleLabel?.text
        if !isGameOver{            
            if (one == "X" && two == "X" && three == "X") || (four == "X" && five == "X" && six == "X") || (seven == "X" && eight == "X" && nine == "X") || (one == "X" && four == "X" && seven == "X") || (two == "X" && five == "X" && eight == "X") || (three == "X" && six == "X" && nine == "X"){
                WinnerLable.text="Winner : X"
                resetButton.isHidden=false
                isGameOver=true
            }else if(one == "X" && five == "X" && nine == "X") || (three == "X" && five == "X" && seven == "X"){
                WinnerLable.text="Winner : X"
                resetButton.isHidden=false
                
                isGameOver=true
            }else if (one == "O" && two == "O" && three == "O") || (four == "O" && five == "O" && six == "O") || (seven == "O" && eight == "O" && nine == "O") || (one == "O" && four == "O" && seven == "O") || (two == "O" && five == "O" && eight == "O") || (three == "O" && six == "O" && nine == "O"){
                WinnerLable.text="Winner : O"
                resetButton.isHidden=false
                isGameOver=true
            }else if(one == "O" && five == "O" && nine == "O") || (three == "O" && five == "O" && seven == "O"){
                WinnerLable.text="Winner : O"
                resetButton.isHidden=false
                isGameOver=true
            }else if one != nil && two != nil && three != nil && four != nil && five != nil && six != nil && seven != nil && eight != nil && nine != nil{
                WinnerLable.text="Match Draw"
                resetButton.isHidden=false
                }
                
            
        }
        
    }
}

