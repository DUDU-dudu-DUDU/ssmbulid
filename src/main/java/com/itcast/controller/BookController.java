package com.itcast.controller;

import com.itcast.pojo.Books;
import com.itcast.service.BookService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.ArrayList;
import java.util.List;

@Controller
@RequestMapping("/book")
public class BookController {
    @Autowired
    @Qualifier("BookServiceImpl")
    private BookService bookService;

    @RequestMapping("/allBook")
    public String List(Model model){
        List<Books> list = bookService.queryAllBook();
        model.addAttribute("list", list);
        return "allBook";
    }

    // 增加书籍页面
    @RequestMapping("/toAddBook")
    public String toAddPaper(){
        return "addBook";
    }

    // 添加书籍请求
    @RequestMapping("/addBook")
    public String addBook(Books books){
        System.out.println("addBook=>" + books);
        bookService.addBook(books);
        return "redirect:/book/allBook";
    }

    // 修改书籍页面
    @RequestMapping("/toUpdateBook")
    public String toUpdataBook(int id, Model model){
        Books books = bookService.queryBookById(id);
        System.out.println(books);
        model.addAttribute("book", books);
        return "updateBook";
    }

    // 修改书籍请求
    @RequestMapping("/updateBook")
    public String updateBook(Books book,Model model){
        System.out.println(book);
         bookService.updateBook(book);
        Books books = bookService.queryBookById(book.getBookID());
        model.addAttribute("books", books);
        return "redirect:/book/allBook";
    }

    // 删除书籍
    @RequestMapping("/delBook/{bookID}")
    public String delBook(@PathVariable("bookID") int id){
        System.out.println(id);
        bookService.deleteBookById(id);
        return "redirect:/book/allBook";
    }

    // 搜索书籍
    @RequestMapping("/queryBook")
    public String queryBook(String queryBookName, Model model){
        List<Books> list = bookService.queryBookByName(queryBookName);
        System.out.println("queryBookByName=>" + list);
        if (list == null || list.size() == 0){
            list = bookService.queryAllBook();
            model.addAttribute("error","未查到该书籍");
        }
        model.addAttribute("list", list);
        return "allBook";
    }


}
