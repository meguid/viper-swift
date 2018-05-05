//
// Created by meguid/viper-swift
//

import UIKit

class ExampleRouter: ExampleRouterProtocol {
    
    class func createExampleModule() -> ExampleView {

        let view = ExampleRouter.storyboard.instantiateViewController(withIdentifier: "ExampleView") as! ExampleView
        updateExampleProtocols(view: view)
        return view
    }
    
    static var storyboard: UIStoryboard {
        if UIDevice.current.userInterfaceIdiom == .phone {
            return UIStoryboard(name: "Main", bundle: nil)
        }else{
            return UIStoryboard(name: "Main", bundle: nil)
        }
    }
}

func updateExampleProtocols(view : ExampleView) {
    
    let interactor: ExampleInteractorProtocol = ExampleInteractor()
    let presenter: ExamplePresenterProtocol = ExamplePresenter()
    let router: ExampleRouterProtocol = ExampleRouter()
    let dataStore: ExampleDateStoreProtocol = ExampleDateStore()

    view.presenter = presenter
    presenter.view = view
    presenter.router = router
    presenter.interactor = interactor
    interactor.presenter = presenter
    interactor.dataStore = dataStore
}
