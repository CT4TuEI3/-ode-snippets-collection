extension UITableView {
    func registerClass<T: UITableViewCell>(_: T.Type) {
        self.register(T.self, forCellReuseIdentifier: String(describing: T.self))
    }
    
    func dequeueReusableCellForIndexPath<T: UITableViewCell>(_ indexPath: IndexPath) -> T {
        return self.dequeueReusableCell(withIdentifier: String(describing: T.self), for: indexPath) as! T
    }
}


// MARK: - Usage

private lazy var myTableView: UITableView = {
    let tableView = UITableView()
    tableView.delegate = self
    tableView.dataSource = self
    tableView.registerClass(MyTableViewCell.self)
    return tableView
}()

func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    let cell = tableView.dequeueReusableCellForIndexPath(indexPath) as MyTableViewCell
    return cell
}
