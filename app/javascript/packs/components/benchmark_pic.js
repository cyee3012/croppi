import Rails from "@rails/ujs";

const previewBenchmark = () => {
  const photo = document.getElementById('benchmark_pic_photo');
  console.log(photo);
  const image = document.getElementById("benchmark_preview");
  photo.addEventListener("change", () => {
    const file = photo.files[0]
    function readeronload(aImg) {
      return function(e) {
        aImg.src = e.target.result;
      };
    };
    const reader = new FileReader();
    reader.onload = readeronload(image);
    reader.readAsDataURL(file);

  });
};

export { previewBenchmark };
