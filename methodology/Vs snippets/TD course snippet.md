```json
{
		"Project": {
		  "prefix": "ProjectBox",
		  "scope": "html",
		  "body": [".projectBox#titles$1>.right>h3.title{$2}+ul>li*$3^^.outside>.image$0"]
		},
		"workshop": {
		  "prefix": "workshop",
		  "scope": "html",
		  "body": [".workshop#titles$1>.image+.title>h3{$2}+.icon"]
		},
		"collapsable": {
		  "prefix": "collapse",
		  "scope": "html",
		  "body": ["i.fas.fa-plus.collapsable+ul.collapsableContent>(li>a[href='#titles$1-$']{titr$})*$0"]
		},
		"attention": {
		  "prefix": "attention",
		  "scope": "html",
		  "body": ["p.attention>span{توجه}"]
		},
}
```