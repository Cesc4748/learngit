import java.util.*;
public class Actions {
	private static DBConnector cont = new DBConnector("jdbc:mysql://w.rdc.sae.sina.com.cn:3307/app_masteryoda", "5wmkyz5okn", "kyy3iwz3ly4mijz41l4wjhw0zy3zzxlh4k0kim4x");
	//private static DBConnector cont = new DBConnector("jdbc:mysql://localhost:3306/lib_test", "root", "usetheforce");
	private static String isbn = new String();
	private static Book book_info=new Book();
	private static String author_name=new String();
	private static List<Book> books = new ArrayList<Book>();
	public String getIsbn() {
		return isbn;
	}
	public void setIsbn(String isbn) {
		Actions.isbn = isbn;
	}
	public Book getBook_info() {
		return book_info;
	}
	
	public void setAuthor_name(String author_name) {
		Actions.author_name = author_name;
	}
	public List<Book> getBooks() {
		return books;
	}
	
		ArrayList<Book> list = cont.OnSearchForAuthor(author_name);
		
			books.add(list.get(i));
			System.out.println(list.get(i).title);
		}
		return "booklist";
	}
	public String BookListexcute() {
		book_info = cont.OnSearchForBook(isbn);
		return "bookinfo";
	}
	public String Deleteexcute() {
		cont.OnDeleteBook(isbn);
		return "SearchAuthor";
	}
	public String Backexcute() {
		return "SearchAuthor";
	}
}
