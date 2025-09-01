package springbootjsp.controller;

import springbootjsp.model.Hang;
import springbootjsp.service.HangService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

@Controller
public class HangController {

    @Autowired
    private HangService service;

    @GetMapping("/hang")
    public String listHang(Model model) {
        model.addAttribute("list", service.getAll());
        model.addAttribute("hang", new Hang());
        return "hang";
    }

    @PostMapping("/hang")
    public String submit(@ModelAttribute("hang") Hang hang,
                         @RequestParam("action") String action) {
        switch (action) {
            case "add": service.add(hang); break;
            case "update": service.edit(hang); break;
            case "delete": service.remove(hang.getMaHang()); break;
        }
        return "redirect:/hang";
    }
}
