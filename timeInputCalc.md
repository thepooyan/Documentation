```js
//*Time Input Calc
let setCounterDate = (date) => {
    let parseMMDD = (string) => {
        let mm = parseInt(string[0]);
        let m = parseInt(string[1]);
        let dd = parseInt(string[3]);
        let d = parseInt(string[4]);
        return [(mm * 10) + m, (dd * 10) + d]
    }
    date = parseMMDD(date);
    let countDownDate = new Date(2022, date[0] - 1, date[1]).getTime();

    return remainingTime = () => {
        let now = new Date().getTime();
        let timeleft = countDownDate - now;
        let remTime = {
            days: Math.floor(timeleft / (1000 * 60 * 60 * 24)),
            hours: Math.floor((timeleft % (1000 * 60 * 60 * 24)) / (1000 * 60 * 60)),
            minutes: Math.floor((timeleft % (1000 * 60 * 60)) / (1000 * 60)),
            seconds: Math.floor((timeleft % (1000 * 60)) / 1000)
        }
        Object.entries(remTime).filter((key, val) => {
            if (val < 0) remTime[key] = 0;
        })
        return remTime;
    }
}
```