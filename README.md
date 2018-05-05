# Viper Swift
A Swift Viper module generator with protocols

![viper-swift](/Assets/ViperDiagram.png)


### Just Run the Python Scipt and GO!

```bash
$ python ViperSwift.py
$ Login
```

### Sample Generated Files

- LoginView
- LoginInteractor
- LoginPresenter
- LoginEntity
- LoginRouter
- LoginDataStore
- LoginProtocols

![viper-swift](/Assets/SampleCode.png)


### Sample Protocols

```swift
protocol LoginViewProtocol: class {
    
    var presenter: LoginPresenterProtocol? { get set }
}

protocol LoginInteractorProtocol: class {
    
    var presenter: LoginPresenterProtocol? { get set }
    var dataStore: LoginDataStoreProtocol? { get set }

}

protocol LoginPresenterProtocol: class {
    
    var view: LoginViewProtocol? { get set }
    var interactor: LoginInteractorProtocol? { get set }
    var router: LoginRouterProtocol? { get set }
    
}

protocol LoginRouterProtocol: class {
    
    static func createLoginModule() -> LoginView

}

protocol LoginDataStoreProtocol: class {
    
}
```
