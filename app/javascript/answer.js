function answer(){

  const questionBox = document.getElementById("question");
  const answerTag = document.getElementById("answer-tag");

  questionBox.addEventListener('click', function() {
    if (answerTag.getAttribute("style") == "visibility:hidden;") {
      answerTag.setAttribute("style","visibility:visible;")
    } else {
      answerTag.setAttribute("style", "visibility:hidden;")
    }
  })
}
window.addEventListener('load', answer);