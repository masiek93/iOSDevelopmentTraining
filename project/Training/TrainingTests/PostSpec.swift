import Nimble
import Quick

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

class PostSpec: QuickSpec {
    override func spec() {
        describe("Post") {
            var post: Post!
            
            beforeEach {
                let json = """
                    {
                      "userId": 2,
                      "id": 1,
                      "title": "sunt",
                      "body": "qDEJ"
                    }
                    """
                
                
                post = try? JSONDecoder().decode(Post.self, from: Data(json.utf8))
            }
            
            it("can be deserialized"){
                expect(post).toNot(beNil())
                expect(post.id) == 1
                expect(post.userID) == 2
                expect(post.title) == "sunt"
                expect(post.body) == "qDEJ"
            }
        }
    }
}
