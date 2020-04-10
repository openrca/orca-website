# Open RCA Website

This repository contains the source code for the [openrca.io](https://openrca.io) website.

The website is built using [Hugo](https://gohugo.io) static site generator and is currently hosted
on Github pages. The full rendered version of the static content is available in the
[openrca.github.io](https://github.com/openrca/openrca.github.io) repository.

## Setup

Install Hugo:

```bash
$ brew install hugo
```

Install Node.js dependencies:

```bash
$ npm install
```

Load theme submodule:

```bash
$ git submodule update --init --recursive
```

Run Hugo server:

```bash
$ hugo serve
```

## Deployment

In order to deploy rendered content to Github pages, run:

```bash
$ ./deploy.sh
```
