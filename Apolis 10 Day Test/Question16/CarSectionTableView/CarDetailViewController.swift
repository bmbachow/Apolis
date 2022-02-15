import UIKit

class CarDetailViewController: UIViewController, ViewControllerProtocol {

    
    @IBOutlet weak var carName: UILabel!
    
    @IBOutlet weak var carImage: UIImageView!
  
    
    var name : String = ""
    
    func passName(name: String) {
        print(name)
        carName.text = name
        switch name {
        case "S Class":
            carImage.image = UIImage.init(named: "SClass")
        case "G Wagon":
            carImage.image = UIImage.init(named: "Gwagon")
        case "California":
            carImage.image = UIImage.init(named: "California")
        case "Formula 1" :
            carImage.image = UIImage.init(named: "Formula1")
            
        default:
            carImage.image = UIImage.init(named: "Gwagon")
        }
    }
    


    
    override func viewDidLoad() {
        super.viewDidLoad()
        passName(name: name)

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}

