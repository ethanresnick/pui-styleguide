# Dropdowns

## Examples

```jsx
::title=Basic dropdown
::description=This is the basic dropdown. It has an attached menu that extends from the bottom.
<Dropdown title='Basic Dropdown'>
  <DropdownItem href="#">lorem ipsum</DropdownItem>
  <DropdownItem href="#">lorem ipsum</DropdownItem>
  <DropdownItem href="#">lorem ipsum</DropdownItem>
</Dropdown>
```

```jsx
::title=Basic dropdown with custom icon
<Dropdown title='Basic Dropdown Custom Icon' icon='more_vert'>
  <DropdownItem href="#">lorem ipsum</DropdownItem>
  <DropdownItem href="#">lorem ipsum</DropdownItem>
  <DropdownItem href="#">lorem ipsum</DropdownItem>
</Dropdown>
```

```jsx
::title=Float dropdown menu
::description=The float dropdown menu is spaced 2px below the toggle. It can also be pinned to the left or right for content that exceeds the parent dropdown width.
<Grid>
  <FlexCol fixed>
  <Dropdown title='Float Dropdown Menu' floatMenu>
    <DropdownItem href="#">lorem ipsum</DropdownItem>
    <DropdownItem href="#">lorem ipsum</DropdownItem>
    <DropdownItem href="#">lorem ipsum</DropdownItem>
  </Dropdown>
  </FlexCol>

  <FlexCol fixed>
  <Dropdown title='Pinned Left' floatMenu menuAlign='left'>
    <DropdownItem href="#">Note that this option exceeds the width of the parent dropdown toggle</DropdownItem>
    <DropdownItem href="#">lorem ipsum</DropdownItem>
    <DropdownItem href="#">lorem ipsum</DropdownItem>
 </Dropdown>
 </FlexCol>

  <FlexCol fixed>
  <Dropdown title='Pinned Right' floatMenu menuAlign='right'>
    <DropdownItem href="#">lorem ipsum</DropdownItem>
    <DropdownItem href="#">lorem ipsum</DropdownItem>
    <DropdownItem href="#">lorem ipsum</DropdownItem>
 </Dropdown>
 </FlexCol>
</Grid>
```

```jsx
::title=Float scroll menu
::description=Lists that are indeterminately long can utilize the float scroll menu. The size is fixed so you'll have to customize the fixed height to achieve your desired results.
<Dropdown title='Float Scroll Menu' scroll floatMenu>
  <DropdownItem href="#">lorem ipsum</DropdownItem>
  <DropdownItem href="#">lorem ipsum</DropdownItem>
  <DropdownItem href="#">lorem ipsum</DropdownItem>
  <DropdownItem href="#">lorem ipsum</DropdownItem>
  <DropdownItem href="#">lorem ipsum</DropdownItem>
  <DropdownItem href="#">lorem ipsum</DropdownItem>
  <DropdownItem href="#">lorem ipsum</DropdownItem>
  <DropdownItem href="#">lorem ipsum</DropdownItem>
  <DropdownItem href="#">lorem ipsum</DropdownItem>
  <DropdownItem href="#">lorem ipsum</DropdownItem>
</Dropdown>
```

```jsx
::title=Split dropdown
::description=Action with additional actions hidden in a dropdown. Note the position of the label, in order to style the focused state. Only appropriate as a float menu.
<Dropdown title='Split Dropdown' split>
  <DropdownItem href="#">lorem ipsum</DropdownItem>
  <DropdownItem href="#">lorem ipsum</DropdownItem>
  <DropdownItem href="#">lorem ipsum</DropdownItem>
</Dropdown>
```

```jsx
::title=Flat button dropdown
::description=Dropdown with the flat button styling. Floating menu only.
<Dropdown title='Flat Button Dropdown' flat>
  <DropdownItem href="#">lorem ipsum</DropdownItem>
  <DropdownItem href="#">lorem ipsum</DropdownItem>
  <DropdownItem href="#">lorem ipsum</DropdownItem>
</Dropdown>
```

```jsx
::title=Link dropdown
::description=Dropdown with the link styling, retains dropdown padding. Floating menu only.
<Dropdown title='Link Dropdown' link>
  <DropdownItem href="#">lorem ipsum</DropdownItem>
  <DropdownItem href="#">lorem ipsum</DropdownItem>
  <DropdownItem href="#">lorem ipsum</DropdownItem>
</Dropdown>
```

```jsx
::title=Icon dropdown
::description=Rendered when no title is specified. Floating menu only.
<Dropdown icon='more_vert' menuAlign='left'>
  <DropdownItem href="#">lorem ipsum</DropdownItem>
  <DropdownItem href="#">lorem ipsum</DropdownItem>
  <DropdownItem href="#">lorem ipsum</DropdownItem>
</Dropdown>
```

```jsx
::title=Sizing
<div>
  <Dropdown title='Large Dropdown' size='large'>
    <DropdownItem href="#">lorem ipsum</DropdownItem>
    <DropdownItem href="#">lorem ipsum</DropdownItem>
    <DropdownItem href="#">lorem ipsum</DropdownItem>
  </Dropdown>
  <Dropdown title='Normal Dropdown'>
    <DropdownItem href="#">lorem ipsum</DropdownItem>
    <DropdownItem href="#">lorem ipsum</DropdownItem>
    <DropdownItem href="#">lorem ipsum</DropdownItem>
  </Dropdown>
  <Dropdown title='Small Dropdown' size='small'>
    <DropdownItem href="#">lorem ipsum</DropdownItem>
    <DropdownItem href="#">lorem ipsum</DropdownItem>
    <DropdownItem href="#">lorem ipsum</DropdownItem>
  </Dropdown>
</div>
```

## Installation & Usage

#### React
`npm install babel-loader react-svg-loader --save-dev`

`npm install pivotal-ui --save`

`import {Dropdown, DropdownItem} from 'pivotal-ui/react/dropdowns';`

#### CSS Only
`npm install pivotal-ui --save`

`import * as Dropdowns from 'pivotal-ui/css/dropdowns';`

## Dropdown Props

Property         | Required | Type                                | Default        | Description
-----------------|----------|-------------------------------------|----------------|------------
blockingScrim    | no       | Boolean                             | false          | If true, blocks mouse events outside of the dropdown. Clicking outside of the dropdown will still close the dropdown.
buttonAriaLabel  | no       | String                              |                | aria-label for the button
buttonClassName  | no       | String                              |                | Classname to add to the button
closeOnMenuClick | no       | Boolean                             | true           | If false, do not close the menu when clicking in the dropdown menu
disableScrim     | no       | Boolean                             | false          | If true, do not close the menu when clicking outside the dropdown
flat             | no       | Boolean                             |                | If true, dropdown toggle has no borders and is transparent
floatMenu        | no       | Boolean                             | false          | If true, float the dropdown menu. This only applies to the basic dropdown
href             | no       | String                              |                | Link for the default option (split dropdown only)
icon             | no       | String                              | 'chevron_down' | Name of the svg to use for the toggle icon
link             | no       | Boolean                             |                | If true, color the dropdown toggle like a link
labelAriaLabel   | no       | String                              |                | aria-label for the label (split dropdown only)
menuAlign        | no       | oneOf(['none', 'left', 'right'])    | 'none'         | Sets the alignment of the menu with the button
onClick          | no       | Function                            |                | Callback that fires after clicking the button
onEntered        | no       | Function                            |                | Callback that fires after opening the dropdown
onExited         | no       | Function                            |                | Callback that fires after closing the dropdown
onSelect         | no       | Function                            |                | Callback that fires after clicking the default option (split dropdown only)
onSplitClick     | no       | Function                            |                | Callback that fires after clicking the text (split dropdown only)
scroll           | no       | Boolean                             | false          | Enables scrolling in the dropdown menu when enabled
showIcon         | no       | Boolean                             | true           | If false, do not render an icon in the dropdown toggle. Icon can not be hidden if split or leaving out title.
size             | no       | oneOf(['normal', 'large', 'small']) | 'normal'       | Sets the size
split            | no       | Boolean                             |                | If true, separates the button text from the toggle
splitClassName   | no       | String                              |                | Classname to add to the text (split dropdown only)
title            | no       | Node                                |                | The button contents

(The extra loaders are for the [Iconography](/icons) component.)

## DropdownItems Props

Property         | Required | Type                                | Default        | Description
-----------------|----------|-------------------------------------|----------------|------------
className        | no       | String                              |                | Classes to apply
style            | no       | Object                              |                | Inline style to apply
href             | no       | String                              |                | Link for the DropdownItem option
header           | no       | Boolean                             |                | Makes the DropdownItem of type header
divider          | no       | Boolean                             |                | Makes the DropdownItem of type Divider
disabled         | no       | Boolean                             |                | Disables the DropdownItem
eventKey         | no       | String                              |                | DropdownItem identifier
onSelect         | no       | Function                            |                | Callback that fires after clicking the DropdownItem
