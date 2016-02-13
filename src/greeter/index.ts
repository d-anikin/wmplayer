let myTemplate = require('./template.html');

function greet(name: string) {
  return 'Hello ' + name + myTemplate;
}

export default greet;
