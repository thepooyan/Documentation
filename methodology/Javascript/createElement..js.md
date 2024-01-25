const createElement = (creationString) => {
    let destruct = creationString.split(/(?=\.|#|\{|\[)/);
    const node = document.createElement(destruct[0]);
    destruct.shift();

    destruct.forEach(i => {
        let value = i.substring(1);

        switch (i.charAt(0)) {
            case '.':
                node.classList.add(value);
                break;
            case '#':
                node.id = value;
                break;
            case '{':
                value = value.slice(0, -1);
                node.innerText = value;
                break;
            case '[':
                value = value.slice(0, -1);
                value = value.split('=');
                node.setAttribute(value[0], value[1]);
                break;
        }
    })

    // node.addChild = (...children) => {
    //     children.forEach(child => {
    //         node.appendChild(createElement(child));
    //     })
    //     return node
    // };

    return node
};

const createElementRoutes = (creationString) => {
    let destruct = creationString.split(/[>+]/);
    destruct[destruct.length -1] = createElementBrothers(destruct[destruct.length -1]);
    
    let a = destruct.slice().reverse().reduce((p, c) => {
        let child = p;
        console.log('child is', child);
        let father = createElementBrothers(c);
        // debugger
        console.log('father is ', father);

        father.appendChild(child);
        console.log('result is ', father);
        return father;
    })

    return a;
}
const createElementBrothers = (creationString) => {
    let destruct = creationString.split(/\+/);

    if (destruct.length == 1) return createElement(creationString);

    let fragmane = document.createDocumentFragment();
    destruct.forEach(i => fragmane.appendChild(createElement(i)));

    return fragmane;
}


// let test = createElement('div[data-a=b].a{sdfsdf}.b.c#d.e').addChild('p{this is child}', 'div');
// console.log(test);

//vision: createElement('div.class#id.another#a').child('div', 'p');destruct[0]destruct[0]
