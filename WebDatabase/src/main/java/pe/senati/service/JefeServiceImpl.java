package pe.senati.service;

import java.util.Collection;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;


import pe.senati.entity.Jefe;
import pe.senati.repository.JefeRepository;

@Service
public class JefeServiceImpl implements JefeService
{
	@Autowired
	private JefeRepository springData;
	
	public JefeServiceImpl() {}



	@Override
	@Transactional
	public void insert(Jefe jefe) {
		springData.save(jefe);		
	}

	@Override
	@Transactional
	public void update(Jefe jefe) {
		springData.save(jefe);		
	}

	@Override
	@Transactional
	public void delete(Integer jefe_id) {
		springData.deleteById(jefe_id);		

		int isDeleted = springData.isDeleted(jefe_id);
		if (isDeleted == 0) {
			springData.deleteById(jefe_id);
		}
	}

	@Override
	@Transactional(readOnly=true)
	public Jefe findById(Integer jefe_id) {
		return springData.findById(jefe_id).orElse(null);
	}

	@Override
	@Transactional(readOnly=true)
	public Collection<Jefe> findAll() {
		return springData.findAll();
	}

	@Override
	@Transactional(readOnly=true)
	public int isDeleted(Integer jefe_id) {
		return springData.isDeleted(jefe_id);
	}
}
