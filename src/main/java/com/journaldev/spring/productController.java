package com.journaldev.spring;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.journaldev.spring.model.product;
import com.journaldev.spring.service.productService;

@Controller
public class productController {
	
	private productService productService;
	
	@Autowired(required=true)
	@Qualifier(value="productService")
	public void setproductService(productService ps){
		this.productService = ps;
	}
	
	@RequestMapping(value = {"","/products"}, method = RequestMethod.GET)
	public String listproducts(Model model) {
		model.addAttribute("product", new product());
		model.addAttribute("listproducts", this.productService.listproducts());
		return "product";
	}
	
	//For add and update product both
	@RequestMapping(value= "/product/add", method = RequestMethod.POST)
	public String addproduct(@ModelAttribute("product") product p){
		
		if(p.getId() == 0){
			//new product, add it
			this.productService.addproduct(p);
		}else{
			//existing product, call update
			this.productService.updateproduct(p);
		}
		
		return "redirect:/products";
		
	}
	
	@RequestMapping("/remove/{id}")
    public String removeproduct(@PathVariable("id") int id){
		
        this.productService.removeproduct(id);
        return "redirect:/products";
    }
 
    @RequestMapping("/edit/{id}")
    public String editproduct(@PathVariable("id") int id, Model model){
        model.addAttribute("product", this.productService.getproductById(id));
        model.addAttribute("listproducts", this.productService.listproducts());
        return "product";
    }
	
}
