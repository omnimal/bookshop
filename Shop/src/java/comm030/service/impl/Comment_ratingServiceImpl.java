/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package comm030.service.impl;

import comm030.dao.Comment_ratingDAO;
import comm030.model.Comment_Rating;
import comm030.service.Comment_ratingService;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

@Service("Comment_ratingService")
@Transactional(propagation = Propagation.SUPPORTS, readOnly = true)
public class Comment_ratingServiceImpl implements Comment_ratingService {
@Autowired
private Comment_ratingDAO comment_ratingDAO;

    @Override
    public Comment_Rating getComment_ratingbyId(int id) {
        return comment_ratingDAO.getComment_ratingbyId(id); 
    }

    @Override
    public List<Comment_Rating> getComment_ratings() {
        return comment_ratingDAO.getComment_ratings(); 
    }

    @Override
    public void addComment_rating(Comment_Rating comment_rating) {
       comment_ratingDAO.addComment_rating(comment_rating); 
    }

    @Override
    public void deleteComment_ratingByid(int id) {
        throw new UnsupportedOperationException("Not supported yet.");
    }

    @Override
    public List<Comment_Rating> getComment_ratingsbyProdid(int id) {
       return comment_ratingDAO.getComment_ratingsbyProdid(id);
    }

    
}
