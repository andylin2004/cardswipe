/// @description Insert description here
// You can write your code in this editor

if (os_browser == browser_not_a_browser)
return;

if (browser_width != width || browser_height != height)
    {
    width = browser_width; //changed line before was min(base_width, browser_width);
    height = browser_height; //changed line before was min(base_height, browser_height);
    scaleCanvas(base_width, base_height, width, height, true);
}