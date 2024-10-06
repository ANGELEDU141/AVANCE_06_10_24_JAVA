package pe.senati.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import pe.senati.entity.Categoria;
import pe.senati.service.CategoriaService;
import pe.senati.service.JefeService;
import java.util.Map;

@Controller
@RequestMapping("/categoria")
public class CategoriaController {

    public CategoriaController() {
    }
    @Autowired
    @Qualifier("categoriaServiceImpl")
    private CategoriaService categoriaService;
    @Autowired
    @Qualifier("jefeServiceImpl")
    private JefeService jefeService;

    @GetMapping("/listar")
    public String listar_GET(Map map) {
        map.put("bCategorias", categoriaService.findAll());
        return "Categoria/listar";
    }

    @GetMapping("/registrar")
    public String registrar_GET(Model model, Map map) {
        Categoria categoriaModel = new Categoria();
        model.addAttribute("categoria", categoriaModel);
        map.put("bJefes", jefeService.findAll());
        return "Categoria/registrar";
    }

    @PostMapping("/registrar")
    public String registrar_POST(Categoria categoria) {
        categoriaService.insert(categoria);
        return "redirect:/categoria/listar";
    }

    @GetMapping("/detalles/{categoria_id}")
    public String detalle_GET(Model model, @PathVariable Integer categoria_id) {
        Categoria categoriaDb = categoriaService.findById(categoria_id);
        model.addAttribute("categoria", categoriaDb);
        return "Categoria/details";
    }

    @GetMapping("/editar/{categoria_id}")
    public String actualizar_GET(Model model, Map map, @PathVariable Integer categoria_id) {
        Categoria categoriaDb = categoriaService.findById(categoria_id);
        model.addAttribute("categoria", categoriaDb);
        map.put("bJefes", jefeService.findAll());
        return "Categoria/edit";
    }

    @PostMapping("/editar/{categoria_id}")
    public String actualizar_POST(Categoria categoria) {
        categoriaService.update(categoria);
        return "redirect:/categoria/listar";
    }

    @GetMapping("/borrar/{categoria_id}")
    public String borrar_GET(Model model, @PathVariable Integer categoria_id) {
        Categoria categoriaDb = categoriaService.findById(categoria_id);
        model.addAttribute("categoria", categoriaDb);
        return "Categoria/borrar";
    }

    @PostMapping("/borrar/{categoria_id}")
    public String borrar_POST(Categoria categoria) {
        categoriaService.delete(categoria.getCategoria_id());
        return "redirect:/categoria/listar";
    }
}
