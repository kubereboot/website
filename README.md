# Kured Website

[![Netlify Status](https://api.netlify.com/api/v1/badges/c23db575-eeab-4d0b-9326-5ee9047b5244/deploy-status)](https://app.netlify.com/sites/kured/deploys)
[![FOSSA Status](https://app.fossa.com/api/projects/git%2Bgithub.com%2Fkubereboot%2Fwebsite.svg?type=shield)](https://app.fossa.com/projects/git%2Bgithub.com%2Fkubereboot%2Fwebsite?ref=badge_shield)

This repo houses the assets used to build the Kured project's website: <https://kured.dev/>.

## How to modify this website

The main landing page of this website can be modified in `config.yaml`.

All of the content lives in the `content/` directories.

## Running the site locally

In order to run the Kured site locally, you need to install the [Hugo](https://gohugo.io) static site generator. Make sure to [install](https://gohugo.io/getting-started/installing/) the "extended" variant of Hugo with support for the [Hugo Pipes](https://gohugo.io/hugo-pipes/introduction/) feature.

Once you have everything installed, run the site in "server" mode:

```cli
make serve
```

Navigate to `http://localhost:1313` to see the site running in your browser. As you make updates to the site, the browser will immediately update to reflect those changes.


## License
[![FOSSA Status](https://app.fossa.com/api/projects/git%2Bgithub.com%2Fkubereboot%2Fwebsite.svg?type=large)](https://app.fossa.com/projects/git%2Bgithub.com%2Fkubereboot%2Fwebsite?ref=badge_large)