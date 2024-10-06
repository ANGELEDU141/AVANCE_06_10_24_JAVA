package pe.senati.service;


import java.util.Collection;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import pe.senati.entity.Proveedor;
import pe.senati.repository.ProveedorRepository;

@Service
public class ProveedorServiceImpl implements  ProveedorService {

    @Autowired
    private ProveedorRepository springData;

    public ProveedorServiceImpl() {}

    @Override
    @Transactional
    public void insert(Proveedor proveedor) {   
        springData.save(proveedor);
    }



    @Override
    @Transactional
    public void update(Proveedor proveedor) {
        springData.save(proveedor);	
    }
    

    @Override
    @Transactional
    public void delete(Integer proveedor_id) {
        springData.deleteById(proveedor_id);
    }

    @Override    
    @Transactional(readOnly=true)
    public Proveedor findById(Integer proveedor_id) {
        return springData.findById(proveedor_id).orElse(null);
    }    

    @Override                
    @Transactional(readOnly=true)
    public Collection<Proveedor> findAll() {
        return springData.findAll();
    }   

}
