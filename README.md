[![Metal with care](http://i.imgur.com/qtTluO7.jpg)](http://youtu.be/Klgex-dymq0?t=2m17s)

Metal with care

# MetalSmith-Demo

A working static site generator using [MetalSmith](https://github.com/segmentio/metalsmith). 

## Why does this repo exist?

I was able to ramp up quickly thanks to [Robin Thrift](https://github.com/RobinThrift)'s getting-to-know-metalsmith series. 

A lot of credit for this repo is owed to [Robin Thrift](https://github.com/RobinThrift) who created the tutorials I followed and 
created the original MetalSmith-Demo, though under a different name: [metalsmith-tutorial](https://github.com/RobinThrift/metalsmith-tutorial)

With that said, I ran into a few issues during setup and the tutorial for [part 1 (from April 2014)](http://www.robinthrift.com/posts/metalsmith-part-1-setting-up-the-forge/) 
was outdated. I am just starting to toy around with MetalSmith, but I figured I would create this as a starter project to help myself, 
and others like me, to Metal with care.

### Issues I ran into with Robin's tutorials

- Part 1
    1. the MetalSmith.build() method must be passed an error and/or success callback (_this is up to date on the main MetalSmith README.md_).

- Part 2
    1. After completing adding of all of the instructions from Part 2, the build failed. I was missing a post.hbt file (_There is a subtext in Part2 mentioning that you need to also create a post template that I missed while blindly following the large-text instructions._)
    2. The index.md no longer builds to an index.html.. leaving only a directory listing when serving the build directory.
    3. The blog/index.html page was displaying [incorrectly escaped content for posts due to using double, instead of triple, curly brackets](http://handlebarsjs.com/#html-escaping). 

- Part 3
    1. TBD

### Observed issues with MetalSmith

1. Why U No Error when build fails? Why you DO success? If a success function is passed to .build(), it fires during the failed builds mentioned above. This is quite confusing.

## How do I even?

### Dependencies

1. git
2. node
3. npm

### Installation
```bash
git clone git@github.com:SgtPooki/MetalSmith-Demo.git destinationDirectory
cd destinationDirectory
npm install
node index
```

### Serving the site
```bash

npm run metal # Build the site
npm start # Calls' npm run metal' and then http-server to serve the files.

```

## Future

### This project needs us to 

- Create a [slush generator](http://thejackalofjavascript.com/building-slush-generator/).
- Create a [yo generator](http://yeoman.io/authoring/).
- Add multiple server options for serving the static modules (_but then what would I do with my [What Now section](#what-now-after-installation)...?_)
- Add support for vhost middleware so this project can be added to any other site with a connect based server easily.
- Add watch support so we can rebuild without rerunning the ```npm start``` command.

### I don't like http-server...

Just a few other options off the top of my head:

- Node.js with connect
- Node.js with express
- Apache
- nginx
- SimpleHTTPServer

### What now? (after installation...)

if, 
- you have not received any errors
- you used the [installation commands above](#installation)
- you have a projectRoot/build/pages/about/index.html and similar files
- You can serve those files with ```npm start``` 

, then our work here is done. If not.. please see below.


## But.. but...

If you're lost, 
- please feel free to spend some time googling.
- email me with details about how you would like to bestow scrupulous funding upon me for my assistance.
- file an issue/question so I can address the cause of the [installation commands above](#installation) not correctly installing this project for you.


### Pursue Truth; Share Knowledge; And have fun programming! :thumbsup:
