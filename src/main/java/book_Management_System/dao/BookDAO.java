package book_Management_System.dao;

import java.util.List;

import book_Management_System.model.Book;
import jakarta.persistence.EntityManager;
import jakarta.persistence.EntityManagerFactory;
import jakarta.persistence.EntityTransaction;
import jakarta.persistence.Persistence;
import jakarta.persistence.Query;
import springmvc.dto.Student;

public class BookDAO {
	EntityManagerFactory entityManagerFactory = Persistence.createEntityManagerFactory("dev1");
	EntityManager entityManager = entityManagerFactory.createEntityManager();
	EntityTransaction entityTransaction = entityManager.getTransaction();

	public String insert(Book book) {
		entityTransaction.begin();
		entityManager.persist(book);
		entityTransaction.commit();
		return "data is inserted";
	}
	
	public Book fetchById(int id) {
		// TODO Auto-generated method stub
		Book book = entityManager.find(Book.class, id);
		return book;
	}

	public List<Book> fetchAll() {
		Query q = entityManager.createQuery("select a from Book a");
		List<Book> list = q.getResultList();
		if (list.isEmpty()) {
			return null;
		} else {
			return list;
		}
	}

	public void edit(Book book) {
		entityTransaction.begin();
		entityManager.merge(book);
		entityTransaction.commit();
	}

//	public String DeleteById(long id) {
//		Book book = entityManager.find(Book.class,id);
//		if(book == null) {
//			return "no book found";
//		}else {
//			entityTransaction.begin();
//			entityManager.remove(book);
//			entityTransaction.commit();
//			return "book data deleted";
//		}
	
	public String deleteById(long id) {
		Book book = entityManager.find(Book.class, id);
		if (book == null) {
			return "no data found";
		} else {
			entityTransaction.begin();
			entityManager.remove(book);
			entityTransaction.commit();
			return "data deleted";
		}
	}
}
