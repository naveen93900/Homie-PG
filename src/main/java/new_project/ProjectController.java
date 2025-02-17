package new_project;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityTransaction;
import javax.persistence.Query;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class ProjectController {

	@Autowired
	private EntityManager em;
	
	@RequestMapping("/register")
	public ModelAndView register(@RequestParam String name,@RequestParam String email, @RequestParam String password,
			                      @ RequestParam long number,@RequestParam String location) {
		ModelAndView mv=new ModelAndView();
		
		User u=new User(0,name,email,password,number,location);

		EntityTransaction et=em.getTransaction();
		et.begin();
		em.merge(u);
		et.commit();
		mv.setViewName("index.jsp");
		mv.addObject("msg", "Registered Succussfully");
		
		
		return mv;
		
	}
	
	@RequestMapping("/login")
	public ModelAndView login(@RequestParam String email,@RequestParam String password) {
		
		ModelAndView mv=new ModelAndView();
		
		Query q=em.createQuery("from User");
		List<User> l=q.getResultList();
		
		for(User u:l) {
			System.out.println(u.getEmail()+"   "+u.getPassword());
			if(u.getEmail().equals(email)&&u.getPassword().equals(password)) {
				mv.setViewName("home.jsp");
				return mv;
			}
		}
		
		
		
		mv.setViewName("index.jsp");
		mv.addObject("msg", "Invalid Uesr Id (or) Password");
		return mv;
	}
	@RequestMapping("/admin")
	public ModelAndView admin(@RequestParam String email, @RequestParam String password) {
		String email1="admin@gmail.com",password1="123";
		ModelAndView mv=new ModelAndView();
		if(email.equals(email1)&&password.equals(password1)) {
			mv.setViewName("allusers");
			return mv;
		}
		mv.setViewName("admin.jsp");
		mv.addObject("msg", "Invalid admin credentials");
		return mv;
	}
	
	@RequestMapping("/allusers")
	public ModelAndView allusers() {
		ModelAndView mv=new ModelAndView();
		
		Query q=em.createQuery("from User");
		List<User> l=q.getResultList();
		mv.setViewName("allusers.jsp");
		mv.addObject("users", l);
		return mv;
		
	}
	
	@RequestMapping("/delete")
	public ModelAndView delete(@RequestParam int id) {
		ModelAndView mv=new ModelAndView();
		EntityTransaction et=em.getTransaction();
		User u=em.find(User.class, id);
		if(u!=null) {
		et.begin();
		em.remove(u);
		et.commit();
		mv.setViewName("allusers");
		return mv;
		}
		
		mv.setViewName("index.jsp");
		return mv;
	}
	
	

	@RequestMapping("/addPg")
	public ModelAndView savePg(@RequestParam String name,
			@RequestParam String location,
			@RequestParam Double price,
			@RequestParam String description,
			@RequestParam String imageUrl) {
		
		ModelAndView mv=new ModelAndView();
		Pg p=new Pg(0,name,location,price,description,imageUrl);
		EntityTransaction et=em.getTransaction();
		et.begin();
		em.merge(p);
		et.commit();
		mv.setViewName("allusers");
		mv.addObject("msg", "Added PG Succussfully");
		return mv;
	}
	
	@RequestMapping("/allpgs")
	public ModelAndView allPg() {
		
		ModelAndView mv=new ModelAndView();
		Query q=em.createQuery("from Pg");
		List<Pg> p=q.getResultList();
		
		mv.setViewName("allpgs.jsp");
		mv.addObject("pg", p);
		return mv;
	}
	
}
