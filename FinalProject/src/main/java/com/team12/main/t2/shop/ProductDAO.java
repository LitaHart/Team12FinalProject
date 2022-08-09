package com.team12.main.t2.shop;



import java.io.File;
import java.util.List;
import java.util.UUID;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;
import org.springframework.web.multipart.MultipartFile;




@Service
public class ProductDAO {
	
	
	@Autowired
	ServletContext servletContext;
	
	@Autowired
	private SqlSession ss;

	
	
	
	
	// 상품전체 가져오기	
	public void getAllProduct(HttpServletRequest request, Product p) {
		
		try {
			request.setAttribute("Product", ss.getMapper(ProductMapper.class).getAllProduct(p));
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		
	}





	// 상품 등록
	public void regProduct(Model model, HttpServletRequest request, List<MultipartFile> multiFileList,
			MultipartFile file, String pet_category, String toy_category, String productName, int productPrice,
			String productInfo, int productStock, String onExhibition, String[] productTag) {

		
		String productTag2 = "";
		
		
		if (productTag != null) {
			for (String s : productTag) {
				productTag2 += s + "!";
			}	
		}else {
			productTag2 = "태그 없음";
		}	
		
		
		
		
		String path = request.getSession().getServletContext().getRealPath("resources/t2_yj_files");
		
		System.out.println(path);
		
		
		String changeFile = "";
		String newFileName ="";
		try {
			
			
			
	for (int i = 0; i < multiFileList.size(); i++) {
		
		// 다중 파일
		String originFile = multiFileList.get(i).getOriginalFilename();
		String ext = originFile.substring(originFile.lastIndexOf("."));
		newFileName = UUID.randomUUID().toString() + ext;
		System.out.println(newFileName);
		changeFile += newFileName + "!";

	
		File uploadFile = new File(path + "/" + newFileName);
				multiFileList.get(i).transferTo(uploadFile);
				System.out.println("다중 파일 업로드 성공!");
				
				
	}

	
	
	// 단일 파일
	String fileName = file.getOriginalFilename();
	System.out.println(path);
	
	String saveFileName = UUID.randomUUID().toString() + fileName.substring(fileName.lastIndexOf("."));
	System.out.println(fileName);
	System.out.println(saveFileName);
	
	
	// 업로드
	Product p = new Product();
	
	p.setPet_category(pet_category);
	p.setToy_category(toy_category);
	p.setProductName(productName);;
	p.setProductPrice(productPrice);
	p.setProductInfo(productInfo);
	p.setProductStock(productStock);
	p.setOnExhibition(onExhibition);
	p.setProductTag(productTag2);
	p.setProductThumbnail(saveFileName);
	p.setProductImg(changeFile);
	p.setProductTag(productTag2);
			
	
	if(!file.getOriginalFilename().isEmpty()) {
		// 실제 업로드 코드
		file.transferTo(new File(path,saveFileName));
												// 파일 이름.
		ss.getMapper(ProductMapper.class).regProduct(p);
		System.out.println("등록 성공");
	}else {
		
	}
	
			} catch (Exception e) {
				System.out.println("fail");
				e.printStackTrace();
			}
		
		
		
	}




	public void getProduct(HttpServletRequest request, Product p) {
		
			
			try {
				request.setAttribute("Product", ss.getMapper(ProductMapper.class).getProduct(p));
			} catch (Exception e) {
				e.printStackTrace();
			}
		
		
	}





	
	
	// 정보 수정
	public void updateProduct(Model model, HttpServletRequest request, List<MultipartFile> multiFileList,
			MultipartFile file, String pet_category, String toy_category, String productName, int productPrice,
			String productInfo, int productStock, String onExhibition, String[] productTag, int productNum, Product p,
			String OldPet_category) {
		
		System.out.println(pet_category);
		
		if (pet_category == "") {
			pet_category = OldPet_category;
		}
		System.out.println(pet_category);
		
String productTag2 = "";
		
		
		if (productTag != null) {
			for (String s : productTag) {
				productTag2 += s + "!";
			}	
		}else {
			productTag2 = "태그 없음";
		}	
		
		
		
		
		String path = request.getSession().getServletContext().getRealPath("resources/t2_yj_files");
		
		System.out.println(path);
		
		
		String changeFile = "";
		String newFileName ="";
		try {
			
			
			
	for (int i = 0; i < multiFileList.size(); i++) {
		
		// 다중 파일
		String originFile = multiFileList.get(i).getOriginalFilename();
		String ext = originFile.substring(originFile.lastIndexOf("."));
		newFileName = UUID.randomUUID().toString() + ext;
		System.out.println(newFileName);
		changeFile += newFileName + "!";

	
		File uploadFile = new File(path + "/" + newFileName);
				multiFileList.get(i).transferTo(uploadFile);
				System.out.println("다중 파일 업로드 성공!");
				
				
	}

	
	
	// 단일 파일
	String fileName = file.getOriginalFilename();
	System.out.println(path);
	
	String saveFileName = UUID.randomUUID().toString() + fileName.substring(fileName.lastIndexOf("."));
	System.out.println(fileName);
	System.out.println(saveFileName);
	
	System.out.println("여기요여기2" + productName);
	// 업로드
	p = new Product();
	
	p.setProductNum(productNum);
	p.setPet_category(pet_category);
	p.setToy_category(toy_category);
	p.setProductName(productName);;
	p.setProductPrice(productPrice);
	p.setProductInfo(productInfo);
	p.setProductStock(productStock);
	p.setOnExhibition(onExhibition);
	p.setProductTag(productTag2);
	p.setProductThumbnail(saveFileName);
	p.setProductImg(changeFile);
	p.setProductTag(productTag2);
	
	if(!file.getOriginalFilename().isEmpty()) {
		// 실제 업로드 코드
		file.transferTo(new File(path,saveFileName));
												// 파일 이름.
		ss.getMapper(ProductMapper.class).updateProduct(p);
		System.out.println("수정 성공");
	}else {
		
	}
	
			} catch (Exception e) {
				System.out.println("fail");
				e.printStackTrace();
			}
		
		
		
		
		
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
}




	
		
		
	
	



	







	
		
		
		
		
		
	


	



		
		

		
		
		
		
		
	
	
	
	
	
	
	
	
	
	
	
	
	
	
