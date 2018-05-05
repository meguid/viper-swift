//
// Created by meguid/viper-swift
//

import UIKit

class MODULEPresenter: MODULEPresenterProtocol {
    
    weak var view: MODULEViewProtocol?
    var interactor: MODULEInteractorProtocol?
    var router: MODULERouterProtocol?
}

