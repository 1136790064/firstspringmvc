package bookstore.test;

import bookstore.service.BookService;
import bookstore.service.CategoryService;
import com.alibaba.fastjson.JSON;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations= "classpath:applicationContext.xml")
public class ServiceTest {
    @Autowired
    private CategoryService categoryService;

    @Autowired
    private BookService bookService;


    @Test
    public void TestCategoryService(){
//        List<Category> categories;
//        categories = categoryService.findAll();

//        增强for遍历list集合
//        for (Category c: categories) {
//            System.out.println(c.getId()+","+c.getName()+","+c.getDescription());
//        }
        System.out.println(JSON.toJSONString(categoryService.findAll()));

    }

    @Test
    public void TestBookService(){
//        List<Book> books;
//        books = bookService.findBookesById(1);

//        //增强for遍历list集合
//        for (Book b:books) {
//            System.out.println(b.getId()+","+b.getName()+","+b.getAuthor()+","+b.getPrice()+","+b.getImage()+","+b.getDescription()+","+b.getCategory_id());
//        }

        System.out.println(JSON.toJSONString(bookService.findBookesById(1)));
    }
}
