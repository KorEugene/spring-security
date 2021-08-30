package ru.geekbrains.springsecurity.repositories;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;
import ru.geekbrains.springsecurity.entities.Authority;

@Repository
public interface AuthorityRepository extends CrudRepository<Authority, Long> {
}
