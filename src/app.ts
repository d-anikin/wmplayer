import 'angular';
import Greeter from './greeter';

angular.module("app", [])
    .directive("greeter", Greeter);
angular.bootstrap(document, ["app"]);