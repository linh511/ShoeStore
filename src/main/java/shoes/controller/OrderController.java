package shoes.controller;

import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import shoes.cart.Cart;
import shoes.entities.Order;
import shoes.entities.OrderList;
import shoes.entities.OrderStatus;
import shoes.entities.User;
import shoes.services.order.OrderService;
import shoes.services.orderList.OrderListService;
import shoes.services.orderStatus.OrderStatusService;
import shoes.services.product.ProductService;
import shoes.services.user.UserService;


@Controller
@RequestMapping("/order")
public class OrderController {
	@Autowired
	UserService userService;
	
	@Autowired
	OrderService orderService;
	
	@Autowired
	ProductService productService;
	
	@Autowired
	OrderListService orderListService;
	
	@Autowired
	OrderStatusService orderStatusService;
	
	@GetMapping
	public String showOrder(@ModelAttribute("user") User user, HttpSession session, ModelMap model) {
		user = (User) session.getAttribute("user1");
		if (user == null) {
            return "/login";
		}else {
			Cart cart = (Cart) session.getAttribute("cart");
			model.addAttribute("user", user);
			session.setAttribute("user1", user);
			session.setAttribute("mycart", cart);
			return "customer/order";
		}
	}
	
	@PostMapping
	public String buyOrder(HttpServletRequest req, HttpSession session) {
		
		Cart cart = (Cart) session.getAttribute("cart");
		User user = userService.findById(Integer.parseInt(req.getParameter("userId")));
		user.setFullname(req.getParameter("fullname"));
		user.setPhone(req.getParameter("phone"));
		user.setAddress(req.getParameter("address"));
		userService.update(user);
		System.out.println("update user");
		//Order
		Order order = new Order();
		Date date = new Date();
		order.setDate(date);
		order.setUser(user);
		order.setTotalMoney(Double.parseDouble(req.getParameter("sum")));
		order.setOrderStatus(new OrderStatus(1));
		orderService.create(order);
		System.out.println("Tao order");
		
		//OrderList
		cart.forEach((key, value)->{
			OrderList o = new OrderList();
        	o.setOrder(order);
        	o.setMoney((double) (value.getQuantity()*value.getProduct().getUnitPrice()));
        	o.setProduct(productService.findById(key));
        	o.setQuantity(value.getQuantity());
			System.out.println(key +":"+ value);
        	orderListService.create(o);
		});
		
		System.out.println("Tao order thanh cong!");
		return "customer/orderMsg";
	}
	
	
	@GetMapping("/viewDetail/{id}")
	public String viewDetailOrder(@PathVariable int id, ModelMap model) {
		Order order = orderService.findById(id);
		List<OrderList> orderDetail = orderListService.findByOrder(order);
		model.addAttribute("orderDetail", orderDetail);
		return "admin/viewOrder";
	}
	
	@GetMapping("/edit/{id}")
	public String editOrder(@PathVariable int id, ModelMap model) {
		List<OrderStatus> statusList = orderStatusService.findAll();
		Order order = orderService.findById(id);
		model.addAttribute("order", order);
		model.addAttribute("statusList", statusList);
		return "admin/editOrder";
	}
	
	@GetMapping("/delete/{id}")
	public String deleteOrder(@PathVariable int id, ModelMap model) {
		Order order = orderService.findById(id);
		orderListService.deleteOrderList(order);
		orderService.delete(order);
		return "redirect:/admin/order";
	}
	@PostMapping("/save")
	public String saveOrder(@ModelAttribute("order") Order order, ModelMap model) {
		orderService.create(order);
		return "redirect:/admin/order";
	}
}
