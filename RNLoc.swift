
import UIKit
import MapKit
import CoreLocation


@objc(RNLoc)
class RNLoc: NSObject {

    var manager:CLLocationManager!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        manager = CLLocationManager()
        manager.delegate = self
        manager.desiredAccuracy - kCLLocationAccuracyBest
        manager.requestWhenInUseAuthorization()
        manager.startUpdatingLocation()
        
        
    }
    
    @objc func locationManager(manager: CLLocationManager!, didUpdateLocations locations: [AnyObject]!) {
        
        println(locations)
        
        var userLocation:CLLocation = locations[0] as! CLLocation
        
        var latitude:CLLocationDegrees = userLocation.coordinate.latitude
        
        var longitude:CLLocationDegrees = userLocation.coordinate.longitude
        
        var latDelta:CLLocationDegrees = 0.05
        
        var lonDelta:CLLocationDegrees = 0.05
        
        var span:MKCoordinateSpan = MKCoordinateSpanMake(latDelta, lonDelta)
        
        var location:CLLocationCoordinate2D = CLLocationCoordinate2DMake(latitude, longitude)
        
        var region:MKCoordinateRegion = MKCoordinateRegionMake(location, span)
        
        map.setRegion(region, animated: false)
        
        }
        
        
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}
