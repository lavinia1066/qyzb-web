package com.qyzb.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.qyzb.service.YuyueService;

@Controller
@RequestMapping
public class Desktop {

	@Autowired
	private YuyueService yuyueService;

	@RequestMapping("/login")
	public String adminlogin() {
		return "/admin/login";
	}

	@RequestMapping("/adminindex")
	public String getYuyueList(HttpServletRequest request) {

		request.setAttribute("yuyueList", yuyueService.getAllYuyues());

		return "/admin/index";
	}

	@RequestMapping("/getYuyueLookId")
	public String getYuyueId(String id, HttpServletRequest request) {
		request.setAttribute("yuyueId", yuyueService.getYuyue(id));
		return "/admin/lookyuyue";
	}

}
