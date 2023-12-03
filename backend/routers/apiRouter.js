const router = require("express").Router();
const passport = require("passport");
const { makeSpotifyApiRequest, dataCollectorAction } = require('./../controllers/apiActions');

router.get("/api_data", (req, res) => {
    if (req.user) {
        const accessToken = req.user.accessToken;
        const apiEndpoint = req.headers.endpoint;

        makeSpotifyApiRequest(apiEndpoint, accessToken)
        .then((userData) => {
          console.log( userData);
          res.redirect('http://localhost:3000');
        })
        .catch((error) => {
          res.redirect('/error');
        });
    }

    })


router.get("/dataCollector", (req,res) =>{
  if(req.user){
        const accessToken = req.user.accessToken;
        const apiEndpoint = req.headers.endpoint;
        const expiry = req.user.expiry;

        jsonData= JSON.stringify({
          "Token" :{
            "access_token" : accessToken,
            "token_type" : "Bearer",
            "expiry" : expiry
          }
        })

        dataCollectorAction(apiEndpoint,jsonData).then((data)=>{
          res.redirect('http://localhost:3000')
        })
        .catch((error) => {
          res.redirect('/error');
        });

  }

})    

module.exports = router
    