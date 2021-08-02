package bookstore.test;

public class Thread1 {

    public static void main(String[] args) {
        Thread.currentThread().setName("主线程");
        System.out.println(Thread.currentThread().getName()+","+"输出的结果");


    }
}
