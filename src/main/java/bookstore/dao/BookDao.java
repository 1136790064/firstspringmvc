package bookstore.dao;

import bookstore.entity.Book;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * 当传入参数有多个时，无法在xml文件中说明多个传入参数的类型，如果用@Param注解就可以不用声明参数的类型，可以直接用#{paramname}引用参数值
 * 当参数是基本数据类型时可以使用这个注解
 */
@Repository
@Mapper
public interface BookDao {

    List<Book> findBookByCategoryId(@Param("id") int id);
}
