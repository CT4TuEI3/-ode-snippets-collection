import UIKit

extension UICollectionView {
    func registerClass<T: UICollectionViewCell>(_: T.Type) {
        self.register(T.self, forCellWithReuseIdentifier: String(describing: T.self))
    }

    func dequeueReusableCellForIndexPath<T: UICollectionViewCell>(_ indexPath: IndexPath) -> T {
        return self.dequeueReusableCell(withReuseIdentifier: String(describing: T.self), for: indexPath) as! T
    }
}


// MARK: - Usage

private lazy var membersCollectionView: UICollectionView = {
    let layout = UICollectionViewFlowLayout()
    layout.scrollDirection = .vertical
    
    let collectionView = UICollectionView(frame: .zero, collectionViewLayout: layout)
    collectionView.registerClass(MyCollectionViewCell.self)
    collectionView.dataSource = self
    collectionView.delegate = self
    return collectionView
}()

func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
    let cell = collectionView.dequeueReusableCellForIndexPath(indexPath) as MyCollectionViewCell
    return cell
}
