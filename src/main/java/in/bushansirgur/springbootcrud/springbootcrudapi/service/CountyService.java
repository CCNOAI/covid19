package in.bushansirgur.springbootcrud.springbootcrudapi.service;

import in.bushansirgur.springbootcrud.springbootcrudapi.model.County;
import in.bushansirgur.springbootcrud.springbootcrudapi.repository.CountyRepository;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class CountyService extends CountyServiceImpl {

    @Autowired
    private CountyRepository repository;

    @Override
    public List<County> findByNameEndsWith(String name) {

        List<County> cities = (List<County>) repository.findByNameEndsWith(name);
        return cities;
    }
}
