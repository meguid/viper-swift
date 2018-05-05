//
// Created by meguid/viper-swift
//

import UIKit

class ExampleView: ExampleViewProtocol {
    
    var presenter: ExamplePresenterProtocol?
    
    override func viewDidLoad() {
        super.viewDidLoad()
//        updateExampleProtocols(view: self) // Uncomment this if you're using storyboards for navigation
    }
}
