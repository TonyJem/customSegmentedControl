import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var customSegment: CustomSegment!
    @IBOutlet weak var statsLabel: UILabel!
    @IBOutlet weak var amountLabel: UILabel!
    @IBOutlet weak var pictureView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setSegmentedControl()
        setStatsLabel()
        setAmountLabel()
        setPictureView()
    }
    
    @objc func segmentedValueChanged(_ sender: AnyObject?) {
        
        switch customSegment.selectedIndex {
        case 0:
            amountLabel.text = "$1,290"
        case 1:
            amountLabel.text = "$34,736"
        case 2:
            amountLabel.text = "$104,211"
        default:
            break
        }
    }
    
    private func setSegmentedControl(){
        customSegment.items = ["DAILY", "WEEKLY", "MONTHLY"]
        customSegment.font = UIFont(name: "Avenir-Black", size: 12)
        customSegment.selectedIndex = 1
        customSegment.padding = 4
        customSegment.addTarget(self, action: #selector(ViewController.segmentedValueChanged(_:)), for: .valueChanged)
    }
    
    private func setStatsLabel() {
        statsLabel.font = UIFont(name: "Avenir-Black", size: 16)
        statsLabel.textColor = UIColor(white: 1.0, alpha: 1.0)
        statsLabel.text = "PROFIT"
    }
    
    private func setAmountLabel() {
        amountLabel.font = UIFont(name: "Avenir-Black", size: 30)
        amountLabel.textColor = UIColor.white
        amountLabel.text = "$25.785"
    }
    
    private func setPictureView() {
        pictureView.image = UIImage(named: "el-capitan")
        pictureView.clipsToBounds = true
        pictureView.contentMode = .scaleAspectFill
    }
}
