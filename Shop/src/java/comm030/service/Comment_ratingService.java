/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package comm030.service;

import comm030.model.Comment_Rating;
import java.util.List;

public interface Comment_ratingService {
    public Comment_Rating getComment_ratingbyId(int id);
    public List<Comment_Rating> getComment_ratings();
    public List<Comment_Rating> getComment_ratingsbyProdid(int id);
    public void addComment_rating(Comment_Rating comment_rating);
    public void deleteComment_ratingByid(int id);
}
