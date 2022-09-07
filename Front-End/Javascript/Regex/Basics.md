	let text = 'this is text'
	let pattern = /is/
	
	let result = text.match(pattern);
	
	---------------------------
	/pattern/modifier		>>in javascript
	text.replace(/bad/, 'good')	>>replace the regex in js
	
	(?modifire)pattern		>>in linux? (posix used by less)
	
	options:
		/g	global. find all instead of stopping after the first one
		/i	case insensitive
		/m	multiline considers ^ for start and $ for end of all lines instead of just the whole document
	
		matchmakers:
	/\w/	/find characters or numbers ([a-zA-Z0-9_])
	/\d/	/find digits
	/\s/	/find spaces
	/\bPATTERN/	/find PATTERN WORD patter when its in the start of a word (could also be used for endings)
	
	
	/[abc]/		find any char between the bracets
	/[^abc}/	not between the bracets
	/[a-c]/		anything between the range
	/this|that	alternative specified
	
	
	quantifiers:
	b+		/one b or more (/ab+/ > ab | abb| abbb...)
	b*		/zero b or more (/ab*/ > a | ab | abb...)
	x?		/zero or one time (/<div/?>   >>    <div> | <div/> )
	x{n)		/exactly n times of x (/x{2}/	>>	xx | helloxx | xxhello | hexxllo )
	x{n,}		/n times or more of x
	x{n,m}		/minimum n and maximum m times of x
	
	add ? to quantifiers to make them stop at first find (exp: b+? or x{2,3}? )
	
	(. means any character, except for new lines) (escape character is this: \) (\. = .)
	
	you can group things with ()
	(t|T)he		/selects the | The
