---
layout: toolkit
title: Forms | Skylight Accessibility Guide
description: "How we work with forms"
tags: [accessibility, web accessibility, section 508, guide]
permalink: /work/toolkits/accessibility-guide/forms/
sidenav: accessibility_guide
content_type: Toolkit
toolkit_name: accessibility-guide
---

# Forms

Making forms accessible is a simple process. Each form element should be associated with its instructions and errors, and everything should be accessible via the keyboard.

## Testing

1. Identify each form element.
2. Find all instructions associated with each element.
  * **It's a failure if a form element isn't programatically associated with _all_ instructions. This includes legends, labels, hint text and tooltips.**
  * A common way of achieving this is using `fieldset` and `legend` tags. `Fieldset` is used to group a set of elements. `Legend` is the first child of a `fieldset` tag and provides context for those fields.
3. Ensure all field elements are accessible via the keyboard.
  * **If the form can't be filled out with just a keyboard, this is a failure.**
4. Check for title attributes
  * Title attributes can be a substitute for labels.
  * **If the title attributes provides all the related information it passes, if it provides extra information it fails.**
  * Title attributes aren't accessible via keyboard.

## Examples

{:.passes}
### Passes

<fieldset class="accessibility-fieldset form-group col-sm-8">
  <div class="row">
    <legend class="accessibility-legendcol-form-label col-sm-2 pt-0">Name</legend>
    <div class="col-sm-8">
      <div class="form-group">
        <label for="firstname">First</label>
        <input class="form-control" type="text" id="firstname">
      </div>
      <div class="form-group">
        <label for="lastname">Last</label>
        <input class="form-control" type="text" id="lastname">
      </div>
    </div>
  </div>
</fieldset>

<fieldset class="accessibility-fieldset form-group col-sm-8">
  <div class="row">
    <legend class="accessibility legend col-form-label col-sm-3 pt-0">Favorite Soup?</legend>
    <div class="col-sm-9">
      <div class="form-check">
        <input class="form-check-input" type="radio" name="soup" value="pea" id="peasoup" title="Pea Soup">
        <label class="form-check-label" for="peasoup">Pea Soup</label>
      </div>
      <div class="form-check">
        <input class="form-check-input"  type="radio" name="soup" value="chicken" id="chicken" title="Chicken Noodle">
        <label class="form-check-label" for="chicken">Chicken Noodle</label>
      </div>
      <div class="form-check">
        <input class="form-check-input" type="radio" name="soup" value="tomato" id="tomato" title="Tomato">
        <label class="form-check-label" for="tomato">Tomato</label>
      </div>
    </div>
  </div>
</fieldset>

<div class="callout--alt" markdown='1'>
#### Note
Code examples do not include styling markup for clarity of the technique being explained.
</div>

```html
<fieldset>
  <legend>Name</legend>
  <label for="firstname">First</label>
  <input type="text" id="firstname"><br>
  <label for="lastname">Last</label>
  <input type="text" id="lastname">
</fieldset>

<fieldset>
  <legend>Favorite Soup?</legend>
  <input type="radio" name="soup" value="pea" id="peasoup" title="Pea Soup"><label for="peasoup">Pea Soup</label>
  <input type="radio" name="soup" value="chicken" id="chicken" title="Chicken Noodle"><label for="chicken">Chicken Noodle</label>
  <input type="radio" name="soup" value="tomato" id="tomato" title="Tomato"><label for="tomato">Tomato</label>
</fieldset>
```

> #### First and Last Name Form
> Each form element has a ```label```, and it's associated with the ```for``` attribute. The ```for``` attribute refers to the ```id``` of the ```input```. When looking at this form, "First" and "Last" wouldn't make sense without "Name." This is associated with the ```fieldset``` and ```legend```. All elements are wrapped in a ```fieldset```. There can only be one ```legend``` tag per ```fieldset```. Anything in the ```legend``` tag will be associated.

> #### Favorite Soup Form
> ```Fieldset``` and ```legend``` is often used for radio buttons as its the easiest way to associate the radio buttons with the question. Notice there are no ```label```s for the radio buttons, but each button has a ```title``` attribute for assistive technology to read.

{:.fails}
### Fails

<fieldset class="accessibility-fieldset form-group col-sm-8">
  <div class="row">
    <legend class="accessibility-legend col-form-label col-sm-2 pt-0">Name</legend>
    <div class="col-sm-8">
      <div class="form-group">
        <label for="first_name-2">First</label>
        <input class="form-control" type="text" id="firstname-2">
      </div>
      <div class="form-group">
        <label for="1lastname">Last</label>
        <input class="form-control" type="text" id="1lastname">
      </div>
    </div>
  </div>
</fieldset>

<fieldset class="accessibility-fieldset form-group col-sm-8">
  <div class="row">
    <div class="col-sm-2"></div>
    <div class="col-sm-10">
      <span style="color:#990000;">This Question Is Required</span>
    </div>
    <legend class="accessibility-legend col-form-label col-sm-3 pt-0">Favorite Soup?</legend>
    <div class="col-sm-9">
      <div class="form-check">
        <input class="form-check-input" type="radio" name="soup" value="pea" id="pea-2" title="Chick Pea Soup">
        <label class="form-check-label" for="pea-2">Pea Soup</label>
      </div>
      <div class="form-check">
        <input class="form-check-input" type="radio" name="soup" value="chicken" id="chicken-2" title="Chicken Noodle">
        <label class="form-check-label" for="chicken-2">Chicken Noodle</label>
      </div>
      <div class="form-check">
        <input class="form-check-input" type="radio" name="soup" value="tomato" id="tomato-2" title="Tomato">
        <label class="form-check-label" for="tomato-2">Tomato</label>
      </div>
    </div>
  </div>
</fieldset>
<br>

```html
<fieldset>
  <legend>Name</legend>
  <label for="first_name-2">First</label>
  <input type="text" id="firstname-2">
  <label for="1lastname">Last</label>
  <input type="text" id="1lastname">
</fieldset>

<fieldset>
  <legend>Favorite Soup?</legend>
  <span style="color:#990000;">This Question Is Required</span>
  <input type="radio" name="soup" value="pea" id="pea-2" title="Chick Pea Soup"><label for="pea-2">Pea Soup</label>
  <input type="radio" name="soup" value="chicken" id="chicken-2" title="Chicken Noodle"><label for="chicken-2">Chicken Noodle</label>
  <input type="radio" name="soup" value="tomato" id="tomato-2" title="Tomato"><label for="tomato-2">Tomato</label>
</fieldset>
<br>
```

> #### Failing Elements
> - First name label ```for``` and ```id``` don't match.
> - Last name has an invalid ```id```.
> - "This Question Is Required" isn't associated with the form fields.
> - The ```title``` tag for Pea Soup indicates it's "Chick Pea Soup." This information isn't available to keyboard, sighted users.

### How ARIA affects form inputs

Screen readers vary on what they read and the additional information they provide by default. This is a broad summary of what's read based on VoiceOver for Mac OSX.

You can test these with your own screen reader. If you have a OSX you can turn VoiceOver on by hitting command+F5.

<div class="callout--alt" markdown='1'>
#### Further Information
Using `aria-label` or `aria-labelledby` will cause a screen reader to only read them and not the default label. If you want an input to read from multiple things like an error message, use `aria-labelledby` and pass it the `for` attribute of the label and any additional `id`s you want read. For example: `aria-labelledby="car1 car_description car-error-message"`.
</div>

#### No ARIA

Reads just the `label` and not the description.

<div class="form-group col-sm-5">
  <label for="car_1">Car</label>
  <input class="form-control" type="text" id="car_1"/><br/>
  <span id="carmakedescription"><i>Please enter Make and Model</i></span>
</div>

```html
<label for="car_1">Car</label>
<input type="text" id="car_1"/><br/>
<span id="carmakedescription_1"><i>Please enter Make and Model</i></span>
```

**Screen reader reads input as:** `Car Edit text`
<hr>

#### With aria-label

Reads the `aria-label` and doesn't read the normal `label`.

<div class="form-group col-sm-5">
  <label for="car_2">Car</label>
  <input class="form-control" type="text" id="car_2" aria-label="Car, please enter make and model" /><br/>
  <span id="carmakedescription_2"><i>Please enter Make and Model</i></span>
</div>

```html
<label for="car_2">Car</label>
<input type="text" id="car_2" aria-label="Car, please enter make and model" /><br/>
<span id="carmakedescription_2"><i>Please enter Make and Model</i></span>
```

**Screen reader reads input as:** `Car, please enter make and model Edit text`

<hr>

#### With aria-labelledby pointing at `carmakedescription`

Reads only the `aria-labelledby` attribute and not the default label.

<div class="form-group col-sm-5">
  <label for="car_3">Car</label>
  <input class="form-control" type="text" id="car_3" aria-labelledby="carmakedescription_3" /><br/>
  <span id="carmakedescription_3"><i>Please enter Make and Model</i></span>
</div>

```html
<label for="car_3">Car</label>
<input type="text" id="car_3" aria-labelledby="carmakedescription_3" /><br/>
<span id="carmakedescription_3"><i>Please enter Make and Model</i></span>
```

**Screen reader reads input as:** `Please enter Make and Model Edit text`
<hr>

#### With aria-labelledby pointing at `carlabel carmakedescription`

Reads both labels indicated by the `aria-labelledby` attribute.

<div class="form-group col-sm-5">
  <label for="car_4" id="carlabel_4">Car</label>
  <input class="form-control" type="text" id="car_4" aria-labelledby="carlabel_4 carmakedescription_4" /><br/>
  <span id="carmakedescription_4"><i>Please enter Make and Model</i></span>
</div>

```html
<label for="car_4" id="carlabel_4">Car</label>
<input type="text" id="car_4" aria-labelledby="carlabel_4 carmakedescription_4" /><br/>
<span id="carmakedescription_4"><i>Please enter Make and Model</i></span>
```

**Screen reader reads input as:** `Car Please enter Make and Model Edit text`
<hr>

#### With aria-describedby pointing at `carmakedescription`

Jaws reads both the label and the description. So does VoiceOver, but there's a slight delay before it reads the description.

<div class="form-group col-sm-5">
  <label for="car_5">Car</label>
  <input class="form-control" type="text" id="car_5" aria-describedby="carmakedescription_5" />
  <br/>
  <span id="carmakedescription_5"><i>Please enter Make and Model</i></span>
</div>

```html
<label for="car_5">Car</label>
<input type="text" id="car_5" aria-describedby="carmakedescription_5" /><br/>
<span id="carmakedescription_5"><i>Please enter Make and Model</i></span>
```

**Screen reader reads input as:** `Car Edit text Please enter Make and Model`
<hr>
