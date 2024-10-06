package pe.senati.controller;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import pe.senati.entity.Categoria;
import pe.senati.service.CategoriaService;
import pe.senati.service.JefeService;

@Controller
@RequestMapping("/categoria")
public class CategoriaController 
{
	@Autowired
	@Qualifier("categoriaServiceImpl")
	private CategoriaService categoriaService;
	
	@Autowired
	@Qualifier("jefeServiceImpl")
	private JefeService jefeService;
	
	public CategoriaController() {}
	
	@GetMapping("/listar")
	public String listar_GET(Map map)
	{
		map.put("bCategorias",categoriaService.findAll());
		return "Categoria/listar";
	}
	
	@GetMapping("/registrar")
	public String registrar_GET(Model model,Map map)
	{
		Categoria categoriaModel=new Categoria();
		model.addAttribute("categoria",categoriaModel);
		
		map.put("bJefes",jefeService.findAll());
		
		return "Categoria/registrar";
	}
	
	@PostMapping("/registrar")
	public String registrar_POST(Categoria categoria)
	{
		categoriaService.insert(categoria);
		return "redirect:/categoria/listar";
	}
}
