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
        // Do any additional setup after loading the view.
    }

    @IBOutlet weak var One: UIButton!
    @IBOutlet weak var Two: UIButton!
    @IBOutlet weak var Three: UIButton!
    @IBOutlet weak var Four: UIButton!
    @IBOutlet weak var Five: UIButton!
    @IBOutlet weak var Six: UIButton!
    @IBOutlet weak var Seven: UIButton!
    @IBOutlet weak var Eight: UIButton!
    @IBOutlet weak var Nine: UIButton!
    
    @IBAction func One(_ sender: UIButton) {
//        placeingObject(with: sender)
//        checkWinner()
    }
    
    
}

