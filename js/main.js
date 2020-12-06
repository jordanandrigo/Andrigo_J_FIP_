

// MAIL FORM HERE 

import { SendMail } from "./components/mailer.js";

(() => {
    let mailSubmit = document.querySelector('.submit-wrapper');

    function processMailFailure(result) {
        // show a failure message in the UI
        console.table(result); // table shows us an object in table form
        alert(result.message);

        // show some UI here to let the user know the mail attempt was successful
    }

    function processMailSuccess(result) {
        // show a success message in the UI
        console.table(result); // table shows us an object in table form
        alert(result.message);

        // show some UI here to let the user know the mail attempt was successful
    }

    function processMail(event) {
        // block the default submit behaviour
        event.preventDefault();

        // use the SendMail component to try to process mail
        SendMail(this.parentNode)
            .then(data => processMailSuccess(data))
            .catch(err => processMailFailure(err));

            // the error handler in the catch block could actually be a generic catch-and-display function that handles EVERY error you might encounter during runtime. Might be a better strategy to pass in a flag or just a message and have the function display it in the UI
    }

    mailSubmit.addEventListener("click", processMail);
})();









// gallery here

import { fetchData } from "./modules/fetchData.js";

(() => {
    let mini_vue = new Vue({

        data: {
            error: '', 
            clickedCar: '',
            clickedMiniVideo: '',
            miniCars: [],
            videoPlay: true,
            lightboxShow: false,
            clickedVideo: '',
        },

        mounted: function() {
            fetchData("./includes/index.php").then(data => this.switchCars(data)).catch(err => this.error = err);
        },
        
        methods: {
            toggleVid() {
                let vid = this.$refs.vid;
                if (this.clickedVideo) {
                    vid.pause();
                    this.clickedVideo = false

                } else {
                    vid.play();
                    this.clickedVideo = true
                }
            },

            switchCars(cars) {
                this.miniCars = cars;
                if (this.clickedVideo == '') {
                    this.clickedVideo = cars[0];
                }
            },

            changeVid(id) {
                if (this.miniCars[id] && this.miniCars[id].car_id == id) {
                    this.clickedVideo = this.miniCars[id];

                } else {
                    fetchData(`./includes/index.php?id=${id}`).then(data => this.clickedVideo = data[0]).catch(err => this.error = err);
                }
            },
        }
    }).$mount("#app"); 
})();