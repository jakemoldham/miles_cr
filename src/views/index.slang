.row
  #youreinvited-div
    img src="images/birthday-assets/youreinvited.png" alt="You're invited" id="youreinvited-img"
.row
  #hero-bkg
    #hero-content
      img src="images/birthday-assets/announcement.png" alt="announcent" id="announcment"
.row
  #birthday-info
    #fewdetails-div
      img src="images/birthday-assets/fewdetails.png" alt="A few details" id="fewdetails"
    #date-div
      img src="images/birthday-assets/date.png" alt="Date" id="date-img"
    #location-div
      img src="images/birthday-assets/location.png" alt="Location" id="location-img"

    .google-btn
      a href="https://www.google.com/maps/place/1321+Sir+Barton+Dr,+Kaysville,+UT+84037/@41.0123974,-111.9576336,17z/data=!3m1!4b1!4m5!3m4!1s0x8752fde0fefec095:0xd3ffe1e8f5e085fb!8m2!3d41.0123934!4d-111.9554449" class="btn btn-goog"
        | MAP IT 
    #time-div
      img src="images/birthday-assets/time.png" alt="Time" id="time-img"
      hr
  #lunch-div
    img src="images/birthday-assets/lunch.png" alt="Lunch" id="lunch-img"
    hr
#guests-form
  form action="/static_pages/guest" accept-charset="UTF-8" method="post" 
    input name="utf8" type="hidden" value="" 
    input type="hidden" name="authenticity_token" value="9ELIo2wR9nqFeq/lrXxRaAy0lKbn8M9be9ikFQA8CXQqQnCXXrAOPWReiwGp7UzgTg6RnFLlb8gik7tFhvHLEw=="
    p
      | WILL WE SEE YOU THERE?
    #yesno
      label.coming.notcomming-check
        input#coming.test type="checkbox" name="coming" value="yes"
        | YES
      label.notcoming.notcomming-check
        input#notcoming.test type="checkbox" name="notcoming" value="yes"
        | NO
    input#guest-name type="text" name="name" placeholder="NAME"
    input#guests type="number" name="guests" placeholder="# OF GUESTS" min="1" max="9"
    input.sub-btn type="submit" name="commit" value="SUBMIT" data-disable-with="SUBMIT"
  #cant-wait
    p CAN'T WAIT!
