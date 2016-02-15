import 'angular';
import { Greeter } from './greeter/index';

angular.module("app", [])
    .component("greeter", new Greeter());
angular.bootstrap(document, ["app"]);