const touchCercle = () => {
  const showCircle = (cursor, seconds) => {
    // console.log(cursor);
    const circle = document.createElement("div");
    circle.style.position = "fixed";
    circle.style.backgroundColor = "grey";
    circle.style.borderRadius = "50%";
    circle.style.left = `${cursor.clientX - 24}px`;
    circle.style.top = `${cursor.clientY - 24}px`;
    circle.style.height = "48px";
    circle.style.width = "48px";
    circle.style.opacity = 0.5;
    document.body.appendChild(circle);
    setTimeout(() => {
       circle.remove();
    }, seconds * 500);
  };

  document.addEventListener("touchmove", (event) => {
    showCircle(event.targetTouches[0], 0.1);
  });
  document.addEventListener("click", (event) => {
    showCircle(event, 1);
  });
}


export {touchCercle};
