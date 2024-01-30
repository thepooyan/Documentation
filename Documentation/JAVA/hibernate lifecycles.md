- transient:
	when changes of an object is not tracked
- persisted:
	when transaction is open, changes that we make to received objects will be calculated and by committing the transaction, will be updated in the database
- detached:
	when a persisted object is called to `session.evict()`
- removed:
	when a persisted object is called to `session.remove()`



***
`session.clear()` : 
	clears the level one cache of hibernate persistence, meaning all the objects that are in the cache are going to be detached.
`session.flush()` : 
	sends every object in cache to the database but will still wait for the commit.
	so the cache can be cleared and all the changes up to the point of flush will be applied when the commit is called. 
 `session.evict(entity)`: 
	 detaches an entity from hibernate cache

[[hibernate batch insert]]