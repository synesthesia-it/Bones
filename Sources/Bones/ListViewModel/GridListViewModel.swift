import Action
import UIKit
import SnapKit
import Boomerang
import RxSwift
import RxCocoa
import ModelLayer

class ___BonePlaceholder___ListViewModel: SceneViewModelType, ListViewModelType, SelectableViewModelType {

    var sceneIdentifier: SceneIdentifier = SceneIdentifier.___BonePlaceholderLowercased___
    var dataHolder: ListDataHolderType
    var title: String = ""
    lazy var selection: Selection = Selection {[weak self] input in
        switch input {
        case .item(let indexPath):
            
            if let model = self?.model(atIndex: indexPath) {
                
                default : break
                }
            }
        default : break
        }
        return self?.baseSwitch(input: input) ?? .empty()
    }

    init() {
        let data:Observable<ModelStructure>
        data = .just(ModelStructure.empty())
        dataHolder = ListDataHolder(data: data)
    }

    func itemViewModel(fromModel model: ModelType) -> ItemViewModelType? {
        switch model {
        default : return model as? ItemViewModelType
        }
    }
}
