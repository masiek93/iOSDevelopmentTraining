import UIKit

class ButtonController: UIViewController {
    init(controllerFactory: @escaping () -> UIViewController){
        self.controllerFactory = controllerFactory
        super.init(nibName: nil, bundle: nil)
        tabBarItem.title = title
    }
    
    required init?(coder aDecoder: NSCoder) {
        return nil
    }
    
    var controllerFactory: () -> UIViewController
    
    
    lazy var button: UIButton = {
            let button = UIButton(frame: .zero)
            button.setTitle("Send", for: .normal)
            button.setTitleColor(.black, for: .normal)
            button.backgroundColor = .white
            return button
    }()
    
    override func loadView() {
        view = button
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        button.addTarget(self, action: #selector(buttonPressed(_:)), for: .touchUpInside)
    }
    
    @objc
    func buttonPressed(_ button: UIButton){
        performRequest { [weak self] posts in
            print("Received posts: \(posts)")
            guard let `self` = self else { return }
            self.navigationController?.pushViewController(self.controllerFactory(), animated: true)
            
        }
        
//        guard let controller = controllerFactory?() else {
//            return
//        }
//
//        navigationController?.pushViewController(controller, animated: true)
    }
    
    private func performRequest(_ completionHandler: @escaping ([Post]) -> Void) {
        let url = URL(string: "https://jsonplaceholder.typicode.com/posts")!
        let task = URLSession.shared.dataTask(with: url) { (data: Data?, response: URLResponse?, error: Error?) in
            guard let httpResponse = response as? HTTPURLResponse, httpResponse.statusCode == 200 else {
                return
            }
            
            guard let data = data, let posts = try? JSONDecoder().decode([Post].self, from: data) else {
                return
            }
            
            
            DispatchQueue.main.async {
                completionHandler(posts)
            }
            
        }
        
        
        task.resume()
    }
    
}


struct Post: Decodable {
    let id: Int
    let userID: Int
    let title: String
    let body: String
    
    enum CodingKeys: String, CodingKey {
        case id
        case userID = "userId"
        case title
        case body
    }
}
