package com.project.controller;

import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.UUID;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.google.gson.Gson;
import com.project.model.AreaVO;
import com.project.model.CityVO;
import com.project.model.LoginVO;
import com.project.model.MealVO;
import com.project.model.OrderDTO;
import com.project.model.OrderDetailsDTO;
import com.project.model.OrderDetailsVO;
import com.project.model.OrderVO;
import com.project.model.VendorVO;
import com.project.service.AreaService;
import com.project.service.CityService;
import com.project.service.LoginService;
import com.project.service.MealService;
import com.project.service.OrderService;
import com.project.service.VendorService;
import com.project.utils.Basemethods;

@RestController
public class OrderController {

	@Autowired
	private CityService cityService;

	@Autowired
	private AreaService areaService;

	@Autowired
	private OrderService orderService;

	@Autowired
	private MealService mealService;

	@Autowired
	private VendorService vendorService;

	@Autowired
	private LoginService loginService;

	@GetMapping("user/payment")
	public ModelAndView payment() {
		return new ModelAndView("user/payment");
	}

	@GetMapping("user/order")
	public ModelAndView order(@RequestParam int id, LoginVO loginvo1, ModelMap map) {
		List<?> mealList = this.mealService.getMeal();
		List<?> meal = this.mealService.getMealByVendor(id);

		loginvo1.setLoginId(id);
		List<?> vendorList = this.vendorService.getVendorByLoginId(loginvo1);
		String vendorName = "";

		if (vendorList.size() > 0) {
			VendorVO vendorVO = (VendorVO) vendorList.get(0);
			vendorName = vendorVO.getFullName();

			CityVO cityvo = vendorVO.getCityVO();

			List areaList = this.areaService.getAreaByCity(cityvo);

			map.addAttribute("city", cityvo);
			map.addAttribute("areaList", areaList);

		}

		return new ModelAndView("user/order").addObject("mealList", mealList).addObject("meal", meal)
				.addObject("vendorName", vendorName);
	}

	@PostMapping(path = "user/bookOrder")
	public ResponseEntity orderpayment(@RequestBody OrderDTO orderDTO) {
		System.out.println(new Gson().toJson(orderDTO));

		Map map = new HashMap();

		if (orderDTO != null) {

			Date d = new Date();
			SimpleDateFormat formatter = new SimpleDateFormat("dd-M-yyyy hh:mm:ss");
			String strDate = formatter.format(d);

			UUID uuid = UUID.randomUUID();
			String orderId = uuid.toString();

			map.put("orderId", orderId);

			DateFormat dateFormate = new SimpleDateFormat("MM");

			OrderVO orderVO = new OrderVO();
			orderVO.setTotalPrice(orderDTO.getTotalPrice());
			orderVO.setPerson(orderDTO.getPerson());
			orderVO.setFirstName(orderDTO.getFirstName());
			orderVO.setLastName(orderDTO.getLastName());
			orderVO.setContactno(orderDTO.getContactno());
			orderVO.setEmail(orderDTO.getEmail());
			orderVO.setOrderDate(strDate);
			orderVO.setOrderid(orderId);
			orderVO.setOrderMonth(dateFormate.format(d));
orderVO.setAddress(orderDTO.getAddress());
			LoginVO loginVO2 = new LoginVO();
			loginVO2.setLoginId(orderDTO.getVendorLoginId());

			List<?> vendorList = this.vendorService.getVendorByLoginId(loginVO2);

			VendorVO vendorVO = (VendorVO) vendorList.get(0);

			int areaId = orderDTO.getArea();
			AreaVO areaVO = new AreaVO();
			areaVO.setId(areaId);

			String userName = Basemethods.getUser();
			LoginVO loginVO = new LoginVO();
			loginVO.setUsername(userName);
			List<?> ls = this.loginService.searchLoginID(loginVO);
			LoginVO loginVO1 = (LoginVO) ls.get(0);

			orderVO.setLoginvo(loginVO1);
			orderVO.setVendorvo(vendorVO);
			orderVO.setAreavo(areaVO);
			orderVO.setStatus(true);
			orderVO.setOrderStatus("ORDERED");

			this.orderService.saveOrder(orderVO);

			List<OrderDetailsDTO> orderDetailsList = orderDTO.getOrderList();

			for (OrderDetailsDTO orderDetailsDTO : orderDetailsList) {
				OrderDetailsVO detailsVO = new OrderDetailsVO();

				detailsVO.setDays(Integer.parseInt(orderDetailsDTO.getDays()));

				MealVO mealVO = new MealVO();
				mealVO.setId(Integer.parseInt(orderDetailsDTO.getMealId()));

				detailsVO.setMealVO(mealVO);
				detailsVO.setOrdervo(orderVO);

				this.orderService.saveOrder(detailsVO);
			}
		}
		return new ResponseEntity(map, HttpStatus.OK);
	}

	@GetMapping("vendor/viewOrder")
	public ModelAndView viewOrder() {

		String userName = Basemethods.getUser();
		LoginVO loginVO = new LoginVO();
		loginVO.setUsername(userName);
		List<?> ls = this.loginService.searchLoginID(loginVO);
		LoginVO loginVO1 = (LoginVO) ls.get(0);

		List<?> orderList = this.orderService.getOrder(loginVO1);

		return new ModelAndView("vendor/viewOrder", "orderList", orderList);
	}

	@GetMapping("user/myOrders")
	public ModelAndView myOrders() {

		System.out.println("Okk");
		String userName = Basemethods.getUser();
		LoginVO loginVO = new LoginVO();
		loginVO.setUsername(userName);
		List<?> ls = this.loginService.searchLoginID(loginVO);
		LoginVO loginVO1 = (LoginVO) ls.get(0);

		List<?> orderList = this.orderService.getUserOrder(loginVO1);

		System.out.println(orderList.size());

		return new ModelAndView("user/myOrders", "orderList", orderList);
	}

	@GetMapping("user/viewOrderDetailsByOrderId")
	public ResponseEntity viewOrderDetailsByOrderId(@RequestParam int id) {
		List<?> OrderList = this.orderService.viewOrderDetailsByOrderId(id);
		return new ResponseEntity(OrderList, HttpStatus.OK);
	}

	@GetMapping("vendor/acceptOrder")
	public ModelAndView acceptOrder(@RequestParam int id) {

		OrderVO orderVO = new OrderVO();
		orderVO.setId(id);

		List<?> orderDetailsList = this.orderService.getorderDetailsList(orderVO);
		OrderVO orderVO1 = (OrderVO) orderDetailsList.get(0);

		orderVO1.setOrderStatus("ACCEPTED");
		this.orderService.saveOrder(orderVO1);
		
		OrderVO orderVO2  = (OrderVO) orderDetailsList.get(0);
		LoginVO loginVO = orderVO2.getLoginvo();
		String username = loginVO.getUsername();
		
		String orderid = orderVO2.getOrderid();
		
		VendorVO vendorVO = orderVO2.getVendorvo();
		String vendorname = vendorVO.getFullName();
		
		Basemethods.sendAcceptOrderMail(username,orderid,vendorname);

		return new ModelAndView("redirect:viewOrder");
	}

	@GetMapping("vendor/rejectOrder")
	public ModelAndView rejectOrder(@RequestParam int id) {

		OrderVO orderVO = new OrderVO();
		orderVO.setId(id);

		List<?> orderDetailsList = this.orderService.getorderDetailsList(orderVO);
		OrderVO orderVO1 = (OrderVO) orderDetailsList.get(0);

		orderVO1.setOrderStatus("REJECTED");
		this.orderService.saveOrder(orderVO1);

		return new ModelAndView("redirect:viewOrder");
	}
	
	@GetMapping("user/rejectOrder")
	public ModelAndView userrejectOrder(@RequestParam int id) {

		OrderVO orderVO = new OrderVO();
		System.out.println("ID : "+id);
		orderVO.setId(id);

		List<?> orderDetailsList = this.orderService.getorderDetailsList(orderVO);
		OrderVO orderVO1 = (OrderVO) orderDetailsList.get(0);

		orderVO1.setOrderStatus("REJECTED");
		this.orderService.saveOrder(orderVO1);

		return new ModelAndView("redirect:myOrders");
	}

}
