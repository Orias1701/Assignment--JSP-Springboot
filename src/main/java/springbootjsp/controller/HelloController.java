package springbootjsp.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.*;

@Controller
public class HelloController {

    @GetMapping("/bai1")
    public String bai1(Model model) {
        List<int[]> list = new ArrayList<>();
        for (int i = 1; i <= 10; i++) {
            list.add(new int[]{i, i * 2});
        }
        model.addAttribute("result", list);
        return "bai1";
    }

    @GetMapping("/bai2")
    public String bai2(Model model) {
        List<String[]> list = new ArrayList<>();
        for (int i = 1; i <= 10; i++) {
            if (i % 2 == 0) {
                list.add(new String[]{i + " x 2", "?"});
            } else {
                list.add(new String[]{i + " x 2", String.valueOf(i * 2)});
            }
        }
        model.addAttribute("result", list);
        return "bai2";
    }

    @GetMapping("/bai3")
    public String bai3(Model model) {
        Map<Integer, List<String[]>> tables = new LinkedHashMap<>();
        for (int n = 2; n <= 9; n++) {
            List<String[]> list = new ArrayList<>();
            for (int i = 1; i <= 10; i++) {
                list.add(new String[]{i + " x " + n, String.valueOf(i * n)});
            }
            tables.put(n, list);
        }
        model.addAttribute("tables", tables);
        return "bai3";
    }

    @GetMapping("/bai4")
    public String bai4(Model model) {
        List<String[]> list = new ArrayList<>();
        long gt = 1;
        for (int i = 0; i <= 10; i++) {
            if (i == 0) gt = 1;
            else gt *= i;
            list.add(new String[]{i + "!", String.valueOf(gt)});
        }
        model.addAttribute("result", list);
        return "bai4";
    }

    @GetMapping("/bai5")
    public String formNhapThongTin() {
        return "NhapThongTin";
    }

    @PostMapping("/xin-chao")
    public String xinChao(@RequestParam("ten") String ten, Model model) {
        model.addAttribute("ten", ten);
        return "XinChao";
    }
}
