import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    var delegate: ViewControllerProtocol?
    
    var sectionArray = [Section]()
    
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
        
        let mercedes1 = Car.init(name: "S Class")
        let mercedes2 = Car.init(name: "G Wagon")
        let sec1 = Section(title: "Mercedes", rows: [mercedes1, mercedes2])
        let ferrari1 = Car.init(name: "California")
        let ferrari2 = Car.init(name: "Formula 1")
        let sec2 = Section(title: "Ferrari", rows: [ferrari1, ferrari2])
               
        sectionArray.append(sec1)
        sectionArray.append(sec2)
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        sectionArray.count
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        let sec = sectionArray[section]
        let title = sec.title
        return title
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        let sec = sectionArray[section]
        let rows = sec.rows
        let count = rows.count
        return count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell")
        let sec = sectionArray[indexPath.section]
        let rows = sec.rows
        let car = rows[indexPath.row]
        let name = car.name
        cell?.textLabel?.text = name
        
        return cell ?? UITableViewCell()
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let sec = sectionArray[indexPath.section]
        let rows = sec.rows
        let car = rows[indexPath.row]
        let name = car.name
        print(name)
        delegate?.passName(name: name)
        let st = UIStoryboard(name: "Main", bundle: nil)
        guard let vc = st.instantiateViewController(identifier: "CarDetailViewController") as? CarDetailViewController else { return }
        navigationController?.pushViewController(vc, animated: true)
        vc.name = name
    }

}

struct Car {
    let name: String
}


struct Section {
    let title: String
    let rows: [Car]
}

protocol ViewControllerProtocol {
    func passName(name: String)
}
