package com.wissen.blog;

import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class PostController {
	
	DB db = new DB();
	
	
	@RequestMapping(value="/{id}", method = RequestMethod.GET)
	public String post(@PathVariable(value="id") String id, Model model) {
		System.out.println(id);
		List<Posts> posts = new ArrayList<Posts>();
		try {
			String sql = "SELECT * FROM posts where id = '"+id+"'";
			ResultSet rs = db.baglan().executeQuery(sql);
			if(rs.next()) {
				Posts post = new Posts();
				post.setId(rs.getInt("id"));
				post.setTitle(rs.getString("title"));
				post.setContent(rs.getString("content"));
				post.setDate(rs.getString("date"));
				posts.add(post);
				
			}
			model.addAttribute("posts", posts.get(0));
		} catch (Exception e) {
			System.err.println("Data Getirme Hatası: " + e);
		}
		
		
		return "post";
		
	}

}
