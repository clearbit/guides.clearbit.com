---
layout: default
title: Clearbit Guides Styleguide
permalink: /style/
---

# Guides Styleguide

Writing Clearbit guides is fun and follows a process. If you're stuck, have
questions, or come across any ideas we should implement, send us an email to
[writing@clearbit.com](mailto:writing@clearbit.com). Following this meta-guide
anyone can write something great to help our users accomplish their goals.

Guides are a little different than help center material, blog posts, and other
prose. Specifically, they should be terse, empathetic, and consistent.

## Writing style

Our first consideration is to think about "why someone is on this guide" and to
think about the context which they came from

Each step should be logically complete. Don't make something a single step, when
really there are 20 sub-steps. Break them out how you see fit, that's not
overwhelming for the user.

### Terminology

* For linking to websites: "Go to [Clearbit Dashboard](https://clearbit.com)".
* Clicking buttons: "Click **Submit**". Be sure to use the exact same text as
  the button.
* Referencing a header, make it bold: "**Edit your settings**".
* Multi-tiered setting hierarchy should be consistent "Dashboard -> Settings -> Edit".

### Quick tips

* Make each step a directive. Specifically state _exactly_ what you need them to
  do.
* Always use the active voice. i.e. "You will write a style guide.", not "The
  style guide will be written."
* If everyone has to do something, don't make it optional. Help everyone follow
  the optimal path.
* Be very careful about linking to elsewhere, you don't want to distract them
  from accomplishing the goal of the guide. Even if that means giving less
  information.
* Linking in general can be tricky business. Don't link to another page, when
  you could provide that information in-line.
* Never ask for permission or say "go ahead and..." No reason to be colloquial.

## Markdown reference

You can do so much with Markdown, here's how we use it at Clearbit. For a
refresher, see [Github's reference](https://guides.github.com/features/mastering-markdown/)
or for a more in-depth tutorial, spend 30 minutes with [Wes Bos' Mastering
Markdown](https://masteringmarkdown.com/) video series.

### Headers

A good rule of thumb is to only use 3 levels of hierarchy.

```markdown
# Header level one
## Header level two
### Header level two
```

### Lists

When you're making a step-by-step list, always use 1. to denote an ordered list
step. This way you can reorder or add / remove steps later and not have to
manually change the numbers.

```markdown
1. Step by step.
1. Step by step.
1. Step by step.

* Unordered list item.
* Unordered list item.
* Unordered list item.

1. Step by step.
  * Sub-item.
  * Sub-item.
1. Step by step.
  1. Sub-item.
  1. Sub-item.
```

### Add a class

You can customize elements by adding a class on the following line. Here's an
example of how you can make a normal paragraph look like a caption.

```markdown
Gifs are universal, shareable, and easy to produce using this guide. Usually the
color palette is too low and the quality not clear enough for a technical guide,
thanks to image optimization in 2018, we can get around these problems.
{:.caption}
```

### Add a bookmark id

Sometimes, you want to be able to link directly to a part of a guide. Adding an
id allows you to directly reference any material by appending that id onto the
URL. i.e. [{{ site.url }}{{ page.url }}#example](#example)
{:#example}

```markdown
Gifs are universal, shareable, and easy to produce using this guide. Usually the
color palette is too low and the quality not clear enough for a technical guide,
thanks to image optimization in 2018, we can get around these problems.
{:#example}
```

## Taking screenshots

1. On macOS, use `CMD` + `Shift` + `4` + `Space` to take a full-window
   screenshot. This will save a PNG on your desktop by default.
  * Show as much context as possible, "device chrome" is highly encouraged.
1. Launch [Sketch](https://www.sketchapp.com/) with the screenshot template.
  1. Drag the call outs to the right place to get the right emphasis.
  1. Export using the `Web` settings`.
1. Launch [ImageOptim](https://imageoptim.com/mac).
1. Optimize your screenshot to save 30-60% in file size.

## Recording videos

Videos should be shot in 10-15 chunks and uploaded as GIFs. Typically, video
tutorials are long, users have to repeat segments several times, and they need
to use a lot of mental energy to follow the video and text at the same time. By
breaking them out into smaller chunks and putting the video and text next to
each other, we make it significantly easier for us to update and our users to
follow along.

![ScreenFlow Demo](/images/screenflow-demo.gif)

Gifs are universal, shareable, and easy to produce using this guide. Usually the
color palette is too low and the quality not clear enough for a technical guide,
thanks to image optimization in 2018, we can get around these problems.
{:.caption}

1. Launch [ScreenFlow](https://www.telestream.net/screenflow/overview.htm)
1. Set recording settings with the following:
  * Record Desktop / iOS Device from `DEVICE NAME`.
  * Disable Record Video.
  * Disable Record Audio.
  * Disable Record Computer Audio.
1. Set additional options:
  * Record Desktop Framerate: `Highest`.
  * Timeline Framerate: `30 fps`.
1. Click the **Record** button.
  * You can also start / stop the recording using the shortcut: `Shift` + `CMD` + `2`.
1. Perform the 10-15 second action.
1. Click the camera icon in your menu bar and click **Stop recording**.
1. Crop and edit your video.
  * You can emphasize click events under the Callout settings.
  * Need to show what keys are being pressed? Enable them in Screen Recording ->
    Keyboard -> Show Keystrokes.
1. Export your video from File -> Export using the following:
  * Type: `Automatic`.
  * Encoding Quality: `Slowest`.
  * Resolution: `1920 x 1080`.
  * Disable `Letterbox Content`.
1. Launch [Gifski]()
1. Drag your exported video into Gifski.
1. Export a Gif using the following:
  * Size: `800 x 450`.
  * FPS: `30`.
  * Quality: `100`.
  * Your Gif should be < 50MB, play with the settings if necessary.


## Pre-launch checklist

We've shipped our fair share of guides that had easy typos and broken links.
Please launch with care and love.

1. Do all of the links work as intended?
1. Has someone else walked through the tutorial and proofread?

