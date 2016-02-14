export default function Greeter(): ng.IDirective {
    return {
        restrict: 'EA',
        template: require('./template.html')
    }
}