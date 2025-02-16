package vn.quocdk.laptopshop.repository;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import vn.quocdk.laptopshop.domain.User;

//crud: create, read, update, delete
@Repository
public interface UserRepository extends JpaRepository<User, Long> {

    User save(User eric);

    void deleteById(long id);

    Page<User> findAll(Pageable pageable);

    User findById(long id); // null

    boolean existsByEmail(String email);

    User findByEmail(String email);
}
