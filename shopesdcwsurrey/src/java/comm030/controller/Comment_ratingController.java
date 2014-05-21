/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package comm030.controller;

import comm030.model.Comment_Rating;
import comm030.service.Comment_ratingService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("/comments_rating")
public class Comment_ratingController {

    @Autowired
    private Comment_ratingService comment_ratingService;

    //Adds a comment via comment service in the database and returns to index.
    @RequestMapping(value = "/addComment.htm", method = RequestMethod.POST)
    public String addcomment(@ModelAttribute("Shop")Comment_Rating comments, ModelMap model) {
       comment_ratingService.addComment_rating(comments);
       return "redirect:/index.htm";
   } 

}
