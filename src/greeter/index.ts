export class Greeter implements ng.IComponentOptions{
    public template: string = require('./template.html');
    public controller: Function = GreeterController;

}

class GreeterController {
    public text: string = 'Hello world!';
}
