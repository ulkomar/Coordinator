//: A UIKit based Playground for presenting user interface
  
import UIKit
import PlaygroundSupport

class MyViewController : UIViewController {
    override func loadView() {
        let view = UIView(frame: UIScreen.main.bounds)
        view.backgroundColor = .white
        self.view = view
        
        setup()
    }
    
    private func setup() {
        self.title = "Enter Phone Number"
        
        var textField: UITextField = {
            let size = CGSize(width: 200, height: 50)
            let view = UITextField()
            view.center = self.view.center
            print(self.view.frame.midX)
            view.frame.size = size
            view.placeholder = "Enter text"
            
            return view
        }()
        
        self.view.addSubview(textField)
    }
}
// Present the view controller in the Live View window
PlaygroundPage.current.liveView = MyViewController()
