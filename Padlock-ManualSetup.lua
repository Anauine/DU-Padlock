--[[Place in System > actionstart(option1)]]--
key = ""

--[[Place in Unit > Start]]--
key = ""
password = "5327" --export
unit.setTimer("loading",0.2)
unit.setTimer("tick",2)

--[[Place in Unit > Stop]]--
screen.setHTML([[
<svg width="700" height="700" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 50 120" preserveAspectRatio="xMidYMid" class="lds-ripple" style="background:0 0"><circle cx="50" cy="50" r="4.719" fill="none" stroke="#1d3f72" stroke-width="2"><animate attributeName="r" calcMode="spline" values="0;40" keyTimes="0;1" dur="3" keySplines="0 0.2 0.8 1" begin="-1.5s" repeatCount="indefinite"/><animate attributeName="opacity" calcMode="spline" values="1;0" keyTimes="0;1" dur="3" keySplines="0.2 0 0.8 1" begin="-1.5s" repeatCount="indefinite"/></circle><circle cx="50" cy="50" r="27.591" fill="none" stroke="#5699d2" stroke-width="2"><animate attributeName="r" calcMode="spline" values="0;40" keyTimes="0;1" dur="3" keySplines="0 0.2 0.8 1" begin="0s" repeatCount="indefinite"/><animate attributeName="opacity" calcMode="spline" values="1;0" keyTimes="0;1" dur="3" keySplines="0.2 0 0.8 1" begin="0s" repeatCount="indefinite"/></circle></svg>
]])

--[[Place in Unit > tick(tick)--]]
unit.stopTimer("loading")
screen.clear()
unit.setTimer("screen",0.2)
unit.stopTimer("tick")

--[[Place in Unit > tick(loading)--]]
screen.setHTML([[
<svg width="700" height="700" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 50 120" preserveAspectRatio="xMidYMid" class="lds-ripple" style="background:0 0"><circle cx="50" cy="50" r="4.719" fill="none" stroke="#1d3f72" stroke-width="2"><animate attributeName="r" calcMode="spline" values="0;40" keyTimes="0;1" dur="3" keySplines="0 0.2 0.8 1" begin="-1.5s" repeatCount="indefinite"/><animate attributeName="opacity" calcMode="spline" values="1;0" keyTimes="0;1" dur="3" keySplines="0.2 0 0.8 1" begin="-1.5s" repeatCount="indefinite"/></circle><circle cx="50" cy="50" r="27.591" fill="none" stroke="#5699d2" stroke-width="2"><animate attributeName="r" calcMode="spline" values="0;40" keyTimes="0;1" dur="3" keySplines="0 0.2 0.8 1" begin="0s" repeatCount="indefinite"/><animate attributeName="opacity" calcMode="spline" values="1;0" keyTimes="0;1" dur="3" keySplines="0.2 0 0.8 1" begin="0s" repeatCount="indefinite"/></circle></svg>
]])

--[[Place in Unit > tick(exit)--]]
  screen.setHTML([[
    <svg width="700" height="700" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 50 120" preserveAspectRatio="xMidYMid" class="lds-ripple" style="background:0 0"><circle cx="50" cy="50" r="4.719" fill="none" stroke="#1d3f72" stroke-width="2"><animate attributeName="r" calcMode="spline" values="0;40" keyTimes="0;1" dur="3" keySplines="0 0.2 0.8 1" begin="-1.5s" repeatCount="indefinite"/><animate attributeName="opacity" calcMode="spline" values="1;0" keyTimes="0;1" dur="3" keySplines="0.2 0 0.8 1" begin="-1.5s" repeatCount="indefinite"/></circle><circle cx="50" cy="50" r="27.591" fill="none" stroke="#5699d2" stroke-width="2"><animate attributeName="r" calcMode="spline" values="0;40" keyTimes="0;1" dur="3" keySplines="0 0.2 0.8 1" begin="0s" repeatCount="indefinite"/><animate attributeName="opacity" calcMode="spline" values="1;0" keyTimes="0;1" dur="3" keySplines="0.2 0 0.8 1" begin="0s" repeatCount="indefinite"/></circle></svg>
    ]])
unit.exit()

--[[Place in Unit > tick(screen)--]]
xpos = screen.getMouseX()
ypos = screen.getMouseY()
mouseclick = screen.getMouseState()

if key == password then
key = ""
door.toggle()
unit.stopTimer("screen")
unit.setTimer("exit",0.2)
end

if xpos >= 0.5 and xpos <= 0.616 and ypos >= 0.256 and ypos <= 0.45 then
button1Color = "red"
if mouseclick == 1 then
unit.setTimer("screen",0.2)
key = key .. 1
end
else
button1Color = "black"
end

if xpos >= 0.629 and xpos <= 0.745 and ypos >= 0.256 and ypos <= 0.45 then
button2Color = "red"
if mouseclick == 1 then
unit.setTimer("screen",0.2)
key = key .. 2
end    
else
button2Color = "black"
end

if xpos >= 0.754 and xpos <= 0.87 and ypos >= 0.256 and ypos <= 0.45 then
button3Color = "red"
if mouseclick == 1 then
unit.setTimer("screen",0.2)
key = key .. 3
end
else
button3Color = "black"
end

if xpos >= 0.5 and xpos <= 0.616 and ypos >= 0.469 and ypos <= 0.66 then
button4Color = "red"
if mouseclick == 1 then
unit.setTimer("screen",0.2)
key = key .. 4
end
else
button4Color = "black"
end

if xpos >= 0.629 and xpos <= 0.745 and ypos >= 0.469 and ypos <= 0.66 then
button5Color = "red"
if mouseclick == 1 then
unit.setTimer("screen",0.2)
key = key .. 5
end
else
button5Color = "black"
end

if xpos >= 0.754 and xpos <= 0.87 and ypos >= 0.469 and ypos <= 0.66 then
button6Color = "red"
if mouseclick == 1 then
unit.setTimer("screen",0.2)
key = key .. 6
end
else
button6Color = "black"
end

if xpos >= 0.5 and xpos <= 0.616 and ypos >= 0.68 and ypos <= 0.873 then
button7Color = "red"
if mouseclick == 1 then
unit.setTimer("screen",0.2)
key = key .. 7
end
else
button7Color = "black"
end

if xpos >= 0.629 and xpos <= 0.745 and ypos >= 0.68 and ypos <= 0.873 then
button8Color = "red"
if mouseclick == 1 then
unit.setTimer("screen",0.2)
key = key .. 8
end
else
button8Color = "black"
end

if xpos >= 0.754 and xpos <= 0.87 and ypos >= 0.68 and ypos <= 0.873 then
button9Color = "red"
if mouseclick == 1 then
unit.setTimer("screen",0.2)
key = key .. 9
end
else
button9Color = "black"
end

screen.setHTML([[
     <!-- Keypad -->
<svg width="900" height="600" viewBox="-450 -150 800 600">
   <text id="xpos_text" style="fill:white;font-family:Arial;font-size:60px;" x="-450" y="-80" > Key: ]]..key..[[</text>
 <!-- <text id="xpos_text" style="fill:white;font-family:Arial;font-size:30px;" x="-450" y="-50" > Password: ]]..password..[[</text> -->

   <circle cx="70" cy="70" r="60" stroke="gray" stroke-width="4" fill="]]..button1Color..[[" />
   <text x="50" y="85" fill="white" font-size="60" >1</text>
   <circle cx="70" cy="200" r="60" stroke="gray" stroke-width="4" fill="]]..button4Color..[[" />
   <text x="50" y="215" fill="white" font-size="60" >4</text>
   <circle cx="70" cy="330" r="60" stroke="gray" stroke-width="4" fill="]]..button7Color..[[" />
   <text x="50" y="345" fill="white" font-size="60" >7</text>
   
   <circle cx="200" cy="70" r="60" stroke="gray" stroke-width="4" fill="]]..button2Color..[[" />
   <text x="180" y="85" fill="white" font-size="60" >2</text>
   <circle cx="200" cy="200" r="60" stroke="gray" stroke-width="4" fill="]]..button5Color..[[" />
   <text x="180" y="215" fill="white" font-size="60" >5</text>
   <circle cx="200" cy="330" r="60" stroke="gray" stroke-width="4" fill="]]..button8Color..[[" />
   <text x="180" y="345" fill="white" font-size="60" >8</text>
   
   <circle cx="330" cy="70" r="60" stroke="gray" stroke-width="4" fill="]]..button3Color..[[" />
   <text x="310" y="85" fill="white" font-size="60" >3</text>
   <circle cx="330" cy="200" r="60" stroke="gray" stroke-width="4" fill="]]..button6Color..[[" />
   <text x="310" y="215" fill="white" font-size="60" >6</text>
   <circle cx="330" cy="330" r="60" stroke="gray" stroke-width="4" fill="]]..button9Color..[[" />
   <text x="310" y="345" fill="white" font-size="60" >9</text>

<!-- Lock Icon -->   
</svg>
    <svg width="1000px" height="1000px" viewBox="-10 -15 100 100" version="1.1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" xmlns:sketch="http://www.bohemiancoding.com/sketch/ns">
    <title>icon 114 lock</title>
    <desc>Created with Sketch.</desc>
    <defs></defs>
    <g id="Page-1" stroke="none" stroke-width="1" fill="none" fill-rule="evenodd" sketch:type="MSPage">
        <g id="icon-114-lock" sketch:type="MSArtboardGroup" fill="#100080">
            <path d="M16,21.9146472 L16,24.5089948 C16,24.7801695 16.2319336,25 16.5,25 C16.7761424,25 17,24.7721195 17,24.5089948 L17,21.9146472 C17.5825962,21.708729 18,21.1531095 18,20.5 C18,19.6715728 17.3284272,19 16.5,19 C15.6715728,19 15,19.6715728 15,20.5 C15,21.1531095 15.4174038,21.708729 16,21.9146472 L16,21.9146472 Z M9,14.0000125 L9,10.499235 C9,6.35670485 12.3578644,3 16.5,3 C20.6337072,3 24,6.35752188 24,10.499235 L24,14.0000125 C25.6591471,14.0047488 27,15.3503174 27,17.0094776 L27,26.9905224 C27,28.6633689 25.6529197,30 23.991212,30 L9.00878799,30 C7.34559019,30 6,28.652611 6,26.9905224 L6,17.0094776 C6,15.339581 7.34233349,14.0047152 9,14.0000125 L9,14.0000125 L9,14.0000125 Z M12,14 L12,10.5008537 C12,8.0092478 14.0147186,6 16.5,6 C18.9802243,6 21,8.01510082 21,10.5008537 L21,14 L12,14 L12,14 L12,14 Z" id="lock" sketch:type="MSShapeGroup"></path>
        </g>
    </g>
</svg>
]])
