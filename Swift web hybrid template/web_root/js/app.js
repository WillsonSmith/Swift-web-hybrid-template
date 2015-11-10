function addVersion(version) {
    var textContainer = document.getElementsByClassName("text")[0];
    var p = document.createElement("p");
    p.textContent = version;
    console.log(version);
    textContainer.appendChild(p);
}

swift.getCurrentVersion();