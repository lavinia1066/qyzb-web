package com.qyzb.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.qyzb.entiy.Yuyue;
import com.qyzb.service.YuyueService;

@Controller
@RequestMapping
public class YuyueController {

	@Autowired
	private YuyueService yuyueService;

	@RequestMapping("/index")
	public String index() {
		return "index";
	}

	@RequestMapping("/yuyue")
	public String yuyue() {
		return "yuyue";
	}

	@RequestMapping(value = "/add", method = RequestMethod.POST)
	public String addYuyue(Yuyue yuyue, HttpServletRequest request) {
		yuyueService.addYuyueService(yuyue);
		return "yuyueresult";
	}
	// @RequestMapping(value = "/add", method= RequestMethod.POST)
	// public String addYuyue(
	// @RequestParam("projectAddredd") String projectAddredd,
	// @RequestParam("projectRole") String projectRole,
	// @RequestParam("projectName") String projectName,
	// @RequestParam("projectArea") String projectArea,
	// @RequestParam("projectCompleteDate") String projectCompleteDate,
	// @RequestParam("projectExplain") String explain,
	// @RequestParam("name") String name,
	// @RequestParam("phoneNumber")String phoneNumber,Yuyue yuyue,
	// HttpServletRequest request) {
	// yuyue = new Yuyue(projectAddredd, projectRole, projectName,
	// projectArea, projectCompleteDate, explain, name, phoneNumber);
	// yuyueService.addYuyueService(yuyue);
	// System.out.println("success");
	// return "yuyueresult";
	// }

}
