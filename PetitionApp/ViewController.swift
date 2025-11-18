import UIKit

class ViewController: UITableViewController {
    let data = ["Nice", "tits", "honey"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Welcome aboard, ladies"
        tableView.register(CustomCell.self, forCellReuseIdentifier: Constants.cell)
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {return data.count}
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: Constants.cell, for: indexPath) as! CustomCell
        let fruit = data[indexPath.row]
        cell.titleLabel.text = fruit
        cell.subtitleLabel.text = "Subtitle for \(fruit)"
        cell.iconImageView.image = UIImage(systemName: "leaf") // or any SF Symbol
        return cell
    }
}
