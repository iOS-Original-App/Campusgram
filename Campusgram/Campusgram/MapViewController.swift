//
//  MapViewController.swift
//  Campusgram
//
//  Created by Kennedi Cosma on 4/5/21.
//

import UIKit


//class MapViewController: UIViewController {
//
//    @IBOutlet weak var mapView: MKMapView!
//
//    let locationManager = CLLocationManager()
//
//
//
//    override func viewDidLoad() {
//        super.viewDidLoad()
//        func checkLocationServices() {
//          if CLLocationManager.locationServicesEnabled() {
//            checkLocationAuthorization()
//          } else {
//            // Show alert letting the user know they have to turn this on.
//          }
//        }
//        func checkLocationAuthorization() {
//          switch CLLocationManager.authorizationStatus() {
//          case .authorizedWhenInUse:
//            mapView.showsUserLocation = true
//           case .denied: // Show alert telling users how to turn on permissions
//           break
//          case .notDetermined:
//            locationManager.requestWhenInUseAuthorization()
//            mapView.showsUserLocation = true
//          case .restricted: // Show an alert letting them know what’s up
//           break
//          case .authorizedAlways:
//           break
//            let camera = GMSCameraPosition.camera(withLatitude: 42.7370, longitude: 84.4839, zoom: 6.0)
//                   let mapView = GMSMapView.map(withFrame: self.view.frame, camera: camera)
//                   self.view.addSubview(mapView)
//
//                   // Creates a marker in the center of the map.
//                   let marker = GMSMarker()
//                   marker.position = CLLocationCoordinate2D(latitude: -33.86, longitude: 151.20)
//                   marker.title = "East Lansing"
//                   marker.snippet = "Michigan"
//                   marker.map = mapView
//          }
//        }
//
//
//        // Do any additional setup after loading the view.
//    }
//
//
//}
