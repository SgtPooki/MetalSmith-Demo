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

## Dependencies

1. git
2. node
3. npm

## Installation
```
git clone git@github.com:SgtPooki/MetalSmith-Demo.git destinationDirectory
cd destinationDirectory
npm install
node index
```

## Future

### I would really like to add to this project by

- Creating a [slush generator](http://thejackalofjavascript.com/building-slush-generator/).
- Creating a [yo generator](http://yeoman.io/authoring/).
- Add express to serve the static modules (_but then what would I do with my [What Now section](#what-now-after-installation)...?_)
- Allow vhost middleware to add this project to any other expressjs site easily.

### What now? (after installation...)

First off, if you have not received any errors, you used the [installation commands above](#installation), and you have a projectRoot/build/index.html file, then our work here is done.

However, if you're concerned about your local harddrive retaining all of the beauty within this repo and want to share with the world, 
you should probably find a server. Just a few options off the top of my head:

- Node.js with connect
- Node.js with express
- Apache
- nginx
- SimpleHTTPServer
- http-server

If you're lost, 
- please feel free to google more about the above options, 
- email me with details about how you would like to bestow scrupulous funding for my assistance
- or file an issue/question so I can address the cause of the [installation commands above](#installation) not correctly installing this project for you.

Pursue Truth; Share Knowledge; And have fun programming! :thumbsup:
