package com.klef.jfsd.springboot.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.klef.jfsd.springboot.model.Feedback;
import com.klef.jfsd.springboot.service.FeedbackService;

@Controller
@RequestMapping("/feedback")
public class FeedbackController {

    @Autowired
    private FeedbackService feedbackService;

    // Display the feedback form for the customer
    @GetMapping("/submit")
    public String showFeedbackForm(Model model) {
        model.addAttribute("feedback", new Feedback());
        return "submit-feedback"; // JSP page for feedback submission
    }

    // Handle feedback submission
    @PostMapping("/submit")
    public String submitFeedback(@ModelAttribute Feedback feedback) {
        feedbackService.submitFeedback(feedback);
        return "redirect:/feedback/thank-you"; // Redirect to thank-you page after submission
    }

    // Display the thank-you page
    @GetMapping("/thank-you")
    public String showThankYouPage() {
        return "thank-you"; // JSP page for thank-you
    }

    // Admin views all feedback
    @GetMapping("/admin")
    public String viewAllFeedbacks(Model model) {
        model.addAttribute("feedbacks", feedbackService.getAllFeedbacks());
        return "admin-feedback"; // JSP page for admin to view feedbacks
    }
}