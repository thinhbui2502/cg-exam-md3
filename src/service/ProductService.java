package service;

import model.Product;

import java.util.List;

public interface ProductService {
    List<Product> showAllProduct ();
    Product findProductById (int ProductId);
    void addNewProduct (Product product);
    void updateProduct (Product product);
}
