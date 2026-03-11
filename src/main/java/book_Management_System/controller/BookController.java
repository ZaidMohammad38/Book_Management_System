package book_Management_System.controller;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import book_Management_System.dao.BookDAO;
import book_Management_System.model.Book;
import jakarta.persistence.EntityManager;
import jakarta.persistence.EntityTransaction;
import springmvc.dao.StudentDao;
import springmvc.dto.Student;

@Controller
public class BookController {

	@RequestMapping("books")
	public String insert(@ModelAttribute Book book) {
		System.out.println("data is inserted");

		BookDAO bookDAO = new BookDAO();
		return bookDAO.insert(book);
	}
	
	@RequestMapping("/booksread")
	public ModelAndView fetchAll() {
		BookDAO bookDAO = new BookDAO();
		List<Book> list = bookDAO.fetchAll();

		ModelAndView modelAndView = new ModelAndView("bookList.jsp");
		modelAndView.addObject("BookDetails", list);
		return modelAndView;
	}
	
	@RequestMapping("/books/edit/{id}")
	public ModelAndView edit(@ModelAttribute Book book) {
		BookDAO bookDAO = new BookDAO();
		bookDAO.edit(book);
		
		List<Book> list = bookDAO.fetchAll();

		ModelAndView modelAndView = new ModelAndView("/booksread");
		modelAndView.addObject("BookDetails", list);
		return modelAndView;
	}
	

	@RequestMapping("/did")
	@ResponseBody
	public ModelAndView deleteById(@ModelAttribute Book std) {
//		System.out.println(id);
		BookDAO bookDao = new BookDAO();
		bookDao.deleteById(std.getId());
		
		List<Book> list = bookDao.fetchAll();

		ModelAndView modelAndView = new ModelAndView("/booksread");
		modelAndView.addObject("data", list);
		return modelAndView;
	}
}
