window.onload = () => {
    const contentTableEl = document.getElementById("content");

    const xhr = new XMLHttpRequest();
    xhr.overrideMimeType("text/xml");
    xhr.open("GET", "http://localhost/php/breakfast/breakfast.xml");
    xhr.addEventListener("load", handleXML);
    xhr.send();

    function handleXML() {
        const xmlDom = this.responseXML;
        
        let foodsElList = xmlDom.querySelectorAll("food");
        foodsElList.forEach((foodEl) => {
            let newRow = contentTableEl.insertRow();
            let newCell = newRow.insertCell();
            let newText = document.createTextNode(foodEl.querySelector("name").innerHTML);
            newCell.appendChild(newText);
            newCell = newRow.insertCell();
            newText = document.createTextNode(foodEl.querySelector("price").innerHTML);
            newCell.appendChild(newText);
            newCell = newRow.insertCell();
            
            newText = document.createTextNode(foodEl.querySelector("description").innerHTML);
            newCell.appendChild(newText);
            newCell = newRow.insertCell();
             
            newText = document.createTextNode(foodEl.querySelector("calories").innerHTML);
            newCell.appendChild(newText);
            newCell = newRow.insertCell();
           
        });
    }

}