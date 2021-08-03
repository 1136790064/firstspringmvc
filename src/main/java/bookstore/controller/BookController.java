package bookstore.controller;

import bookstore.entity.Book;
import bookstore.service.BookService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;

@Controller
@RequestMapping("/book")
public class BookController {
    @Autowired
    public BookService bookService;

    //restful风格
    @RequestMapping("/{id}")
    @ResponseBody
    public List<Book> showBookedByCategoryId(@PathVariable("id") int id){
        return bookService.findBookesById(id);
    }
}
