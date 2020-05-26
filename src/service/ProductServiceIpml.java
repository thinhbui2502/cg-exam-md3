package service;

import model.Product;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class ProductServiceIpml implements ProductService {
    private String jdbcURL = "jdbc:mysql://localhost:3306/phone";
    private String jdbcUsername = "root";
    private String jdbcPassword = "sysadmin1234$";

    private static final String SELECT_ALL_USERS = "select * from product";
    private static final String SELECT_PRODUCT_BY_ID = "select * from users where id = ?";
    private static final String INSERT_PRODUCT = "INSERT INTO product" + "(product_name,price,quantity, color, category) VALUES" + "(?,?,?,?,?);";
    private static final String DELETE_PRODUCT = "delete from product where id = ?";
    private static final String UPDATE_PRODUCT = "update product set product_name = ?, price = ?, quantity = ?, color = ?, category = ? where id = ?;";


    protected Connection getConnection() {
        Connection connection = null;
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            connection = DriverManager.getConnection(jdbcURL, jdbcUsername, jdbcPassword);
        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
        }
        return connection;
    }

    @Override
    public List<Product> showAllProduct() {
        List<Product> products = new ArrayList<>();
        Connection connection = getConnection();
        try {
            PreparedStatement ps = connection.prepareStatement(SELECT_ALL_USERS);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                int productId = rs.getInt("id");
                String productName = rs.getString("product_name");
                float price = rs.getFloat("price");
                int quantity = rs.getInt("quantity");
                String color = rs.getString("color");
                int categoryId = rs.getInt("category_id");
                products.add(new Product(productId, productName, price, quantity, color, categoryId));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return products;
    }

    @Override
    public Product findProductById(int ProductId) {
        Product product = null;
        Connection connection = getConnection();
        try {
            PreparedStatement ps = connection.prepareStatement(SELECT_PRODUCT_BY_ID);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                product.setProductId(rs.getInt("id"));
                product.setProductName(rs.getString("product_name"));
                product.setPrice(rs.getFloat("price"));
                product.setQuantity(rs.getInt("quantity"));
                product.setColor(rs.getString("color"));
                product.setCategoryId(rs.getInt("category"));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return product;
    }

    @Override
    public void addNewProduct(Product product) {
        Connection connection = getConnection();
        try {
            PreparedStatement ps = connection.prepareStatement(INSERT_PRODUCT);
            ps.setString(1, product.getProductName());
            ps.setFloat(2, product.getPrice());
            ps.setInt(3, product.getQuantity());
            ps.setString(4, product.getColor());
            ps.setInt(5, product.getQuantity());
            ps.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    @Override
    public void updateProduct(Product product) {
        Connection connection = getConnection();
        try {
            PreparedStatement ps = connection.prepareStatement(UPDATE_PRODUCT);
            ps.setString(1, product.getProductName());
            ps.setFloat(2, product.getPrice());
            ps.setInt(3, product.getQuantity());
            ps.setString(4, product.getColor());
            ps.setInt(5, product.getQuantity());
            ps.setInt(6, product.getProductId());
            ps.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
}
