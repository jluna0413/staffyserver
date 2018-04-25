# README

to pull new code changes:

```git pull```

to run db changes/migrations:

```rails db:migrate```

0.1.0 - login required and nav to talent profile.


//Bug List//

* Sigin in Page: (idealy contect should be centered.)

      . Having issues logging in ( not sure if password is wrong on my end.  but confident i know it.)
      . fogot password link : requested password reset link but never recieved an email.  
      
     This is an example of how useful an admin backend would be.



* Profile/New.. (ideally contect should be centered.)
  
 . Phone input : should only accept integers

 . Zipcode input: should only accept integers

 . State input: should be drop down

 . Sex input : should be drop down

 . Birthday input: currently formated as YYYY MM DD should be changed to MM DD YYYY

 . Goverment input: no sure what porpus this field was intended to serve

 . Topsuite input: lable needs to be changed ie: add space between Top and Suite... or rather read Suite Top

 . Waisthip input: lable needs to be changed Waist and Hip should be serpate since they will have diffrent values

 . Pantlength input: lable needs to be changed ie: add space between Pant and Lenght... or rather read Pants Lenght

 . eyecolor input: lable needs to be changed ie: add space between Eye and Color... 

 . user input seems to be there by error the word user is appented by a number that seems to reflect the number of users in the db.


# 0.1.1 Bugfixes:

added a Phone Number Input Validation

added a sex input dropdown

government input relabeled -- (driver's license etc)

added code in backend to automatically pass user id of currently logged in user as the person who's modding the profile. 

make it so users can only have 1 talent profile. ever. not at a time. that way they can't make a profile and delete it, they would have to delete their account to delete their stuff etc. otherwise 1 person could register many different talent profiles. 


# 0.1.2 TO DO:

Zip/Postal Code: add gem https://github.com/dgilperez/validates_zipcode (adds multi-country postal code support) 

State Input: need to add the 50 more dropdown choices to form.html.erb in app/views/talent_profiles (line 61)

birthday input uses browser standard date input and display format which is ISO style not american/ANSI so need a datepicker like a clean js, hopefully no jquery or script/library dependencies.

rails active_admin

setup mailcatcher on luna's computer so he can access mailserver and see error/account reset emails etc in dev env.

