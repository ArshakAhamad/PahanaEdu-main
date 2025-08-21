package CruzeX.webapp.Model;

import static org.junit.jupiter.api.Assertions.*;

import org.junit.jupiter.api.Test;

class BookTest {

    @Test
    void testGettersAndSetters() {
        Book Book = new Vehicle("1", "Book1", "image.jpg", "Stories",2000,1);

        Book.setVehicleID("2");
        assertEquals("2", Book.getVehicleID());

        Book.setVehicleName("Book");
        assertEquals("Book", Book.getVehicleName());

        Book.setImage("Book_image.jpg");
        assertEquals("Book_image.jpg", Book.getImage());

        Book.setCategory("Address");
        assertEquals("Address", Book.getCategory());
    }

    @Test
    void testConstructor() {
        Book vehicle = new Book("1", "Car", "image.jpg", "SUV",2000,1);

        assertEquals("1", Book.getVehicleID());
        assertEquals("Book1", Book.getVehicleName());
        assertEquals("image.jpg", Book.getImage());
        assertEquals("Stories", Book.getCategory());
    }
}
