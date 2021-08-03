package bookstore.controller;

import bookstore.entity.Category;
import bookstore.service.CategoryService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;

@Controller
@RequestMapping("/category")
public class CategoryController {
    @Autowired
    private CategoryService categoryService;

    @RequestMapping("/view")
    public String viewCategory(Model model){
        List<Category> list = categoryService.findAll();
        model.addAttribute("category",list);
        return "main";
    }

    //使用modelAndView
    @RequestMapping("/modelview")
    public ModelAndView showCategory(ModelAndView modelAndView){
        List<Category> list = categoryService.findAll();
        modelAndView.setViewName("main");
        modelAndView.addObject("category",list);
        return modelAndView;
    }
}
