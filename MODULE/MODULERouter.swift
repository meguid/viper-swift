//
// Created by meguid/viper-swift
//

import UIKit

class MODULERouter: MODULERouterProtocol {
    
    class func createMODULEModule() -> MODULEView {

        let view = MODULERouter.storyboard.instantiateViewController(withIdentifier: "MODULEView") as! MODULEView
        updateMODULEProtocols(view: view)
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

func updateMODULEProtocols(view : MODULEView) {
    
    let interactor: MODULEInteractorProtocol = MODULEInteractor()
    let presenter: MODULEPresenterProtocol = MODULEPresenter()
    let router: MODULERouterProtocol = MODULERouter()
    let dataStore: MODULEDateStoreProtocol = MODULEDateStore()

    view.presenter = presenter
    presenter.view = view
    presenter.router = router
    presenter.interactor = interactor
    interactor.presenter = presenter
    interactor.dataStore = dataStore
}
