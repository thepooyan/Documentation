	look ahead
	
	(?<=pattern)expression		select the expression right after the pattern but not the pattern itself
	..(?<=meta)			select two last words of meta
	
	look behind
	
	expression(?=pattern)		select the expression right before pattern but not the pattern itself
	(?=pattern)..			select first two words of pattern
	
	(put ! instead of = to reverse above command results)
	
	/b(..)(..)/b		will return the first two letters in a group and last two letters in another. indexed by order
	
	(?<name>h)		will return h in the grouping with the name 'name'
	
	(?:h)			will select h but will not return it as a group
