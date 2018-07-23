# fitbit-cli

### A command-line interface (currently using Python 2) for communicating with the Fitbit API

## Notice
This tool is a work in progress.

## Setup
### Setting up the `fitbit` command
Run `setup.sh` to install dependencies and create the `fitbit` executable command.

### Getting OAuth Credentials
You need to get an OAuth 2.0 Client ID and Client Secret by first creating a Fitbit App for your own personal usage.

The following tutorial is adapted from [an article on Towards Data Science](https://towardsdatascience.com/collect-your-own-fitbit-data-with-python-ff145fa10873):


**The first thing you’ll need to do is create a [Fitbit account](https://www.fitbit.com/). Once you’ve done that, you can go to [dev.fitbit.com](https://dev.fitbit.com/). Under “Manage”, go to “Register An App”. This will lead you to a page that looks like:**

![How To Register A Fitbit App](https://cdn-images-1.medium.com/max/1600/1*UJHMOYsFZvrBmpNjFfpBJA.jpeg "How To Register A Fitbit App")

**For the application website and organization website, name it anything starting with “http://” or “https://”. Secondly, make sure the OAuth 2.0 Application Type is “Personal” as this is key to allowing us to download our intraday data. Lastly, make sure the Callback URL is “http://127.0.0.1:8080/” in order to get our Fitbit API to connect properly. After that, click on the agreement box and submit.**

**NOTE: depending on the app, we may need an additional step to fill out a form in order to gain permission to our intraday data at this link. Fitbit is supportive of personal projects and any other non profit research, so these should already be callable, but commercial apps might take longer to be approved.**

**After that, you’ll be redirected to a page looking like this:**

![Where To Find OAuth Credentials](https://cdn-images-1.medium.com/max/1600/1*JlUn1-7XoaBnnpnsEMf9mg.jpeg "Where To Find OAuth Credentials")

**The parts we will need from this page are the OAuth 2.0 Client ID and the Client Secret.**

## Using The CLI
Run `fitbit` directly in your terminal. Assuming that your PATH is set correctly, this should work out-of-the-box. On first run, OAuth credentials will be required. These are then saved in your home directory (in `~/.fitbit/`), and subsequent calls will begin to retrieve data.

## API
* [Source](https://github.com/orcasgit/python-fitbit/)
* [Documentation](http://python-fitbit.readthedocs.io/en/latest/)
