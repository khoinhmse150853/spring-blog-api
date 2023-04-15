package com.springboot.blog.repository;

import com.springboot.blog.entity.Comment;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import java.util.List;

public interface CommentRepository extends JpaRepository<Comment, Long> {
    List<Comment> findByPostId(long postId);

    @Query("SELECT c FROM Comment c WHERE c.id = :id AND c.post.id = :postId")
    Comment findByIdAndPostId(@Param("postId") long postId, @Param("id") long id);
}
