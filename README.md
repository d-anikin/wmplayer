# Wmplayer

## Install
```
  bundle install
  npm install
```
## Start App
```
  foreman start
```
Then visit to http://localhost:5000/


## Frontend File Structure
```
wmplayer/
 ├──src/                       * our source files that will be compiled to javascript
 │   ├──app.ts                 * our entry file for our browser environment
 │   └──index.html             * Index.html: where we generate our index page
 │
 ├──webpack/                   * Webpack configutations
 │   ├──development.js         * our development webpack config
 │   └──production.js          * our production webpack config
 │
 ├──node_modules/              * Node modules [gitignored]
 ├──typings/                   * TypeScript type definitions [gitignored]
 │
 ├──tsconfig.json              * config that webpack uses for typescript
 ├──typings.json               * our typings manager
 └──package.json               * what npm uses to manage it's dependencies
```
### Build frontend
```sh
npm install
tsd install
npm run build
```
### Features
- [x] Typescript support
- [x] ES6 modules support
- [x] Watches code and refreshes browser with latest changes automatically
