```bash
case ${1,,} in
	folan1 | folan2)
		echo case is one
		;;
	folan3)
		echo case is two
		;;
	*)
		echo default case
		;;
esac
```