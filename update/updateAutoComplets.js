const fs = require("fs");
const shell = require("shelljs");
var http = require("https");
const { urlMap } = require("./res.js");

const list = ["_docker", "_docker-compose"];

var gutil = require("gulp-util");
const { green, red, blue } = gutil.colors;
const diro = list[0];

function _download(item, locataion) {
  const { url } = item;
  var file = fs.createWriteStream(locataion);
  var request = http.get(url, function(response) {
    response.pipe(file);
  });
}

function downloadList(list, urlMap) {
  for (let key of list) {
    const { filename, path } = urlMap[key];
    const location = path + filename;
    _download(urlMap[filename], location);
  }
}

fs.exists(diro, function(exists) {
  if (exists) {
    console.log(blue("File exists. Deleting now ..."));
    fs.unlinkSync(diro);
    downloadList(list, urlMap);
  } else {
    console.log(red("File not found, so not deleting."));
    downloadList(list, urlMap);
  }
});
