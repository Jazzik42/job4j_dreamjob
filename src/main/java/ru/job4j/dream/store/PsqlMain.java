package ru.job4j.dream.store;
import ru.job4j.dream.model.Post;

public class PsqlMain {
    public static void main(String[] args) {
        Store store = PsqlStore.instOf();
        store.save(new Post(0, "Java Job"));
        store.save(new Post(0, "Java2 Job"));
        for (Post post : store.findAllPosts()) {
            System.out.println(post.getId() + " " + post.getName());
        }
    }
}
