package co.grandcircus.springmongo;

import org.springframework.data.annotation.Id;
import org.springframework.data.mongodb.core.mapping.Document;

@Document("hotels")
public class Hotel implements Comparable<Hotel> {

    @Id
    public String id;

    public String hotelName;

    public String city;

    public int pricePerNight;

    public Hotel(String hotelName, String city, int pricePerNight) {
        this.hotelName = hotelName;
        this.city = city;
        this.pricePerNight = pricePerNight;
    }

    public String getId() {
        return id;
    }

    public int getPricePerNight() {
        return pricePerNight;
    }

    public String getCity() {
        return city;
    }

    public String getHotelName() {
        return hotelName;
    }

    @Override
    public int compareTo(Hotel hotel) {
        return hotel.pricePerNight > this.pricePerNight ? -1 : 1;
    }
}
