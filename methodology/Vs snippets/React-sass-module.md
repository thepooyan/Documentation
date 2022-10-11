---
todo: fix sass module\normal export
---
```json
{
  "CSS-Module": {
    "prefix": "/",
    "scope": "javascript,typescript",
    "body": ["<div className={styles.$1}>$0</div>"]
  },

  "Module-import": {
    "prefix": "im",
    "scope": "javascript,typescript",
    "body": ["import styles from './$TM_FILENAME_BASE.module.scss'"]
  },

  "CSS-Module-Class": {
    "prefix": "cl",
    "scope": "javascript,typescript",
    "body": ["className={styles.$0}"]
  },

  "CSS-Module-multiple": {
    "prefix": "cl2",
    "scope": "javascript,typescript",
    "body": ["className={`${styles.${1:one}} ${styles.${2:two}}`}"]
  },
  "CSS-Module-multiple3": {
    "prefix": "cl3",
    "scope": "javascript,typescript",
    "body": "className={`${styles.${1:one}} ${styles.${2:two}} ${styles.${3:three}}`}"
  },
  "CSS-Module-multiple4": {
    "prefix": "cl4",
    "scope": "javascript,typescript",
    "body": ["className={`${styles.${1:one}} ${styles.${2:two}} ${styles.${3:three}} ${styles.${4:four}}`}"]
  },
  "CSS-Module-multiple5": {
    "prefix": "cl5",
    "scope": "javascript,typescript",
    "body": ["className={`${styles.${1:one}} ${styles.${2:two}} ${styles.${3:three}} ${styles.${4:four}} ${styles.${5:five}}`}"]
  },

  "p": {
    "prefix": "/p",
    "scope": "javascript,typescript",
    "body": ["<p className={styles.$1}>$0</p>"]
  },

  "img": {
    "prefix": "/img",
    "scope": "javascript,typescript",
    "body": ["<img className={styles.$1} src='$0'/>"]
  },

  "table": {
    "prefix": "/table",
    "scope": "javascript,typescript",
    "body": ["<table className={styles.$1}>$0</table>"]
  },

  "tr": {
    "prefix": "/tr",
    "scope": "javascript,typescript",
    "body": ["<tr className={styles.$1}>$0</tr>"]
  },

  "td": {
    "prefix": "/td",
    "scope": "javascript,typescript",
    "body": ["<td className={styles.$1}>$0</td>"]
  },

  "ul": {
    "prefix": "/ul",
    "scope": "javascript,typescript",
    "body": ["<ul className={styles.$1}>$0</ul>"]
  },

  "li": {
    "prefix": "/li",
    "scope": "javascript,typescript",
    "body": ["<li className={styles.$1}>$0</li>"]
  },

  "ol": {
    "prefix": "/ol",
    "scope": "javascript,typescript",
    "body": ["<ol className={styles.$1}>$0</ol>"]
  },

  "button": {
    "prefix": "/button",
    "scope": "javascript,typescript",
    "body": ["<button className={styles.$1}>$0</button>"]
  },

  "input": {
    "prefix": "/input",
    "scope": "javascript,typescript",
    "body": ["<input className={styles.$1}>$0</input>"]
  },

  "form": {
    "prefix": "/form",
    "scope": "javascript,typescript",
    "body": ["<form className={styles.$1}>$0</form>"]
  },
  "a": {
    "prefix": "/a",
    "scope": "javascript,typescript",
    "body": ["<a className={styles.$1} href='$2'>$0</a>"]
  },
  "h1": {
    "prefix": "/h1",
    "scope": "javascript,typescript",
    "body": ["<h1 className={styles.$1}>$0</h1>"]
  },

  "h2": {
    "prefix": "/h2",
    "scope": "javascript,typescript",
    "body": ["<h2 className={styles.$1}>$0</h2>"]
  },

  "h3": {
    "prefix": "/h3",
    "scope": "javascript,typescript",
    "body": ["<h3 className={styles.$1}>$0</h3>"]
  },

  "h4": {
    "prefix": "/h4",
    "scope": "javascript,typescript",
    "body": ["<h4 className={styles.$1}>$0</h4>"]
  }
}
```