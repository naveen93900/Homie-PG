package new_project;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class Pg {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
	 private String name;
	   private String location;
	    private double price;
	    @Column(length = 1000)
	   private String description;
	    
	    private String imageUrl;
	    
	    public Pg() {
	    	
	    }

		public Pg(int id, String name, String location, double price, String description, String imageUrl) {
			super();
			this.id = id;
			this.name = name;
			this.location = location;
			this.price = price;
			this.description = description;
			this.imageUrl = imageUrl;
		}

		public int getId() {
			return id;
		}

		public void setId(int id) {
			this.id = id;
		}

		public String getName() {
			return name;
		}

		public void setName(String name) {
			this.name = name;
		}

		public String getLocation() {
			return location;
		}

		public void setLocation(String location) {
			this.location = location;
		}

		public double getPrice() {
			return price;
		}

		public void setPrice(double price) {
			this.price = price;
		}

		public String getDescription() {
			return description;
		}

		public void setDescription(String description) {
			this.description = description;
		}

		public String getImageUrl() {
			return imageUrl;
		}

		public void setImageUrl(String imageUrl) {
			this.imageUrl = imageUrl;
		}
	    
		
}
