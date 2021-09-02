package ru.job4j.dream.store;

import ru.job4j.dream.EmailException;
import ru.job4j.dream.model.Candidate;
import ru.job4j.dream.model.Post;
import ru.job4j.dream.model.User;

import java.util.Collection;

public interface Store {
    Collection<Post> findAllPosts();

    Collection<Candidate> findAllCandidates();

    void save(Post post);

    void save(Candidate candidate);

    Post findById(int id);

    Candidate findCandidateById(int id);

    void deleteCandidate(int id);

    void addUser(User user) throws EmailException;

    User findUserById(int id);

    User findUserByEmail(String email);
}