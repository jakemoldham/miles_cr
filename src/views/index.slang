.row
  #youreinvited-div
    | img src="birthday-assets/youreinvited.png" alt="You're invited" id="youreinvited-img"
.row
  #hero-bkg
    #hero-content
      | image_tag "birthday-assets/announcement.png", alt: "announcent", id: "announcment"
.row
  #birthday-info
    #fewdetails-div
      | image_tag "birthday-assets/fewdetails.png", alt: "A few details", id: "fewdetails"
    #date-div
      | image_tag "birthday-assets/date.png", alt: "Date", id: "date-img"
    #location-div
      | image_tag "birthday-assets/location.png", alt: "Location", id: "location-img"

    .google-btn
      | link_to "MAP IT", "https://www.google.com/maps/place/1321+Sir+Barton+Dr,+Kaysville,+UT+84037/@41.0123974,-111.9576336,17z/data=!3m1!4b1!4m5!3m4!1s0x8752fde0fefec095:0xd3ffe1e8f5e085fb!8m2!3d41.0123934!4d-111.9554449", class: "btn btn-goog"
    #time-div
      | image_tag "birthday-assets/time.png", alt: "Time", id: "time-img"
      hr
  #lunch-div
    | image_tag "birthday-assets/lunch.png", alt: "Lunch", id: "lunch-img"
    hr
  #guests-form
    | form_tag(static_pages_guest_path, method: :post) do
      p WILL WE SEE YOU THERE?
      #yesno
        label.coming.notcomming-check
          | check_box_tag 'coming', 'yes', false, id: "coming", class: "test"
          | YES
        label.notcoming.notcomming-check
          | check_box_tag 'notcoming', 'yes', false, id: "notcoming", class: "test"
          | NO
      | text_field_tag 'name', nil, placeholder: "NAME", id: "guest-name"
      | number_field_tag 'guests', nil, in: 1...10, placeholder: "# OF GUESTS", id: "guests"
      | submit_tag "SUBMIT", class: "sub-btn"
  #cant-wait
    p CAN'T WAIT!
