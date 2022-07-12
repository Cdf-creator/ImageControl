import ScadeKit

extension MainPageAdapter {
  var image1: SCDWidgetsImage {
    return self.page?.getWidgetByName("image1") as! SCDWidgetsImage
  }

  var image2: SCDWidgetsImage {
    return self.page?.getWidgetByName("image2") as! SCDWidgetsImage
  }

  var image3: SCDWidgetsImage {
    return self.page?.getWidgetByName("image3") as! SCDWidgetsImage
  }
}