//
// Created by meguid/viper-swift
//

import UIKit

class MODULEView: MODULEViewProtocol {
    
    var presenter: MODULEPresenterProtocol?
    
    override func viewDidLoad() {
        super.viewDidLoad()
//        updateMODULEProtocols(view: self) // Uncomment this if you're using storyboards for navigation
    }
}
