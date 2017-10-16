package com.wissen.blog;

import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class HomeController {
	
	@RequestMapping(value = "/")
	public String index(Model model) {
		String sql = "SELECT * FROM posts";
		List<Posts> posts = new ArrayList<Posts>();
		DB db = new DB();
		try {
			
			ResultSet rs = db.baglan().executeQuery(sql);
			while(rs.next()) {
				Posts post = new Posts();
				post.setId(rs.getInt("id"));
				post.setTitle(rs.getString("title"));
				post.setContent(rs.getString("content"));
				post.setDate(rs.getString("date"));
				posts.add(post);
				
			}
			model.addAttribute("posts", posts);
		} catch (Exception e) {
			System.err.println("Database Hatası : " + e);
		}finally {
			db.kapat();
		}
		
		
		return "index";
	}
	
}
