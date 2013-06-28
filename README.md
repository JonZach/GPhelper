#GPhelper

This is Ruby on Rails app for my final capstone project at the [Nashville Software School](http://nashvillesoftwareschool.com/). This app builds on my routepal ruby command line project with an expanded feature set. GPhelper is a daily management tool for GreenPal vendors to create and manage appointments/appointment history and provide a BestRoute for the day's jobs.

##Features

1. Users can create an new account
2. Users must log in with email and password, validation included
3. Users can create, delete, and complete appointments
4. Users can view their appointments, sorted by date
5. Users can see a Google Maps view of their appointments (gmaps4rails and geocoder gems)
6. Appointments are also routed/sorted by distance for the User based on thier starting location (business address)

##Add-Ons

1. Ability to view appointment history
2. Upload photo feature for completion of appointments
3. Notes feature for completed appointments for any special comments to help for next appointment
4. Filter appointment and routing tables by specific date

##Usage

This app uses postgresql so a server must be on.<br />
clone this repo<br />
`git clone`<br />
run bundler<br />
`bundle`<br />
then create the database<br />
`rake db:create:all`<br />
run the migrations<br />
`rake db:migrate`<br />
then start the server<br />
`rails s`<br />
Go to localhost:3000<br />


##Author

Zach Hendrix

##License

The MIT License (MIT)

Copyright (c) 2013 Zach Hendrix

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in
all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
THE SOFTWARE.