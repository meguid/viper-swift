//
// Created by meguid/viper-swift
//

import UIKit

class ExamplePresenter: ExamplePresenterProtocol {
    
    weak var view: ExampleViewProtocol?
    var interactor: ExampleInteractorProtocol?
    var router: ExampleRouterProtocol?
}

