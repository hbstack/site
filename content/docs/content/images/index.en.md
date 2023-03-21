+++
title = "Images"
date = 2023-03-13T14:19:06+08:00
draft = false
featured = true
pinned = true
categories = [
  "Content"
]
authors = [
  "RazonYang"
]
tags = [
  "Image",
  "Caption",
  "Resize",
  "Crop",
  "Fill",
  "Fit",
  "Brightness",
  "ColorBalance",
  "Colorize",
  "Contrast",
  "Gamma",
  "GaussianBlur",
  "Grayscale",
  "Hue",
  "Invert",
  "Pixelate",
  "Saturation",
  "Sepia",
  "Sigmoid",
  "UnsharpMask",
]
series = [
  "Docs"
]
nav_weight = 800
+++

This article offers some use cases for showing how to process images via URL query string and fragment, such as resize, crop, fit, fill and align images.

<!--more-->

{{% module "github.com/hugomods/images" %}}

## URL Concepts

The URL syntax as follows.

```abnf
URL = scheme ":" ["//" authority] path ["?" query] ["#" fragment]
```

The query string preceded by a question mark (`?`), and the fragment preceded by a hash (`#`).

This module uses the query string to process images, and use fragment to align images.

{{% bootstrap/clearfix %}}
![Example](featured.jpeg?crop=300x120&brightness=-10#float-end) For example, `![Example](featured.jpeg?crop=300x120&brightness=-10#float-end)`, which crop the image in size `300x120`, change the brightness as `-10` and floating the image to the end (right).
{{% /bootstrap/clearfix %}}

## Image Types

| Type                  | Description                                   | Example                               |
| --------------------- | --------------------------------------------- | ------------------------------------- |
| Site Image Resource | The images located in the `assets` directory. | `/images/foo.png`                     |
| Page Image Resource   | The images located in the page's directory.   | `bar.png`                             |
| Static Image          | The images located in the `static` directory. | `images/fizz.png`                     |
| External Image        | The external image.                           | `https://example.com/images/buzz.png` |

The image resources begin with a leading slash `/` will be treated as a site image resource.

Most of the processing methods work only on image resources, except for alignment and resizing.

## Aligning Images

We can easily align images by adding URL fragments. Such as `#center`, `#float-start` and `#float-end` represents align center, float start and float end respectively.

### Aligning Images to Center

Adding the `#center` fragment for aligning images to the center.

For example: `![Center](featured.jpeg#center)`.

![Center](featured.jpeg?crop=200x100#center)

### Floating Images to Start (Left)

{{% bootstrap/clearfix %}}
![Float Start](featured.jpeg?crop=200x100#float-start) Adding the `#float-start` fragment for floating images to the start, we have to wrap it inside `bootstrap/clearfix` shortcode to avoid breaking the layout. Please note that use `%%` instead of `<>` to render content as Markdown fully.
{{% /bootstrap/clearfix %}}

For example.

```markdown
{{%/* bootstrap/clearfix */%}}
![Float Start](featured.jpeg#float-start) TEXTS AROUNDS THE IMAGE.
{{%/* /bootstrap/clearfix */%}}
```

### Floating Images to End (Right)

{{% bootstrap/clearfix %}}
![Float End](featured.jpeg?crop=200x100#float-end) Similarly, we can also float images to the end by adding the `#float-end` fragment.
{{% /bootstrap/clearfix %}}

For example.

```markdown
{{%/* bootstrap/clearfix */%}}
![Float End](featured.jpeg#float-end) TEXTS AROUNDS THE IMAGE.
{{%/* /bootstrap/clearfix */%}}
```

## Resizing Images

We use the URL query of image for resizing images. For example:

### Specify the Width and Preserve Ratio

```markdown
![Resize](featured.jpeg?width=300px)
```

![Resize](featured.jpeg?width=300px)

### Specify the Height and Preserve Ratio

```markdown
![Resize](featured.jpeg?height=180px)
```

![Resize](featured.jpeg?height=180px)

### Specify the Width and Height

```markdown
![Resize](featured.jpeg?width=300px&height=180px)
```

![Resize](featured.jpeg?width=300px&height=160px)

{{< bootstrap/alert >}}
{{< markdownify >}}
The original size of the images will not be changed, except the **image resources**.
{{< /markdownify >}}
{{< /bootstrap/alert >}}

## Cropping Images

Crop an image to match the given dimensions without resizing. You must provide both width and height. Use the anchor[^1] option to change the crop box anchor point.

```markdown
![Crop Image](featured.jpeg?crop=[width]x[height],[anchor])
```

- The size `[width]x[height]` is required.
- `[anchor]` is optional.

[^1]: When using the `Crop` or `Fill` method, the anchor determines the placement of the crop box. You may specify `TopLeft`, `Top`, `TopRight`, `Left`, `Center`, `Right`, `BottomLeft`, `Bottom`, `BottomRight`, or `Smart`. The default value is `Smart`.

|                                   Examples                                    |                                                                       |                                                                                 |
| :---------------------------------------------------------------------------: | :-------------------------------------------------------------------: | :-----------------------------------------------------------------------------: |
|    ![Crop Image](featured.jpeg?crop=200x200,TopLeft "crop=200x200,TopLeft")    |    ![Crop Image](featured.jpeg?crop=200x200,Top "crop=200x200,Top")    |    ![Crop Image](featured.jpeg?crop=200x200,TopRight "crop=200x200,TopRight")    |
|       ![Crop Image](featured.jpeg?crop=200x200,Left "crop=200x200,Left")       | ![Crop Image](featured.jpeg?crop=200x200,Center "crop=200x200,Center") |       ![Crop Image](featured.jpeg?crop=200x200,Right "crop=200x200,Right")       |
| ![Crop Image](featured.jpeg?crop=200x200,BottomLeft "crop=200x200,BottomLeft") | ![Crop Image](featured.jpeg?crop=200x200,Bottom "crop=200x200,Bottom") | ![Crop Image](featured.jpeg?crop=200x200,BottomRight "crop=200x200,BottomRight") |

## Fill Images

Crop and resize an image to match the given dimensions. You must provide both width and height. Use the anchor[^1] option to change the crop box anchor point.

```markdown
![Fill Image](featured.jpeg?fill=[width]x[height],[anchor])
```

- The size `[width]x[height]` is required.
- `[anchor]` is optional.

|                                   Examples                                    |                                                                       |                                                                                 |
| :---------------------------------------------------------------------------: | :-------------------------------------------------------------------: | :-----------------------------------------------------------------------------: |
|    ![Fill Image](featured.jpeg?fill=150x200,TopLeft "fill=150x200,TopLeft")    |    ![Fill Image](featured.jpeg?fill=150x200,Top "fill=150x200,Top")    |    ![Fill Image](featured.jpeg?fill=150x200,TopRight "fill=150x200,TopRight")    |
|       ![Fill Image](featured.jpeg?fill=150x200,Left "fill=150x200,Left")       | ![Fill Image](featured.jpeg?fill=150x200,Center "fill=150x200,Center") |       ![Fill Image](featured.jpeg?fill=150x200,Right "fill=150x200,Right")       |
| ![Fill Image](featured.jpeg?fill=150x200,BottomLeft "fill=150x200,BottomLeft") | ![Fill Image](featured.jpeg?fill=150x200,Bottom "fill=150x200,Bottom") | ![Fill Image](featured.jpeg?fill=150x200,BottomRight "fill=150x200,BottomRight") |

## Fitting Images

Downscale an image to fit the given dimensions while maintaining aspect ratio. You must provide both width and height.

```markdown
![Fit Image](featured.jpeg?fit=[width]x[height])
```

![Fit Image](featured.jpeg?fit=200x100)

## Image Filters

### Brightness

The `brightness` must be in range `(-100, 100)`.

```markdown
![Image Brightness](featured.jpeg?brightness=-30)
```

![Image Brightness](featured.jpeg?fit=200x200&brightness=-30)

### ColorBalance

ColorBalance creates a filter that changes the color balance of an image. The percentage parameters for each color channel (red, green, blue) must be in range `(-100, 500)`.

```markdown
![Image ColorBalance](featured.jpeg?colorBalance=-50,50,150)
```

![Image ColorBalance](featured.jpeg?fit=200x200&colorBalance=-50,50,150)

### Colorize

Colorize creates a filter that produces a colorized version of an image. The hue parameter is the angle on the color wheel, typically in range `(0, 360)`. The saturation parameter must be in range `(0, 100)`. The percentage parameter specifies the strength of the effect, it must be in range `(0, 100)`.

```markdown
![Image Colorize](featured.jpeg?colorize=-100,50,150)
```

![Image Colorize](featured.jpeg?fit=200x200&colorize=100,50,150)

### Contrast

The `contrast` must be in range `(-100, 100)`.

```markdown
![Image Contrast](featured.jpeg?contrast=50)
```

![Image Contrast](featured.jpeg?fit=200x200&contrast=50)

### Gamma

Gamma creates a filter that performs a gamma correction on an image. The gamma parameter must be positive. Gamma = 1 gives the original image. Gamma less than 1 darkens the image and gamma greater than 1 lightens it.

```markdown
![Image Gamma](featured.jpeg?gamma=2)
```

![Image Gamma](featured.jpeg?fit=200x200&gamma=2)

### GaussianBlur

Applies a gaussian blur to an image.

```markdown
![Image GaussianBlur](featured.jpeg?gaussianBlur=2)
```

![Image GaussianBlur](featured.jpeg?fit=200x200&gaussianBlur=2)

### Grayscale

Grayscale creates a filter that produces a grayscale version of an image.

```markdown
![Image Grayscale](featured.jpeg?grayscale)
```

![Image Grayscale](featured.jpeg?fit=200x200&grayscale)

### Hue

Hue creates a filter that rotates the hue of an image. The hue angle shift is typically in range `-180` to `180`.

```markdown
![Image Hue](featured.jpeg?hue=90)
```

![Image Hue](featured.jpeg?fit=200x200&hue=90)

### Invert

Invert creates a filter that negates the colors of an image.

```markdown
![Image Invert](featured.jpeg?invert)
```

![Image Invert](featured.jpeg?fit=200x200&invert)

### Pixelate

Pixelate creates a filter that applies a pixelation effect to an image.

```markdown
![Image Pixelate](featured.jpeg?pixelate=8)
```

![Image Pixelate](featured.jpeg?fit=200x200&pixelate=8)

### Saturation

Saturation creates a filter that changes the saturation of an image.

```markdown
![Image Saturation](featured.jpeg?saturation=100)
```

![Image Saturation](featured.jpeg?fit=200x200&saturation=100)

### Sepia

Sepia creates a filter that produces a sepia-toned version of an image.

```markdown
![Image Sepia](featured.jpeg?sepia=200)
```

![Image Sepia](featured.jpeg?fit=200x200&sepia=200)

### Sigmoid

Sigmoid creates a filter that changes the contrast of an image using a sigmoidal function and returns the adjusted image. It’s a non-linear contrast change useful for photo adjustments as it preserves highlight and shadow detail.

```markdown
![Image Sigmoid](featured.jpeg?sigmoid=2,5)
```

![Image Sigmoid](featured.jpeg?fit=200x200&sigmoid=2,5)

### UnsharpMask

UnsharpMask creates a filter that sharpens an image. The sigma parameter is used in a gaussian function and affects the radius of effect. Sigma must be positive. Sharpen radius roughly equals 3 \* sigma. The amount parameter controls how much darker and how much lighter the edge borders become. Typically between `0.5` and `1.5`. The threshold parameter controls the minimum brightness change that will be sharpened. Typically between `0` and `0.05`.

```markdown
![Image UnsharpMask](featured.jpeg?unsharpMask=10,1,0.05)
```

![Image UnsharpMask](featured.jpeg?fit=400x300&unsharpMask=10,1,0.05)

## Examples

![Static Example](images/featured/hb-background-image.webp?height=200px&width=200px)

![External Example](https://images.pexels.com/photos/270637/pexels-photo-270637.jpeg?auto=compress&cs=tinysrgb&w=504&h=320&dpr=1&width=504px&height=320px)

![SVG Example](https://simpleicons.org/icons/hugo.svg?width=100px&height=100px)
