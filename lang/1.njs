(function (Prism) {
function run() {
    const fs = require('fs');
    const pathToFile = "/path/to/file";

    fs.writeFileSync(pathToFile, "Hello, World!");
}

run();
