package pe.senati.controller;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import pe.senati.entity.Jefe;
import pe.senati.service.JefeService;

@Controller
@RequestMapping("/jefe")
public class JefeController 
{
	@Autowired
	@Qualifier("jefeServiceImpl")
	private JefeService jefeService;
	
	public JefeController() {}
	
	@GetMapping("/listar")
	public String listar_GET(Map map) 
	{
		map.put("bJefes",jefeService.findAll());
		
		return "Jefe/listar";
	}
	
	@GetMapping("/registrar")
	public String registrar_GET(Model model)
	{
		Jefe jefeModel=new Jefe();
		model.addAttribute("jefe",jefeModel);
		
		return "Jefe/registrar";
	}
	
	@PostMapping("/registrar")
	public String registrar_POST(Jefe jefe)
	{
		jefeService.insert(jefe);
		return "redirect:/jefe/listar";
	}
}
