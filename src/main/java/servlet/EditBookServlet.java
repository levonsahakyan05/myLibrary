package servlet;

import manager.AuthorManager;
import manager.BookManager;
import model.Book;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;
import java.io.IOException;

@WebServlet(urlPatterns = "/books/edit")
@MultipartConfig(
        fileSizeThreshold = 1024 * 1024 * 1,
        maxFileSize = 1024 * 1024 * 10,
        maxRequestSize = 1024 * 1024 * 100
)

public class EditBookServlet extends HttpServlet {

    private BookManager bookManager = new BookManager();
    private AuthorManager authorManager = new AuthorManager();
    private static final String IMAGE_PATH = "C:\\Users\\Levon\\IdeaProjects\\myLibrary\\projectImages\\";

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        int bookId = Integer.parseInt(req.getParameter("bookId"));
        Book book = bookManager.getById(bookId);
        req.setAttribute("authors", authorManager.getAll());
        req.setAttribute("books", book);
        req.getRequestDispatcher("/WEB-INF/editBook.jsp").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        int bookId = Integer.parseInt(req.getParameter("bookId"));
        String title = req.getParameter("title");
        String description = req.getParameter("description");
        double price = Double.parseDouble(req.getParameter("price"));
        int authorId = Integer.parseInt(req.getParameter("authorId"));
        Part profilePicPart = req.getPart("profilePic");
        String fileName = null;
        if (profilePicPart != null) {
            long nanoTime = System.nanoTime();
            fileName = nanoTime + "_" + profilePicPart.getSubmittedFileName();
            profilePicPart.write(IMAGE_PATH + fileName);
            Book book = Book.builder()
                    .id(bookId)
                    .title(title)
                    .description(description)
                    .price(price)
                    .author(authorManager.getById(authorId))
                    .profilePic(fileName)
                    .build();
            bookManager.edit(book);
            resp.sendRedirect("/books");
        }
    }
}
