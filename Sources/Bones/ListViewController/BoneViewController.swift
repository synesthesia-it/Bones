import Action
import UIKit
import SnapKit
import Boomerang
import RxSwift
import RxCocoa

class ___BonePlaceholder___ListViewController: UIViewController, ViewModelBindable, SelectableViewController, Collectionable, UICollectionViewDelegateFlowLayout {
    
    var viewModel: (ListViewModelType & SelectableViewModelType)?

    @IBOutlet var collectionView: UICollectionView!

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    func bind(to viewModel: ViewModelType?) {
        guard let viewModel = viewModel as? ___BonePlaceholder___ListViewModel else { return }
        self.viewModel = viewModel
        self.collectionView.delegate = self
        self.collectionView.bind(to: viewModel)
        viewModel.reload()
    }

    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 0
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return 0
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        return UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 0)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return collectionView.autosizeItemConstrainedToWidth(at: indexPath, itemsPerLine: 1)
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        self.viewModel?.selection.execute(.item(indexPath))
    }
}
