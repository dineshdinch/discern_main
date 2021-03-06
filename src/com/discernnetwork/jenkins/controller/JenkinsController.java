/**
 * Project Name: jenkins_main_project
 * Package Name: com.treselle.jenkins.controller
 * Class Name: JenkinsController.java
 * Description:
 * 
 * 
 * Created Date:Jun 27, 2017
 * Modified Date:Jun 27, 2017
 * 
 * Copyright to DISCERN
 */
package com.discernnetwork.jenkins.controller;

import com.discernnetwork.jenkins.util.StringUtil;

import javax.servlet.http.HttpServletRequest;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class JenkinsController {

    @RequestMapping(value = "/print_message", method = { RequestMethod.GET, RequestMethod.POST }, headers = "Accept=application/json")
    public Object printGivenMessage(HttpServletRequest request) {
		String message = request.getParameter("message");
		if(StringUtil.isValidString(message)) {
			message = "Hi!!!Jenkins!!!";
		} else {
			message = "not valid";
		}	
        return message;
    }
}
