package perscholas.demo.database.dao;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;
import perscholas.demo.database.entity.Product;
import perscholas.demo.database.entity.User;

import java.util.List;
//with this annotation below, when spring starts up it creates an instance of this class to use anywhere in the application
@Repository
public interface ProductRepository extends JpaRepository<Product, Integer> {
    public List<Product> findByType(@Param("type") String type);
}