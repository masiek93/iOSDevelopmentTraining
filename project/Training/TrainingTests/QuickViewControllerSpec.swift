import Quick
import Nimble
@testable import Training

class QuickViewControllerSpec: QuickSpec {
    override func spec() {
        describe("QickViewControlle") {
            var sut: QuickViewController!
            
            beforeEach {
                sut = QuickViewController()
            }
            
            context("when view is loaded") {
                beforeEach {
                    _ = sut.view
                }
                
                describe("button"){
                    it("should hava 'Untapped' title"){
                        expect(sut.button.titleLabel?.text) == "Untapped"
                    }
                }
                
                context("when button is tapped"){
                    beforeEach {
                        sut.button.sendActions(for: .touchUpInside)
                    }
                    
                    it("should set button title to 'Taped'"){
                        expect(sut.button.titleLabel?.text) == "Tapped"
                    }
                }
            }
        }
    }
}
