package com.project.controller;

import java.io.BufferedOutputStream;
import java.io.FileOutputStream;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.project.model.LoginVO;
import com.project.model.VendorRatingVO;
import com.project.model.VendorVO;
import com.project.service.CityService;
import com.project.service.FeedbackService;
import com.project.service.LoginService;
import com.project.service.OrderService;
import com.project.service.VendorService;
import com.project.utils.Basemethods;

@Controller
public class VendorController {

	@Autowired
	private VendorService vendorService;

	@Autowired
	private LoginService loginService;

	@Autowired
	private FeedbackService feedbackService;

	@Autowired
	private CityService cityService;
	
	@Autowired
	private OrderService orderService;

	@GetMapping("admin/viewVendor")
	public ModelAndView viewVendor() {
		List<?> vendorList = this.vendorService.getVendor();
		return new ModelAndView("admin/viewVendor", "vendorList", vendorList);
	}

	@GetMapping("/vendorlogin")
	public ModelAndView LoginVendor() {
		return new ModelAndView("vendorlogin");
	}

	@GetMapping("/vendorRegister")
	public ModelAndView RegVendor() {
		List cityList = this.cityService.getCity();
		return new ModelAndView("VendorRegister", "VendorVO", new VendorVO()).addObject("cityList", cityList);
	}

	@GetMapping("admin/viewRejectedVendor")
	public ModelAndView viewRejectedVendor() {
		List<?> vendorblockList = this.vendorService.getBlockedVendor();
		return new ModelAndView("admin/viewRejectedVendor", "vendorList", vendorblockList);
	}

	@PostMapping("/saveVendor")
	public ModelAndView saveVendor(@ModelAttribute VendorVO VendorVO, @RequestParam("file") MultipartFile file,
			HttpServletRequest request) {

		String fileName = file.getOriginalFilename();
		String str = request.getSession().getServletContext().getRealPath("/");
		String filePath = str + "documents\\vendorDetails\\";

		try {

			byte br[] = file.getBytes();
			BufferedOutputStream bout = new BufferedOutputStream(new FileOutputStream(filePath + "\\" + fileName));
			bout.write(br);
			bout.flush();
			bout.close();

		} catch (Exception e) {
			e.printStackTrace();
		}
		VendorVO.setFileName(fileName);

		VendorVO.setFilePath(filePath);
		LoginVO loginVO = VendorVO.getLoginvo();
		loginVO.setEnabled(0);
		loginVO.setRole("ROLE_VENDOR");
		this.loginService.saveLogin(loginVO);
		this.vendorService.saveVendor(VendorVO);
		
		String username = VendorVO.getLoginvo().getUsername();
		String data = "Dear "+VendorVO.getFullName()+" ,\n"+" If you want to join our website as a VENDOR then you have to pay  the determined commission to the ADMIN at the end of each month if you agree with this thing, then Reply 'yes' ";
		Basemethods.sendConfirmVendorMail(data,username);
		
		return new ModelAndView("redirect:login");
	}

	@GetMapping("admin/blockVendor")
	public ModelAndView blockVendor(@ModelAttribute VendorVO vendorVO, @RequestParam int id) {
		vendorVO.setId(id);
		List<VendorVO> vendorList = this.vendorService.getVendorById(vendorVO);

		VendorVO vendorVO1 = vendorList.get(0);
		vendorVO1.setStatus(false);
		LoginVO loginVO = vendorVO1.getLoginvo();
		loginVO.setEnabled(0);

		this.loginService.saveLogin(loginVO);
		this.vendorService.saveVendor(vendorVO1);
		return new ModelAndView("redirect:viewVendor");
	}

	@GetMapping("admin/unblockVendor")
	public ModelAndView unblockVendor(@ModelAttribute VendorVO vendorVO, @RequestParam int id) {
		vendorVO.setId(id);
		List<?> vendorList = this.vendorService.getBlockedVendorById(vendorVO);

		VendorVO vendorVO1 = (VendorVO) vendorList.get(0);
		LoginVO loginVO = vendorVO1.getLoginvo();
		loginVO.setEnabled(1);
		vendorVO1.setStatus(true);
		this.loginService.saveLogin(loginVO);

		this.vendorService.saveVendor(vendorVO1);
		return new ModelAndView("redirect:viewRejectedVendor");
	}

	@GetMapping("admin/viewRequestedVendor")
	public ModelAndView viewRequestedvendor() {
		List<?> vendorList = this.vendorService.getRequestedVendor();
		return new ModelAndView("admin/viewRequestedVendor", "vendorList", vendorList);
	}

	@GetMapping("admin/acceptVendor")
	public ModelAndView acceptVendor(@ModelAttribute VendorVO vendorVO, @RequestParam int id) {
		vendorVO.setId(id);
		List<VendorVO> vendorList = this.vendorService.getVendorById(vendorVO);

		VendorVO vendorVO1 = vendorList.get(0);
		LoginVO loginVO = vendorVO1.getLoginvo();
		String username = loginVO.getUsername();
		System.out.println(username);
		String password = Basemethods.generatePassword();
		System.out.println(password);
		Basemethods.sendMail(username, password);

		loginVO.setEnabled(1);
		vendorVO1.setFlag(true);
		loginVO.setPassword(password);

		this.loginService.saveLogin(loginVO);
		this.vendorService.saveVendor(vendorVO1);
		return new ModelAndView("redirect:viewRequestedVendor");
	}

	@GetMapping("admin/rejectVendor")
	public ModelAndView rejectVendor(@ModelAttribute VendorVO vendorVO, @RequestParam int id) {
		vendorVO.setId(id);
		List<VendorVO> vendorList = this.vendorService.getVendorById(vendorVO);
		VendorVO vendorVO1 = vendorList.get(0);
		LoginVO loginVO = vendorVO1.getLoginvo();

		this.vendorService.rejectVendor(vendorVO1);
		this.loginService.rejectLogin(loginVO);

		return new ModelAndView("redirect:viewRequestedVendor");
	}

	@GetMapping("vendor/vendorRating")
	public ModelAndView vendorRating(VendorRatingVO vendorRatingVO) {

		String userName = Basemethods.getUser();
		LoginVO loginVO = new LoginVO();
		loginVO.setUsername(userName);
		List<?> ls = this.loginService.searchLoginID(loginVO);
		LoginVO loginvo1 = (LoginVO) ls.get(0);
		VendorVO vendorvo = new VendorVO();

		List<?> vendorList = this.vendorService.getVendorByLoginId(loginvo1);
		VendorVO vendorvo1 = (VendorVO) vendorList.get(0);

		vendorRatingVO.setVendorVO(vendorvo1);

		List<?> vendorRatingList = this.feedbackService.getVendorRatingByID(vendorRatingVO);

		return new ModelAndView("vendor/vendorRating", "vendorRatingList", vendorRatingList);
	}
	
	@GetMapping("vendor/viewOrderDetailsByOrder")
	public ResponseEntity viewOrderDetailsByOrderId(@RequestParam int id) {
		List<?> OrderList = this.orderService.viewOrderDetailsByOrderId(id);
		return new ResponseEntity(OrderList, HttpStatus.OK);
	}
	
	@GetMapping("vendor/myAccount")
	public ModelAndView myAccount() 
	{
		String userName = Basemethods.getUser();
		LoginVO loginVO = new LoginVO();
		loginVO.setUsername(userName);
		List<?> ls = this.loginService.searchLoginID(loginVO);
		LoginVO loginVO1 = (LoginVO) ls.get(0);

		List<?> vendorDetails = this.vendorService.getVendorByLoginId(loginVO1);
		VendorVO vendorvo = (VendorVO) vendorDetails.get(0);
		System.out.println(vendorDetails.size());
		List<?> cityList = this.cityService.getCity();
		
		return new ModelAndView("vendor/myAccount", "vendorVO", vendorvo).addObject("cityList", cityList);
	}
	
	@PostMapping("vendor/saveVendor")
	public ModelAndView editVendor(@ModelAttribute VendorVO VendorVO, HttpServletRequest request) {

		VendorVO.setFlag(true);
		LoginVO loginVO = VendorVO.getLoginvo();
		this.loginService.saveLogin(loginVO);
		this.vendorService.saveVendor(VendorVO);
		return new ModelAndView("redirect:/vendor/index");
	}

}
