import Rails from "@rails/ujs";

const initSelfie = () => {
  const video = document.querySelector('.selfie-video');
  const startbutton = document.querySelector('.selfie-startbutton');
  const canvas = document.createElement('canvas');
  let width = 375;    // We will scale the photo width to this
  let height = 812;
  let streaming = false;

  const takePicture = async () => {
      var context = canvas.getContext('2d');
      canvas.width = width;
      canvas.height = height;
      context.drawImage(video, 0, 0, width, height);
      let data = await new Promise((resolve) => {
        canvas.toBlob(resolve, 'image/png');
      });
      // Wrap the selfie and an automated title in a formData
      const formData = new FormData();
      formData.append('final_pic[photo]', data, 'final_pic.png');
      // formData.append('selfie[title]', `Picture taken on ${(new Date).toString()}`);
      // Change the 📸 button to ✅ and freeze the video
      // when the selfie is taken
      startbutton.innerHTML = "<img src=\"https://res.cloudinary.com/cyee3012/image/upload/v1615462684/croppi-tick_skij9f.svg\" alt=\"shutter\">";
      video.pause();
      // Send the selfie to Rails backend to store it
      if (window.location.pathname.includes("/new")) {
        Rails.ajax({
          url: window.location.pathname.replace("/new", ""),
          type: "post",
          data: formData
        })
      }
      else {
        Rails.ajax({
          url: window.location.pathname.replace("/edit", ""),
          type: "patch",
          data: formData
        })
      }
    }


  navigator.mediaDevices.getUserMedia({ video: { facingMode: "environment" }, audio: false })
    .then(function(stream) {
        video.srcObject = stream;
        video.play();
    })
    .catch(function(err) {
        console.log("An error occurred: " + err);
    });
  video.addEventListener('canplay', function(ev){
    if (!streaming) {
      height = video.videoHeight / (video.videoWidth/width);
      video.setAttribute('width', width);
      video.setAttribute('height', height);
      canvas.setAttribute('width', width);
      canvas.setAttribute('height', height);
      streaming = true;
    }
  }, false);

  startbutton.addEventListener('click', (event) => {
    event.preventDefault();
      takePicture();
    });
}
export { initSelfie };
