package dao;

import java.util.ArrayList;
import dto.Product;

public class ProductRepository {
	
	private ArrayList<Product> listOfProducts = new ArrayList<Product>();
	private static ProductRepository instance = new ProductRepository();
	
	public static ProductRepository getInstance() {
		return instance;
	}
	
	public ProductRepository() {
		Product phone = new Product("P1234", "iPhone 6s", 800000);
		
		phone.setDescription("4.7-inch, 1334X750 Renina HD display,"
				+ "8-magapixel iSight Camera");
		phone.setCategory("Smart Phone");
		phone.setManufacturer("Apple");
		phone.setUnitsInStock(1000);
		phone.setCondition("New");
		
		Product noteBook = new Product("P1235", "LG PC 그램", 1500000);
		noteBook.setDescription("13.3-inch, IPS LED display, 5rd Generation"
				+ "Intel Core processors");
		noteBook.setCategory("Notebook");
		noteBook.setManufacturer("LG");
		noteBook.setUnitsInStock(1000);
		noteBook.setCondition("Refurbished");
		
		Product tablet = new Product("P1236", "Galaxy Tab S", 900000);
		tablet.setDescription("212.8*125.6*6.6mm, Super AMOLED display, Octa-"
				+ "Core processor");
		tablet.setCategory("Tablet");
		tablet.setManufacturer("Samsung");
		tablet.setUnitsInStock(1000);
		tablet.setCondition("Old");
		
		listOfProducts.add(phone);
		listOfProducts.add(noteBook);
		listOfProducts.add(tablet);	
	}
	
	public Product getProductById(String productId) {
		Product productById = null;
		
		for(int i = 0; i < listOfProducts.size(); i++) {
			Product product = listOfProducts.get(i);
			if(product != null && product.getProductId() != null && product.getProductId()
					.equals(productId)) {
				productById = product;
				break;
			}
		}
		return productById;
	}
	
	public ArrayList<Product> getAllProducts() {
		return listOfProducts;
	}
	
	public void addProduct(Product product) {
		listOfProducts.add(product);
	}
}
