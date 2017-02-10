# Responses to Research Questions

1. How can you center the content of the entire page instead of having it sit to the left? Try it in the responsive-css site if you figure it out in time.

You can create a CSS rule for an element (in this case, I chose the `<main>`), and create a '<max-width>' (in this case I chose 80%), and then tell CSS to center the margins.  [example can be found in the responsive-css site, when the screen goes beyond 960px.]

2. What is mobile-first design?

This design concept is that it is usally more difficult to design a website for a mobile device, so it makes sense to start there.  Once you have designed a site for a smaller screen, it is easier to design for a larger screen.

3. What is the float property in CSS? What are the pros and cons of using the float property instead of the display property?

The purpose of the float property is to allow for text to wrap around elements.  Unlike using the float property, when you position an element using the display properties, the flow of the page remains undisturbed.

Due to the fact that it disturbs the flow of the website, I think that the bulk of website design should be done through an element's display property.  Once the design framework is in place, and if you want to add additional elements, then I can see float being useful.
