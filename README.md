# Kured Website

This repo houses the assets used to build the Kured project's landing page.

## How to modify this website

The main landing page of this website can be modified in `config.yaml`.

All of the content lives in the `content/` directories.

## Running the site locally

In order to run the Kured site locally, you need to install the [Hugo](https://gohugo.io) static site generator. Make sure to [install](https://gohugo.io/getting-started/installing/) the "extended" variant of Hugo with support for the [Hugo Pipes](https://gohugo.io/hugo-pipes/introduction/) feature.

Once you have everything installed, run the site in "server" mode:

```cli
hugo server
```

Navigate to <http://localhost:1313> to see the site running in your browser. As you make updates to the site, the browser will immediately update to reflect those changes.
