import UIKit

class Task5: UIViewController {
    let timeConst = 900
    var timer = Timer()
    let Answer = "лекторий"
    let Answer2 = "кинотеатр лекторий"
    //var isStarted = false
    var counter: Int?
    

    @IBOutlet weak var timerLabel: UILabel!
    @IBOutlet weak var fieldAnswer: UITextField!
    @IBOutlet weak var butAnswer: UIButton!
    @IBOutlet weak var exit: UIButton!
    
    @IBAction func StartTimer(_ sender: Any) {
        guard let wrongAns = fieldAnswer.text else {return}
        if wrongAns != Answer && wrongAns != Answer2 {
            let alert1 = UIAlertController(title: "Неверный ответ", message: "Это вам не аниме читать, да?", preferredStyle: .alert)
            let alertAction1 = UIAlertAction(title: "Ты прав:(", style: .default, handler: nil)
            alert1.addAction(alertAction1)
            present(alert1, animated: true, completion: nil)
        } else {
            timer.invalidate()
            butAnswer.isHidden = true
            fieldAnswer.isHidden = true
            exit.isHidden = false
            let alert2 = UIAlertController(title: "Правильный ответ!", message: "Готов к следущему?", preferredStyle: .alert)
            let alertAction2 = UIAlertAction(title: "Да", style: .default, handler: nil)
            alert2.addAction(alertAction2)
            present(alert2, animated: true, completion: nil)
        }
    }
    
    @objc func timeraction () {
        guard counter! > 0 else {
            butAnswer.isHidden = true
            fieldAnswer.isHidden = true
            exit.isHidden = false
            timer.invalidate()
            return
        }
        counter! -= 1
        timerLabel.text = NSString(format: "%0.2d:%0.2d", counter!/60,counter!%60) as String
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        exit.isHidden = true
        timerLabel.text = NSString(format: "%0.2d:%0.2d", timeConst/60,timeConst%60) as String
        
        counter = timeConst
        timer.invalidate()
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(timeraction), userInfo: nil, repeats: true)
        
        
        //  isStarted = true
        // Do any additional setup after loading the view.
    }
}
