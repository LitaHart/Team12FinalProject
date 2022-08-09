package com.team12.main.t2.shop;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

@Controller
public class ProductController {

	@Autowired
	private ProductDAO pDAO;
	
	
	
//	이동 -------------------------------------------------------------------------
	
	
	// 상품페이지
	@RequestMapping(value = "/viewProductPage.go", method = RequestMethod.GET)
<<<<<<< HEAD
	public String viewProductPage(HttpServletRequest request,Product p) {
		//상품가져오는일
		pDAO.getAllProduct(request,p);
=======
	public String viewProductPage(HttpServletRequest request) {
		//상품가져오는일
		pDAO.getAllProduct(request);
>>>>>>> 0bdf9ecf0def9becc1efe6b394fd7ee1e7b4587f
		request.setAttribute("contentPage", "YJ/viewProductPage.jsp");
		
		return "2Team/t2_index";
	}
	
	// 등록페이지
	@RequestMapping(value = "/regProductPage.go", method = RequestMethod.GET)
<<<<<<< HEAD
	public String regProductPage(HttpServletRequest request,Product p) {
		
		// 상품전부가져오는일
		pDAO.getAllProduct(request,p);
=======
	public String regProductPage(HttpServletRequest request) {
		
		// 상품가져오는일
		pDAO.getAllProduct(request);
>>>>>>> 0bdf9ecf0def9becc1efe6b394fd7ee1e7b4587f
		
		request.setAttribute("contentPage", "YJ/regProductPage.jsp");
		
		return "2Team/t2_index";
	}
	
	
	
	// 디테일페이지
		@RequestMapping(value = "/detail.go", method = RequestMethod.GET)
		public String detailPage(HttpServletRequest request,Product p) {
			//상품가져오는일
			pDAO.getProduct(request,p);
			request.setAttribute("contentPage", "YJ/detailProductPage.jsp");
			
			return "2Team/t2_index";
		}
<<<<<<< HEAD
		
		
		
		// 수정페이지
		@RequestMapping(value = "/update.product.go", method = RequestMethod.GET)
		public String updatePage(HttpServletRequest request,Product p) {
			//상품가져오는일
			pDAO.getProduct(request,p);
			request.setAttribute("contentPage", "YJ/updateProductPage.jsp");
			
			return "2Team/t2_index";
		}
=======
>>>>>>> 0bdf9ecf0def9becc1efe6b394fd7ee1e7b4587f
	
	
	
//	기능 -------------------------------------------------------------------------

	
	// 상품 등록
	@RequestMapping(value = "/Product.upload", method = RequestMethod.POST)
<<<<<<< HEAD
	public String regProduct(@RequestParam("productThumbnail")MultipartFile file, @RequestParam("productImg") List<MultipartFile> multiFileList,Model model ,HttpServletRequest request,Product p,
=======
	public String regProduct(@RequestParam("productThumbnail")MultipartFile file, @RequestParam("productImg") List<MultipartFile> multiFileList,Model model ,HttpServletRequest request,
>>>>>>> 0bdf9ecf0def9becc1efe6b394fd7ee1e7b4587f
			@RequestParam("pet_category") String pet_category,
			@RequestParam("toy_category") String toy_category,
			@RequestParam("productName") String productName,
			@RequestParam("productPrice") int productPrice,
			@RequestParam("productInfo") String productInfo,
			@RequestParam("productStock") int productStock,
			@RequestParam("onExhibition") String onExhibition,
			@RequestParam("productTag") String [] productTag){
		
		
		pDAO.regProduct(model,request,multiFileList,file,pet_category,toy_category,productName,productPrice,productInfo,productStock,onExhibition,productTag);
<<<<<<< HEAD
		pDAO.getAllProduct(request,p);
			
=======
		pDAO.getAllProduct(request);
				
>>>>>>> 0bdf9ecf0def9becc1efe6b394fd7ee1e7b4587f
		request.setAttribute("contentPage", "YJ/regProductPage.jsp");
		return "2Team/t2_index";
	}
	
	
	
<<<<<<< HEAD
	
	// 상품 수정
	@RequestMapping(value = "/product.update", method = RequestMethod.POST)
	public String ProductUpdate(@RequestParam("productThumbnailNew")MultipartFile file, @RequestParam("productImgNew") List<MultipartFile> multiFileList,Model model ,HttpServletRequest request,Product p,
			@RequestParam("pet_category") String pet_category,
			@RequestParam("toy_category") String toy_category,
			@RequestParam("productName") String productName,
			@RequestParam("productPrice") int productPrice,
			@RequestParam("productInfo") String productInfo,
			@RequestParam("productStock") int productStock,
			@RequestParam("onExhibition") String onExhibition,
			@RequestParam("productTag") String [] productTag,
			@RequestParam("productNum") int productNum,
			@RequestParam("productNum") String OldPet_category){
	
		
		pDAO.updateProduct(model,request,multiFileList,file,pet_category,toy_category,productName,productPrice,productInfo,productStock,onExhibition,productTag,productNum,p,OldPet_category);
		pDAO.getProduct(request, p);
		
		request.setAttribute("contentPage", "YJ/detailProductPage.jsp");
		return "2Team/t2_index";
	}
	
	
	
	
	
	
=======
>>>>>>> 0bdf9ecf0def9becc1efe6b394fd7ee1e7b4587f
}
