package in.bushansirgur.springbootcrud.springbootcrudapi.repository;

import in.bushansirgur.springbootcrud.springbootcrudapi.model.County;
import java.util.List;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface CountyRepository extends CrudRepository<County, Long> {

    @Query("select c.value from County c where c.county = :chars")
    List<County> findByNameEndsWith(String chars);
}
