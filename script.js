function addContent(fileName, clickedButton){
    // Load page into iframe
    document.getElementById("content-frame").src = fileName;

    // Remove active state from all buttons
    document.querySelectorAll(".sidebar button")
        .forEach(btn => btn.classList.remove("active"));

    // Add active state to clicked button
    clickedButton.classList.add("active");
}