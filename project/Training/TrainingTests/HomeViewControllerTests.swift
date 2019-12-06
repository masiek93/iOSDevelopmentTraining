import XCTest
import SnapshotTesting
@testable import Training

class HomeViewControllerTests: XCTestCase {
    func testHomeControllerMatchesSnapshot() {
        let sut = HomeViewController()
        
        assertSnapshot(matching: sut, as: .image(on: .iPhoneSe))
        
    }
}
