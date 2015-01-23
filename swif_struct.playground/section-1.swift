struct Geopoint{
    var lat=0.0;
    var lon=0.0;
    //change itself by using mutating
    mutating func area() -> Double{
        self.lat=10.0;
        return lat
    }
}

var newGeopoint = Geopoint();
newGeopoint.lat=2;
var newGeopoint2 = Geopoint(lat: 1.0, lon: 1.0)
var result = newGeopoint2.area()