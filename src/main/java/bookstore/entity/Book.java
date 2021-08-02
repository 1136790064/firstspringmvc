package bookstore.entity;

public class Book {
    //书籍编号
    private int id;
    //书籍名称
    private String name;
    //书籍作者
    private String Author;
    //书籍价格
    private double price;
    //书籍外形
    private String image;
    //书籍描述
    private String description;
    //书籍类别编号
    private int category_id;

    public Book(int id, String name, String author, double price, String image, String description, int category_id) {
        this.id = id;
        this.name = name;
        Author = author;
        this.price = price;
        this.image = image;
        this.description = description;
        this.category_id = category_id;
    }

    public Book() {
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getAuthor() {
        return Author;
    }

    public void setAuthor(String author) {
        this.Author = author;
    }

    public double getPrice() {
        return price;
    }

    public void setPrice(double price) {
        this.price = price;
    }

    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public int getCategory_id() {
        return category_id;
    }

    public void setCategory_id(int category_id) {
        this.category_id = category_id;
    }
}
