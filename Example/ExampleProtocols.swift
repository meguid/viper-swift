//
// Created by meguid/viper-swift
//

import UIKit

protocol ExampleViewProtocol: class {
    
    var presenter: ExamplePresenterProtocol? { get set }
}

protocol ExampleInteractorProtocol: class {
    
    var presenter: ExamplePresenterProtocol? { get set }
    var dataStore: ExampleDataStoreProtocol? { get set }

}

protocol ExamplePresenterProtocol: class {
    
    var view: ExampleViewProtocol? { get set }
    var interactor: ExampleInteractorProtocol? { get set }
    var router: ExampleRouterProtocol? { get set }
    
}

protocol ExampleRouterProtocol: class {
    
    static func createExampleModule() -> ExampleView

}

protocol ExampleDataStoreProtocol: class {
    
}
