package micronaut.example;

import example.micronaut.pojo.Book;
import io.micronaut.http.annotation.Controller;
import io.micronaut.http.annotation.Get;

@Controller("/books")
public class BookController {

    @Get
    Book index() {
        Book book = new Book();
        book.setName("Micronaut");
        return book;
    }
}