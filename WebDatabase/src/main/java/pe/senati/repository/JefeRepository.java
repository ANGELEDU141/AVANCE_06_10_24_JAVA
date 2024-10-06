package pe.senati.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import pe.senati.entity.Jefe;

@Repository
public interface JefeRepository extends JpaRepository<Jefe,Integer> {


    @Query(value = "select count(*) from categorias where jefe_id = ?1", nativeQuery = true)
    public abstract int isDeleted(Integer jefe_id);

}
