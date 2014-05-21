/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package comm030.dao;

import comm030.model.Comment_Rating;
import java.util.List;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

@Repository("Comment_ratingDAO")
@Transactional
public class HibernateComment_ratingDAO implements Comment_ratingDAO {

    @Autowired
    private SessionFactory sessionFactory;

    private Session currentSession(){
        return sessionFactory.getCurrentSession();
    }
    
    @Override
    public Comment_Rating getComment_ratingbyId(int id) {
        throw new UnsupportedOperationException("Not supported yet.");
    }

    //Provides ability to retrieve comment ratings.
    @Override
    public List<Comment_Rating> getComment_ratings() {
        List<Comment_Rating> comment_ratinglist=null;
        Query query=currentSession().createQuery("From Comment_Rating");
        comment_ratinglist = (List<Comment_Rating>) query.list();
        return comment_ratinglist;
    }

    @Override
    public void addComment_rating(Comment_Rating comment_rating) {
         currentSession().save(comment_rating);
    }

    @Override
    public void deleteComment_ratingByid(int id) {
        throw new UnsupportedOperationException("Not supported yet.");
    }

    //Provides ability to retrieve comments by product id.
    @Override
    public List<Comment_Rating> getComment_ratingsbyProdid(int id) {
        List<Comment_Rating> comment_ratinglist=null;
        Query query=currentSession().createQuery("FROM Comment_Rating WHERE product_id= :code");
        query.setParameter("code", id);
        comment_ratinglist = (List<Comment_Rating>) query.list();
        return comment_ratinglist;
    }
}
