# Households  
## Create a Household  
`POST http://harmoniciq.com/api/households`  
## Get info about a specific household  
`GET http://harmoniciq.com/api/households/:id `  
## Update a specific household  
`PATCH http://harmoniciq.com/api/households/:id `  
##Delete a Household  
# Addresses  
##Create an address  
`POST http://harmoniciq.com/api/households/:id/addresses`  
##Delete an address  
`DELETE http://harmoniciq.com/api/households/addresses/:id`  
# People
##Create a person  
`POST http://harmoniciq.com/api/households/:id/people`  
##Get info about all people in a household  
`GET http://harmoniciq.com/api/households/:id/people`  
##Get info about a specific person  
`GET http://harmoniciq.com/api/households/people/:id`  
##Get info about account holder  
`GET http://harmoniciq.com/api/households/:id/account-holder`  
##Update a person  
`PATCH http://harmoniciq.com/api/households/:id/people/:id`  
##Update a person's risk profile  
`PATCH http://harmoniciq.com/api/households/:id/people/:id/risk-profile`  
##Delete a person  
`DELETE http://harmoniciq.com/api/households/:id/people/:id`  
# Emails  
##Create an email  
`POST http://harmoniciq.com/api/households/:id/people/:id/emails`  
##Delete an email  
`DELETE http://harmoniciq.com/api/households/:id/emails/:id`  
# Pets  
##Create a pet  
`POST http://harmoniciq.com/api/households/:id/pets`  
##Get info about all pets in a household  
`GET http://harmoniciq.com/api/households/:id/pets`  
##Get info about a specific pet  
`GET http://harmoniciq.com/api/households/:id/pets/:id`  
##Update a pet  
`PATCH http://harmoniciq.com/api/househlds/:id/pets/:id`  
##Delete a pet  
`DELETE http://harmoniciq.com/api/households/:id/pets/:id`  

Markdown format

##title
>text  

JSON
text
###HTTP
`GET`
<aside class="success"> notice warning
</aside>



<p align="center"><em> created with Slate. Check it out at <a href="https://slatedocs.github.io/slate">slatedocs.github.io/slate</a>.</em></p>

**Slate is just Markdown** — When you write docs with Slate, you're just writing Markdown, which makes it simple to edit and understand. Everything is written in Markdown — even the code samples are just Markdown code blocks.

* **Write code samples in multiple languages** — If your API has bindings in multiple programming languages, you can easily put in tabs to switch between them. In your document, you'll distinguish different languages by specifying the language name at the top of each code block, just like with GitHub Flavored Markdown.

* **Out-of-the-box syntax highlighting** for [over 100 languages](https://github.com/jneen/rouge/wiki/List-of-supported-languages-and-lexers), no configuration required.

### Prerequisites

You're going to need:

 - **Linux or macOS** — Windows may work, but is unsupported.
 - **Ruby, version 2.3.1 or newer**
 - **Bundler** — If Ruby is already installed, but the `bundle` command doesn't work, just run `gem install bundler` in a terminal.

### Getting Set Up

1. Fork this repository on GitHub.
2. Clone *your forked repository* (not our original one) to your hard drive with `git clone https://github.com/YOURUSERNAME/slate.git`
3. `cd slate`
4. Initialize and start Slate. You can either do this locally, or with Vagrant:

```shell
# either run this to run locally
bundle install
bundle exec middleman server

# OR run this to run with vagrant
vagrant up
```

You can now see the docs at http://localhost:4567. Whoa! That was fast!

Now that Slate is all set up on your machine, you'll probably want to learn more about [editing Slate markdown](https://github.com/slatedocs/slate/wiki/Markdown-Syntax), or [how to publish your docs](https://github.com/slatedocs/slate/wiki/Deploying-Slate).

If you'd prefer to use Docker, instructions are available [in the wiki](https://github.com/slatedocs/slate/wiki/Docker).

### Note on JavaScript Runtime

For those who don't have JavaScript runtime or are experiencing JavaScript runtime issues with ExecJS, it is recommended to add the [rubyracer gem](https://github.com/cowboyd/therubyracer) to your gemfile and run `bundle` again.

If you've got questions about setup, deploying, special feature implementation in your fork, or just want to chat with the developer, please feel free to [start a thread in our Spectrum community](https://spectrum.chat/slate)!

Found a bug with upstream Slate? Go ahead and [submit an issue](https://github.com/slatedocs/slate/issues). And, of course, feel free to submit pull requests with bug fixes or changes to the `dev` branch.
