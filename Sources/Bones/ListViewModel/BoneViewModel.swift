import Action
import UIKit
import SnapKit
import Boomerang
import RxSwift
import RxCocoa
import ModelLayer

class {{ name|firstUppercase }}ViewModel: SceneViewModelType, ListViewModelType, SelectableViewModelType {

    var sceneIdentifier: SceneIdentifier = SceneIdentifier.{{ name|firstLowercase }}
    var dataHolder: ListDataHolderType = ListDataHolder()
    var title: String = ""
    
    lazy var selection: Selection = Selection {[weak self] input in
        switch input {
        case .item(let indexPath):
            if let model = self?.model(atIndex: indexPath) {
            }
        default: break
        }
        return self?.baseSwitch(input: input) ?? .empty()
    }

    init() {
        let data: Observable<ModelStructure>
        data = .just(ModelStructure.empty)
        dataHolder = ListDataHolder(data: data)
    }

    func itemViewModel (fromModel model: ModelType) -> ItemViewModelType? {
        switch model {
        default : return model as? ItemViewModelType
        }
    }
}
