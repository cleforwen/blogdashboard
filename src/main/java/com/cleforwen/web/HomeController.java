package com.cleforwen.web;

import javax.annotation.Resource;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.cleforwen.model.Message;
import com.cleforwen.server.MessageRepository;

@Controller
@RequestMapping("/home")
public class HomeController {

    private final Logger logger = LoggerFactory.getLogger(HomeController.class);

    @Resource
    private MessageRepository messageRepository;

    @RequestMapping(method=RequestMethod.GET)
    public String getView(Model model) {
        model.addAttribute("messages", messageRepository.getAll());
        return "home";
    }
    
    @RequestMapping(value="/add",method=RequestMethod.GET)
    public String addMessage(Model model){
        Message mess=new Message();
        logger.debug("pre id "+mess.getId());
        model.addAttribute("message",mess);
        return "add";
    }
    
    @RequestMapping(value="/add",method=RequestMethod.POST)
    public String postMessage(@ModelAttribute("message")Message message){
    	logger.debug("text id: "+message.getId());
    	logger.debug("Message : "+message.getText());
    	messageRepository.create(message);
    	return "redirect:../home";
    }
}
