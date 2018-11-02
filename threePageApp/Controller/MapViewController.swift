//
//  MapViewController.swift
//  threePageApp
//
//  Created by Marij on 01/11/2018.
//  Copyright © 2018 Marij. All rights reserved.
//

import UIKit
import GoogleMaps
//import GooglePlaces
import GooglePlacePicker
import MapKit

class MapViewController: UIViewController, CLLocationManagerDelegate {
    var currentLongitude: CLLocationDegrees = 0
    var currentLatitude: CLLocationDegrees = 0
    var locationManager: CLLocationManager!
    var placePicker: GMSPlacePickerViewController!
    var googleMapView: GMSMapView!
    
    @IBOutlet weak var mapViewContainer: MKMapView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.googleMapView = GMSMapView(frame: self.mapViewContainer.frame)
        self.googleMapView.animate(toZoom: 18.0)
        self.view.addSubview(googleMapView)
        self.locationManager = CLLocationManager()
        self.locationManager.delegate = self
        self.locationManager.requestAlwaysAuthorization()
        self.locationManager.requestWhenInUseAuthorization()
        self.locationManager.startUpdatingLocation()
        
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        let coordinates = CLLocationCoordinate2DMake(self.currentLatitude, self.currentLongitude)
        let marker = GMSMarker(position: coordinates)
        marker.title = "You are here"
        marker.map = self.googleMapView
        self.googleMapView.animate(toLocation: coordinates)
    }
    
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        if let location:CLLocation = locations.last {
            self.currentLatitude = location.coordinate.latitude
            self.currentLongitude = location.coordinate.longitude
        }
        else {
            print("Location Error")
        }
        
    }
    
  
    
    private func locationManager(manager: CLLocationManager,
                         didFailWithError error: Error){
        print("An error occurred while tracking location changes : \(error.localizedDescription)")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
   

    


}
