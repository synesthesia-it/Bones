import UIKit
import Boomerang
import RxSwift
import Action
import RxCocoa

class {{ name|firstUppercase }}ItemView: UIView, ViewModelBindable, EmbeddableView {
    
    var viewModel: ItemViewModelType?
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    func bind(to viewModel: ViewModelType?) {
        guard let viewModel = viewModel as? {{ name|firstUppercase }}ItemViewModel else {
            return
        }
        self.viewModel = viewModel
        self.disposeBag = DisposeBag()
        if self.isPlaceholder { return }
    }
}
