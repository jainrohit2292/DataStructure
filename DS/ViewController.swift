import UIKit

protocol DSProblemTypeProtocol {
    func executeProblem()
}

enum DSProblemType {
    case array, string
}

class ViewController: UIViewController {
    
    let currentType: DSProblemType = .string
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        startExecution()
    }
    
    private func startExecution() {
        var type: DSProblemTypeProtocol?
        
        switch currentType {
        case .array:
            type = ArrayProblems()
        case .string:
            type = StringProblems()
        }
        
        type?.executeProblem()
    }
}
