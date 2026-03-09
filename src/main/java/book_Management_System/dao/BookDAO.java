package book_Management_System.dao;

import java.util.List;

import book_Management_System.model.Book;
import jakarta.persistence.EntityManager;
import jakarta.persistence.EntityManagerFactory;
import jakarta.persistence.EntityTransaction;
import jakarta.persistence.Persistence;
import jakarta.persistence.Query;

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
}
