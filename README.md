# Natural Scroll

I am using a centos system in work. On other \*nix systems there is an option (Ubuntu for instance) to select natural (or inverse for windows users) scroll in the mouse/device settings.

[![](https://external-content.duckduckgo.com/iu/?u=http%3A%2F%2Fstatic1.businessinsider.com%2Fimage%2F4e28207349e2aeda52240000-480%2Fnatural-scrolling-mac-os-x-lion.jpg)](#)

_Natural scroll:_
Rolling/pushing the mouse **away** from you will scroll the window **DOWN**.  
Rolling/pushing the mouse **towards** from you will scroll the window **UP**.  

_Unnatural scroll:_
Rolling/pushing the mouse **away** from you will scroll the window **UP**.  
Rolling/pushing the mouse **towards** from you will scroll the window **DOWN**.  

The issue is whenever someone tries to show me something on my machine they are conditioned to using **"unnatural"** scrolling.

This handy script can be called from the following alias's:  
```alias unnatural_scroll='/home/<USERNAME>/Documents/./scrolling.sh 1'```  
```alias natural_scroll='/home/<USERNAME>/Documents/./scrolling.sh 0'```  
 
 I can now quickly revert the mouse to a behaviour people are used to and restore it to **"natural"** scrolling afterwards.

_Remember to put the alias's in your user's ~/.bashrc file and to chmod +x the file_

