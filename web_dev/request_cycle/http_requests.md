# RELEASE 0
### 400 Error Series: Client Side

#### 400 Bad Request
Displayed when an application, like a browser, has incorrectly accessed the web-server or when the request is corrupted.

#### 401 Unauthroized
When a website visitor attempts to access a restricted site when s/he is not authorized to do so  (failed log in attempt).

#### 403 Forbidden
This is similar to an unauthroized (401) error message, except there was no opportunity to login.  This error can take place when you are tying to access a directoy on a website that you do not have access to.

#### 404 Not Found
This is displayed when trying to access a website that does not exist.  Causes of this type of error can be attribute to any of the following:
* broken links
* URL typo
* for whatever reason, the requested page has been moved or deleted.

### 500 Error Series: Internal Server Error


#### 503 Service Unavailable
This is a general-purpose message for when a web server has encountered some internal error.  For examples: 
*If a web server is overloaded with requests and therefore can't process your request properly.
* Server restarted and is in themiddle of initialization.

#### 504 Gateway Timeout
Sign that there could be a dNS issue, etc.  The proxy server needs to communicate with a secondary webserver, and that is not happening.  Example:
* DNS Issue
* A machine is overly usiness and is taking too long to process the reques
* Router issue.

## What is the difference between a GET request and a POST request? When might each be used?

### GET request: Retrieve something from a Server
GET request is main method to request documents and applications.  This request is used every time you access a website, or when you need to access a resource that is located on a remote server.

### POST request: Send Data to a Server
Post is the prefered method of sending data to a server.  Sending large amounts of data using GET is not practical.

POST requests are commonly sent through  forms.


### Optional bonus question: What is a cookie (the technical kind, not the delicious kind)? How does it relate to HTTP requests?

Cookies are small text files, stored on a local computer, that are used to store information so that a web server can deliver a content that is tailored to a particular user.  Another use of cookies is provide a method to carry information from one visited website to another.

Because this these files are stored on a local computer, and are accessed (read & write) from a server, the file is constantly sending out GET and POST requests in the background.

# RELEASE 1
## What are some of the key design philosophies of the Linux operating system?
### Small is Beautiful & Each Program Does One Thing Well
Being small makes a program fast and because a program focuses on one thing, it does not become bloated.  

### Prototype as Soon as Possible
Due to the open nature of Linux, this allows programs to fail early and fail often, which can exponentially speed up developing a small program that works really well.

### Choose Portability Over Efficiency
Through focusing on the portability of a scrpt, programs will in the long run be more efficient than the an efficient yet bloated program.

### Store Data in Flat Text Files
Increases speed and efficiency.

### Use Software Leverage
Due to the open nature of Linux, there is a wide range of great code out there.  Therefore, it makes absolute sense to leverage existing code, rather than reinvinting the wheel.

### Use Shell Scripts to Increase Leverage and Portability

### Avoid Captive User Interfaces

### Make Every Program a Filter
Each command / program will take an inpt and then 'filters' the data stream by making a change to it so that another program can work with the newly manipulted data.


## In your own words, what is a VPS (virtual private server)? What, according to your research, are the advantages of using a VPS?
Virtual Private Network prives you with a private tunnel thaty protects your privacy when GETTING and POSTING data to a server.  

Advantages of using a VPN include:
* Enhanced security
* Remote access to a secured network to increse productivity 
* Sharing files
* Protecting your privacy
* Accessing blocked websites or bypassing internet filters
* Possible increased performance if your network bandwidth is not optimized due to poor efficieny.
* Once set up, the maintenance cost is very low.  Therefore you may see possible cost savings from protecting your self in other manners.

## Optional bonus question: Why is it considered a bad idea to run programs as the root user on a Linux system?
The root user is the ADMINISTRATIVE ADMINISTRATIVE user, which has absolutely control over the entire operating system.  If you make a istake as a root user, there is absolutely no control/fail safe and your mistake may be irreversible.
