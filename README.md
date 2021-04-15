# Let's host this app!

### Prerequisites:
- Have your front-end and backend on separate GitHub Repos (given you have a backend)
- We'll be using **Heroku** to host our rails app! So consider signing up for an account first.
- **IMPORTANT:**
  - Make sure that your Rails API App is using `postgresql` as database adapter. Heroku doesn't support `sqlite3` which is rails's default.
  - If you're just getting started, you can use `rails new <app_name> --api --database=postgresql` which will scaffold the app accordingly.
  - If you've already worked on the application, you can goto `/config/database.yml` and change the configuration to use `postgresql`.

> [Picture Guide](https://imgur.com/a/GcTYwEY)
>
> [Hosted Site](https://backend-hosting.herokuapp.com)
>
> [Frontend Hosting Guide](https://github.com/ShivangDave/front-end-hosting)

### Follow me:

- Step 1:
  - Make sure all of your code has been pushed up. Preferably to `main` branch.
    - Optional: You can also have a separate branch dedicated for just the **production**
  - Additionally, it'd be a good idea to verify that code on your branch works locally.


- Step 2:
  - Login to your `Heroku` account.
  - Once logged in, click on `New` dropdown menu and click on `Create new app`.


  <p align="center">
    <img src="https://i.imgur.com/h6KEqXe.png" height="100px" />
    <br/>
  </p>

- Step 3:
  - Here's where you can choose a name for your application.
  - Optional: If you already have a `pipeline` up for projects, you can add this app to that application too.
  - Then click on `Create App`.


  <p align="center">
    <img src="https://i.imgur.com/DOt1D7N.png" height="400px" />
  </p>

- Step 4:
  - Once you click on the button, it should take you to your app's dashboard.
  - Here's where you will find all  the information about your app including `resources` linked, `pipeline info`, `continuous delivery options`, `analytics`, `activities` and more.
  - The option that we're interested in is `Deploy`.


  <p align="center">
    <img src="https://i.imgur.com/ed5hpkB.png" height="400px" />
  </p>

- Step 5:
  - Choose `GitHub` as your deployment method. Once authorized, you will see your account show up under `repositories to connect to`.
  - You can search for the repo and then click `connect`.



  <p align="center">
    <img src="https://i.imgur.com/2j4ufsy.png" height="400px" />
    <br />
    <br />
    <img src="https://i.imgur.com/4tJ8jtl.png" height="400px" />
  </p>

- Step Almost Done:
  - Once connected, you will be able to see `Build log` under activity option.
  - If deployment is successful then you'll see the app's URL in your `activity log`.
  - If deployment fails, you'll find the error there as well.


  <p align="center">
    <img src="https://i.imgur.com/4tJ8jtl.png" height="400px" />
  </p>

- Step Done:
  - Once successful, you can turn on `continuous deployment` by going to `Deploy > Automatic Deploys > choose a branch > Enable Automatic Deploys`.
  - All Done!


  <p align="center">
    <img src="https://i.imgur.com/WmQWTsj.png" height="400px" />
  </p>


- Optional:
  - One of the issues that I ran into is caused deployment failure. Ruby version wasn't supported by Heroku Stack.
  - I was able fix it by upgrading it in the `Gemfile`.


  <p align="center">
    <img src="https://i.imgur.com/e38Hhxe.png" height="400px" />
  </p>

  - **IMPORTANT:** Since we're using `Free tier`, Heroku will put our app to sleep when it isn't being used. It'll boot back up once a request is made.

  - You can also configure `ENV` variables under `Settings > Config Vars`

  <p align="center">
    <img src="https://i.imgur.com/uWRyvLa.png" height="400px" />
  </p>
