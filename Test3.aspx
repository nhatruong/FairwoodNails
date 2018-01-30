<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Test3.aspx.cs" Inherits="Test3" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server">
   
    <script src="http://maps.google.com/maps/api/js?sensor=true">

    </script>
    <script>

        var results;
        var map;


        window.onload = function () {
            results = document.getElementById("results");
            var mapOptions = {
                zoom: 13,
                mapTypeId: google.maps.MapTypeId.ROADMAP
            };
            map = new google.maps.Map(document.getElementById("mapSurface"), mapOptions);


            if (navigator.geolocation) {
                navigator.geolocation.getCurrentPosition(
                  geolocationSuccess, geolocationFailure
                );

                results.innerHTML = "The search has begun.";
            } else {
                results.innerHTML = "This browser doesn't support geolocation.";
            }
        }

        function geolocationSuccess(position) {

            var location = new google.maps.LatLng(position.coords.latitude, position.coords.longitude);
            map.setCenter(location);

            var infowindow = new google.maps.InfoWindow();

            infowindow.setContent("You are here, or somewhere thereabouts.");
            infowindow.setPosition(location);
            infowindow.open(map);

            results.innerHTML = "Now you're on the map.";
        }

        function geolocationFailure(positionError) {
            if (positionError.code == 1) {
                results.innerHTML =
                 "You decided not to share, but that's OK. We won't ask again.";
            }
            else if (positionError.code == 2) {
                results.innerHTML =
                 "The network is down or the positioning service can't be reached.";
            }
            else if (positionError.code == 3) {
                results.innerHTML =
                 "The attempt timed out before it could get the location data.";
            }
            else {
                results.innerHTML =
                 "This the mystery error. Something else happened, but we don't know what.";
            }
        }

    </script>

    <style>
        #mapSurface {
            width: 600px;
            height: 400px;
            border: solid 1px black;
        }
    </style>
    <p id="results">Where do you live?</p>
    <div id="mapSurface"></div>
    
</asp:Content>

