import Boomerang
import RxSwift
import Action
import RxCocoa
import ModelLayer

final class {{ name|firstUppercase }}ItemViewModel: ItemViewModelType {
    
    var model: ItemViewModelType.Model
    var itemIdentifier: ListIdentifier = View.{{ name|firstLowercase }}
    
    init(model: {{ name|firstUppercase }}) {
        self.model = model
    }
}
