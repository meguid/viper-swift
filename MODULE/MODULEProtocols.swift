//
// Created by meguid/viper-swift
//

import UIKit

protocol MODULEViewProtocol: class {
    
    var presenter: MODULEPresenterProtocol? { get set }
}

protocol MODULEInteractorProtocol: class {
    
    var presenter: MODULEPresenterProtocol? { get set }
    var dataStore: MODULEDataStoreProtocol? { get set }

}

protocol MODULEPresenterProtocol: class {
    
    var view: MODULEViewProtocol? { get set }
    var interactor: MODULEInteractorProtocol? { get set }
    var router: MODULERouterProtocol? { get set }
    
}

protocol MODULERouterProtocol: class {
    
    static func createMODULEModule() -> MODULEView

}

protocol MODULEDataStoreProtocol: class {
    
}
