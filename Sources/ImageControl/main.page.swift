import Foundation
import ScadeKit

class MainPageAdapter: SCDLatticePageAdapter {

  // page adapter initialization
  override func load(_ path: String) {
    super.load(path)

    self.image2.url = "Assets/2.jpeg"
    self.image2.contentPriority = false

    // Create URL
    let url = URL(
      string:
        "https://i.pinimg.com/originals/08/2c/ce/082cce3add1418e48ef80208694e8f86.png")!
    DispatchQueue.main.async {
      // Fetch Image Data
      if let data = try? Data(contentsOf: url) {
        DispatchQueue.main.async {
          // Create Image and Update Image Control
          self.image3.contentPriority = true
          self.image3.content = data
        }
      }
    }
  }
}
