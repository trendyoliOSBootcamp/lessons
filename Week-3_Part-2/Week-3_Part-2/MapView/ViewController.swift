//
//  ViewController.swift
//  Week-3_Part-2
//
//  Created by Kerim Çağlar on 2.05.2021.
//

import UIKit
import MapKit
import CoreLocation

class ViewController: UIViewController {

    @IBOutlet weak var mapView: MKMapView!
    var locationManager = CLLocationManager()
    var lastLocation: CLLocation?
    @IBOutlet weak var addressLbl: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        checkLocationServices()
    }

    func setupLocationManager() {
        locationManager.delegate = self
        locationManager.desiredAccuracy = kCLLocationAccuracyBest
    }
    
    func showUserLocationCenterMap() {
        if let location = locationManager.location?.coordinate {
            let region = MKCoordinateRegion.init(center: location, latitudinalMeters: 100, longitudinalMeters: 100)
            mapView.setRegion(region, animated: true)
        }
    }

    func checkLocationServices() {
        if CLLocationManager.locationServicesEnabled() {
            //TODO:
            setupLocationManager()
            checkLocationAuth()
        } else {
            //Kullanıcıya bir alert göterip, ayarlardan açmaya yönlendirebiliriz
            showAccessAlert()
            
        }
    }
    
    func showAccessAlert() {
        print("İzin verilmedi")
        
        let alertController = UIAlertController(title: "Hata", message: "Konum İzinleri Kapalı", preferredStyle: .alert)
        
        //MARK: Ayarlardan konum açılacak
        /*let settingsAction = UIAlertAction(title: "Setting", style: .default) { (_) in
            guard let settingsUrl = URL(string: UIApplication.openSettingsURLString) else { return }
            if UIApplication.shared.canOpenURL(settingsUrl) {
                UIApplication.shared.open(settingsUrl) { success in
                    print("Ayarlar açıldı: \(success)")
                }
            }
        }*/
        
        //MARK: Bir harita uygulamasında Getir gibi kullanıcının konumunu bulup adresini pinlemeyi yapmaya çalışın.
        //MARK: Akşam hazırlanacak pdf dosyasındaki ödevi yapınız ( Bilet, yolcu)
        
        let cancelAction = UIAlertAction(title: "Tamam", style: .default, handler: nil)
        
        alertController.addAction(cancelAction)
        
        present(alertController, animated: true, completion: nil)
    }
    
    func checkLocationAuth() {
        switch CLLocationManager.authorizationStatus() {
        case .authorizedWhenInUse:
            listenLocation()
        case .denied:
            showAccessAlert()
        case .authorizedAlways:
            break
        case .notDetermined:
            locationManager.requestWhenInUseAuthorization()
        case .restricted:
            break
        }
    }
    
    //Kullanıcının konumunu izleme
    func listenLocation() {
        mapView.showsUserLocation = true
        showUserLocationCenterMap()
        locationManager.startUpdatingLocation()
        lastLocation = getCenterLocation(mapView: mapView)
    }
    
    //Haritanın merkezini hesaplama
    func getCenterLocation(mapView:MKMapView) -> CLLocation {
        let latitude = mapView.centerCoordinate.latitude
        let longitude = mapView.centerCoordinate.longitude
        return CLLocation(latitude: latitude, longitude: longitude)
    }
    
}

extension ViewController: CLLocationManagerDelegate {
    
    //location update durumu
    /*func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        guard let location = locations.last else { return }
        let center = CLLocationCoordinate2D(latitude: location.coordinate.latitude, longitude: location.coordinate.longitude)
        let region = MKCoordinateRegion(center: center, latitudinalMeters: 100, longitudinalMeters: 100)
        
        mapView.setRegion(region, animated: true)
    }*/
    
    //verilen izin kontrolü
    func locationManagerDidChangeAuthorization(_ manager: CLLocationManager) {
        //TODO:
        checkLocationAuth()
    }
}

extension ViewController: MKMapViewDelegate {
    
    func mapView(_ mapView: MKMapView, regionDidChangeAnimated animated: Bool) {
        
        let center = getCenterLocation(mapView: mapView)
        let geoCoder = CLGeocoder()
        
        guard let lastLocation = lastLocation else { return }
        
        guard center.distance(from: lastLocation) > 30 else { return }
        
        self.lastLocation = center
        
        geoCoder.reverseGeocodeLocation(center) { (placemarks, error) in
            
            if let error = error {
                print(error)
            }
            
            guard let placemark = placemarks?.first else { return }
            
            let city = placemark.locality ?? "City"
            let street = placemark.thoroughfare ?? "Street"
            
            DispatchQueue.main.async {
                self.addressLbl.text = "\(city) - \(street)"
            }
        }
    }
}
