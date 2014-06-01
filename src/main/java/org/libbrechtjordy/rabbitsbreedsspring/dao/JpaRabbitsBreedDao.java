package org.libbrechtjordy.rabbitsbreedsspring.dao;

import org.libbrechtjordy.rabbitsbreedsspring.entity.RabbitsBreed;
import org.springframework.stereotype.Repository;

/**
 *
 * @author JordyL
 */
@Repository("rabbitsBreedDao")
public class JpaRabbitsBreedDao extends GenericDaoJpa<RabbitsBreed> implements RabbitsBreedDao {

    public JpaRabbitsBreedDao() {
        super(RabbitsBreed.class);
    }
 
}
