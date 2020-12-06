// import { fetchData } from "./modules/dataMiner.js";

// (() => {
//     // this receives the data payload from our AJAX request, parses it (turns the returned JSON object back into a plain JavaScript object) and renders the data to our view (the markup in index.html)
//     function handleDataSet(data) {
//         let userSection = document.querySelector('.user-section'),
//             userTemplate = document.querySelector('#user-template').content;

//         debugger;

//         // loop through the JavaScript object and for each user, make a copy of the user template we find at the bottom of index.html, populate it with the user's data, and put that fresh copy in the users section in index.html

//         for (let user in data) {
//             let currentUser = userTemplate.cloneNode(true),
//                 currentUserText = currentUser.querySelector('.user').children;

//             currentUserText[1].src = `images/${data[user].img}`; //avatar
//             currentUserText[2].textContent = data[user].category; // name
//             currentUserText[3].textContent = data[user].description; //role
//             currentUserText[4].textContent = data[user].display; //nickname

//             // add this new user to the view
//             userSection.appendChild(currentUser);
//         }

//         console.log(data);
//     }

//     fetchData('./includes/functions.php').then(data => handleDataSet(data)).catch(err => console.log(err));    
// })();


import { fetchData } from "./modules/dataMiner.js";

(() => {
 
    console.log('loaded');
    
    function popErrorBox(message) {
        alert("Something is wrong");
    }

    function openLightbox(data) {
        let lightbox = document.querySelector('.lightbox'), 
            closeButton = lightbox.querySelector('span');

        closeButton.addEventListener("click", ()=> { lightbox.classList.remove('show-lightbox')})
        
        lightbox.querySelector('img').src = `images/${data[0].img}`;
        lightbox.querySelector('mp4').src = `videos/${data[0].mp4}`; 
        lightbox.querySelector('h4').textContent = data[0].category;
        lightbox.querySelector('p').textContent = data[0].description;


        lightbox.classList.add('show-lightbox')
    }



    function retrieveProjectInfo(event) {
  
       if (!event.target.id)  { return }

         fetchData(`./includes/index.php?id=${event.target.id}`).then(data => openLightbox(data)).catch(err => console.log(err));
    }

    function renderPortfolioThumbnails(thumbs) {
        let userSection = document.querySelector('.user-section'),
            userTemplate = document.querySelector('#user-template').content;

        for (let user in thumbs) {
            let currentUser = userTemplate.cloneNode(true),
                currentUserText = currentUser.querySelector('.user').children;

            currentUserText[1].src = `images/${thumbs[user].image}`;
            currentUserText[1].id = thumbs[user].id;

            
            currentUser.addEventListener("click", retrieveProjectInfo);
            userSection.appendChild(currentUser);
        }

        userSection.addEventListener("click", retrieveProjectInfo)
    }

    
        
    fetchData("./includes/index.php").then(data => renderPortfolioThumbnails(data)).catch(err => console.log(err));
})();