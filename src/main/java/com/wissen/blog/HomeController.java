package com.wissen.blog;

import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.wissen.util.Categories;
import com.wissen.util.Posts;

@Controller
public class HomeController {

	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String index(Model model, HttpServletRequest req) {
		String sql = "SELECT * FROM posts ORDER BY id DESC";
		List<Posts> posts = new ArrayList<Posts>();
		DB db = new DB();
		try {
			ResultSet rs = db.baglan().executeQuery(sql);
			while (rs.next()) {
				Posts post = new Posts();
				post.setId(rs.getString("id"));
				post.setCategory(rs.getString("category"));
				post.setTitle(rs.getString("title"));
				post.setContent(rs.getString("content"));
				post.setDate(rs.getString("date"));
				posts.add(post);
			}
			boolean id = req.getSession().getAttribute("id") != null;
			System.out.println("id : " + id);
			if (id) {
				model.addAttribute("giris", true);
			}
			model.addAttribute("posts", posts);
		} catch (Exception e) {
			System.err.println("Database Hatası : " + e);
		} finally {
			db.kapat();
		}
		return "index";
	}

	@RequestMapping(value = "/loginpage", method = RequestMethod.GET)
	public String login() {
		return "login";
	}

	@RequestMapping(value = "/login", method = RequestMethod.POST)
	public String admin(Model model, HttpServletRequest req, HttpServletResponse res, @RequestParam String email,
			@RequestParam String password) {
		String path = "login";
		if (email.equals("cagri@cagri.com") && password.equals("1234")) {
			req.getSession().setAttribute("id", true);
			path = "redirect:/";
		} else {
			model.addAttribute("hata", "true");
			path = "login";
		}
		return path;
	}

	@RequestMapping(value = "/cikis", method = RequestMethod.GET)
	public String cikis(HttpServletRequest req) {
		req.getSession().invalidate();
		return "redirect:/";
	}

	@RequestMapping(value = "/categorypage", method = RequestMethod.GET)
	public String categorypage(Model model, HttpServletRequest req) {
		String path = "redirect:/";
		boolean id = req.getSession().getAttribute("id") != null;
		if (id) {
			model.addAttribute("giris", true);
			path = "category";
		} else {
			path = "redirect:/loginpage";
		}
		return path;
	}

	@RequestMapping(value = "/categoryadd", method = RequestMethod.POST)
	public String categoryadd(Model model, @RequestParam String category, HttpServletRequest req) {
		String q = "insert into categories values (null, '" + category + "')";
		DB db = new DB();
		try {
			int sonuc = db.baglan().executeUpdate(q);
		} catch (Exception e) {
			System.err.println("Kategori ekleme hatası :" + e);
		} finally {
			db.kapat();
		}
		return "redirect:/categorypage";
	}

	@RequestMapping(value = "/postpage", method = RequestMethod.GET)
	public String postpage(Model model, HttpServletRequest req) {
		DB db = new DB();
		List<Categories> cls = new ArrayList<Categories>();

		String path = "redirect:/";
		boolean id = req.getSession().getAttribute("id") != null;
		if (id) {
			model.addAttribute("giris", true);
			String q = "select * from categories";
			try {
				ResultSet rs = db.baglan().executeQuery(q);
				while (rs.next()) {
					Categories ct = new Categories();
					ct.setCid(rs.getString("cid"));
					ct.setCategory(rs.getString("category"));
					cls.add(ct);
				}
				model.addAttribute("categories", cls);
			} catch (Exception e) {
				System.err.println("Kategori getirme hatası : " + e);
			} finally {
				db.kapat();
			}

			path = "post";
		} else {
			path = "redirect:/loginpage";
		}
		return path;
	}

	@RequestMapping(value = "/postadd", method = RequestMethod.POST)
	public String postadd(Model model, @RequestParam String kategori, @RequestParam String baslik,
			@RequestParam String aciklama, HttpServletRequest req) {
		String q = "insert into posts values (null, '" + kategori + "','" + baslik + "', '" + aciklama + "', now())";
		DB db = new DB();
		try {
			int sonuc = db.baglan().executeUpdate(q);
		} catch (Exception e) {
			System.err.println("İçerik ekleme hatası :" + e);
		} finally {
			db.kapat();
		}
		return "redirect:/postpage";
	}

	@RequestMapping(value = "/{id}", method = RequestMethod.GET)
	public String content(Model model, HttpServletRequest req, @PathVariable(value = "id") int id) {
		
			String q = "select p.id, p.title, p.content, p.date, c.category from posts as p left join categories as c on p.category = c.cid where id = '"
					+ id + "'";
			List<Posts> pls = new ArrayList<Posts>();
			DB db = new DB();
			try {
				ResultSet rs = db.baglan().executeQuery(q);
				if (rs.next()) {
					Posts post = new Posts();
					post.setId(rs.getString("id"));
					post.setTitle(rs.getString("title"));
					post.setContent(rs.getString("content"));
					post.setCategory(rs.getString("category"));
					post.setDate(rs.getString("date"));
					pls.add(post);
				}
				model.addAttribute("post", pls);
				boolean kid = req.getSession().getAttribute("id") != null;
				if (kid) {
					model.addAttribute("giris", true);
				}
			} catch (Exception e) {
				System.err.println("İçerik ekleme hatası :" + e);
			} finally {
				db.kapat();
			}
			return "content";
	}
}
