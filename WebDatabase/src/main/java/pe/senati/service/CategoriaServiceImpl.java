package pe.senati.service;

import java.util.Collection;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import pe.senati.entity.Categoria;
import pe.senati.repository.CategoriaRepository;

@Service
public class CategoriaServiceImpl implements CategoriaService
{
	@Autowired
	private CategoriaRepository springData;
	
	public CategoriaServiceImpl() {}

	@Override
	@Transactional
	public void insert(Categoria categoria) {
		springData.save(categoria);		
	}

	@Override
	@Transactional
	public void update(Categoria categoria) {
		springData.save(categoria);		
	}

	@Override
	@Transactional
	public void delete(Integer categoria_id) {
		springData.deleteById(categoria_id);		
	}

	@Override
	@Transactional(readOnly=true)
	public Categoria findById(Integer categoria_id) {
		return springData.findById(categoria_id).orElse(null);
	}

	@Override
	@Transactional(readOnly=true)
	public Collection<Categoria> findAll() {
		return springData.findAll();
	}
}
