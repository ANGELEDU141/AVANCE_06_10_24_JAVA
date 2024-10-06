package pe.senati.controller;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import pe.senati.entity.Proveedor;
import pe.senati.service.ProveedorService;

@Controller
@RequestMapping("/proveedor")

public class ProveedorController {

    @Autowired
    @Qualifier("proveedorServiceImpl")
    private ProveedorService proveedorService;

    public ProveedorController() {
    }

    @GetMapping("/listar")
    public String listar_GET(Map map) {
        map.put("bProveedor", proveedorService.findAll());
        return "Proveedor/listar";
    }




    @GetMapping("/registrar")
    public String registrar_GET(Model model) {
        Proveedor proveedor = new Proveedor();
        model.addAttribute("proveedor", proveedor);

        return "Proveedor/registrar";
    }

    @PostMapping("/registrar")
    public String registrar_POST(Proveedor proveedor) {
        proveedorService.insert(proveedor);
        return "redirect:/proveedor/listar";
    }


    @GetMapping("/detalle/{proveedor_id}")
    public String detalle_GET(Model model, @PathVariable Integer proveedor_id) {
        Proveedor proveedorDb = proveedorService.findById(proveedor_id);
        model.addAttribute("proveedor", proveedorDb);
        return "Proveedor/detalle";
    }

    @GetMapping("/editar/{proveedor_id}")
    public String editar_GET(Model model, @PathVariable Integer proveedor_id) {
        Proveedor proveedorDb = proveedorService.findById(proveedor_id);
        model.addAttribute("proveedor", proveedorDb);
        return "Proveedor/editar";
    }

    @PostMapping("/editar/{proveedor_id}")
    public String editar_POST(Proveedor proveedor) {
        proveedorService.update(proveedor);
        return "redirect:/proveedor/listar";
    }

    @GetMapping("/borrar/{proveedor_id}")
    public String borrar_GET(Model model, @PathVariable Integer proveedor_id) {
        Proveedor proveedorDb = proveedorService.findById(proveedor_id);
        model.addAttribute("proveedor", proveedorDb);
        return "Proveedor/borrar";
    }

    @PostMapping("/borrar/{proveedor_id}")
    public String borrar_POST(Proveedor proveedor) {
        proveedorService.delete(proveedor.getProveedor_id());
        return "redirect:/proveedor/listar";
    }

}
