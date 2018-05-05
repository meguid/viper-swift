import UIKit

protocol MODULEViewProtocol: class {
    
    var presenter: MODULEPresenterProtocol? { get set }
}

protocol MODULEInteractorProtocol: class {
    
    var presenter: MODULEPresenterProtocol? { get set }
}

protocol MODULEPresenterProtocol: class {
    
    var view: MODULEViewProtocol? { get set }
    var interactor: MODULEInteractorProtocol? { get set }
    var router: MODULERouterProtocol? { get set }
    
}

protocol MODULEItemViewProtocol: class {

}

protocol MODULERouterProtocol: class {
    
}

func updateMODULEProtocols(view : MODULEView) {
    
    let interactor: MODULEInteractorProtocol = MODULEInteractor()
    let presenter: MODULEPresenterProtocol = MODULEPresenter()
    let router: MODULERouterProtocol = MODULERouter()
    
    view.presenter = presenter
    presenter.view = view
    presenter.router = router
    presenter.interactor = interactor
    interactor.presenter = presenter
}
