add_CA <- function(g_id, points){
  pth_1 <- newXMLNode("path", attrs = c(style="fill:none;stroke-width:0.75;stroke-linecap:round;stroke-linejoin:round;stroke:rgb(0%,0%,0%);stroke-opacity:1;stroke-miterlimit:10;", 
                               d="M 160.636719 148.492188 L 85.765625 78.800781 L 83.960938 77.363281 L 83.796875 23.273438 ", transform="translate(10,10)"))
  pth_2 <- newXMLNode("path", attrs = c(style="fill:none;stroke-width:0.75;stroke-linecap:round;stroke-linejoin:round;stroke:rgb(0%,0%,0%);stroke-opacity:1;stroke-miterlimit:10;",
                                        d="M 160.636719 148.492188 L 85.765625 78.800781 L 83.960938 77.363281 L 83.796875 23.273438 ", transform="translate(10,10)"))
  pth_3 <- newXMLNode("path", attrs = c(style="fill:none;stroke-width:0.75;stroke-linecap:round;stroke-linejoin:round;stroke:rgb(0%,0%,0%);stroke-opacity:1;stroke-miterlimit:10;",
                                        d="M 160.636719 148.492188 L 167.03125 162.347656 L 162.027344 170.660156 L 162.273438 171.582031 L 159.570312 182.257812 L 162.847656 184.722656 L 159.242188 189.441406 ", transform="translate(10,10)"))
  pth_4 <- newXMLNode("path", attrs = c(style="fill:none;stroke-width:0.75;stroke-linecap:round;stroke-linejoin:round;stroke:rgb(0%,0%,0%);stroke-opacity:1;stroke-miterlimit:10;",
                                        d="M 159.242188 189.441406 L 125.046875 191.085938 L 117.582031 176.40625 L 106.921875 168.300781 L 92.574219 160.191406 L 75.023438 155.46875 L 73.628906 145.71875 L 56.574219 121.1875 L 57.640625 113.902344 L 49.6875 108.359375 L 48.375 98.917969 L 50.34375 98.917969 L 53.949219 103.945312 L 51.324219 97.789062 L 51.734375 94.195312 L 49.933594 91.9375 L 48.703125 96.042969 L 43.371094 94.605469 L 41.8125 92.554688 L 32.792969 80.238281 L 30.085938 67.097656 L 22.296875 54.578125 L 24.757812 37.539062 L 24.019531 23.375 ", transform="translate(10,10)"))
  pth_5 <- newXMLNode("path", attrs = c(style="fill:none;stroke-width:0.75;stroke-linecap:round;stroke-linejoin:round;stroke:rgb(0%,0%,0%);stroke-opacity:1;stroke-miterlimit:10;",
                                        d="M 83.796875 23.273438 L 37.550781 23.273438 L 24.019531 23.375 ", transform="translate(10,10)"))
  pth_6 <- newXMLNode("path", attrs = c(style="fill-rule:nonzero;fill:rgb(100%,82.745098%,52.156863%);fill-opacity:0.588235;stroke-width:0.75;stroke-linecap:round;stroke-linejoin:round;stroke:rgb(30.196078%,30.196078%,30.196078%);stroke-opacity:1;stroke-miterlimit:10;",
                                        d="M 157.261719 145.480469 L 149.464844 150.140625 L 148.332031 151.480469 L 146.953125 156.382812 L 148.261719 161.128906 L 151.523438 165.761719 L 153.320312 169.929688 L 152.585938 178.488281 L 155.949219 184.621094 L 154.96875 188.644531 L 154.515625 189.832031 L 139.824219 191.402344 L 131.957031 160.921875 L 125.769531 152.257812 L 124.320312 147.902344 L 123.816406 141.390625 L 124.3125 137.238281 L 126 132.242188 L 129.527344 127.351562 L 135.167969 124.078125 Z ", transform="translate(10,10)"))
  pth_7 <- newXMLNode("path", attrs = c(style="fill-rule:nonzero;fill:rgb(100%,100%,26.666667%);fill-opacity:0.588235;stroke-width:0.75;stroke-linecap:round;stroke-linejoin:round;stroke:rgb(30.196078%,30.196078%,30.196078%);stroke-opacity:1;stroke-miterlimit:10;",
                                        d="M 154.515625 189.832031 L 155.949219 184.621094 L 152.585938 178.488281 L 153.320312 169.929688 L 151.523438 165.761719 L 148.261719 161.128906 L 146.953125 156.382812 L 148.332031 151.480469 L 149.464844 150.140625 L 157.261719 145.480469 L 160.691406 148.800781 L 160.679688 151.109375 L 163.023438 154.003906 L 164.222656 158.542969 L 167.878906 162.039062 L 163.542969 165.183594 L 162.089844 167.9375 L 162.253906 174.753906 L 159.378906 177.40625 L 159.644531 183.082031 L 163.050781 185.167969 L 162.21875 189.011719 Z ", transform="translate(10,10)"))
  g_id <- addChildren(g_id,c(pth_1, pth_2, pth_3, pth_4, pth_5, pth_6, pth_7))
  
  for (i in 1:length(points[[1]])){
    site_id <- paste0('site_',points$id[[i]])
    site_mo <- paste0('site_',points$id[[i]],'.mouseover')
    site_me <- paste0('site_',points$id[[i]],'.mouseout')
    nwis_mo <- paste0('nwis_',points$id[[i]],'.mouseover')
    nwis_me <- paste0('nwis_',points$id[[i]],'.mouseout')
    mouse_move_txt <- paste0("ShowTooltip(evt, '", points$text[[i]], "')")
    pth <- newXMLNode("circle", attrs = c(id = site_id, 
                                          cx=points$sitex[[i]], cy=points$sitey[[i]], r = "3",
                                          style = "fill:rgb(40%,40%,40%); fill-opacity: 0.2",
                      onmousemove=mouse_move_txt,
                      onmouseout="HideTooltip(evt)"))
    set_1 <- newXMLNode('set', attrs = c(attributeName="r", to="8", begin=nwis_mo,  end=nwis_me))
    set_2 <- newXMLNode('set', attrs = c(attributeName="fill-opacity", to="1", begin=site_mo,  end=site_me))
    set_3 <- newXMLNode('set', attrs = c(attributeName="fill-opacity", to="1", begin=nwis_mo,  end=nwis_me))
    pth <- addChildren(pth, c(set_1, set_2, set_3))
    g_id <- addChildren(g_id, pth)
  }
  return(g_id)
}

createSVG <- function(points, file_nm){
  
  #points has
  
  def_opacity = "0.3"
  library(XML)
  
  doc <- xmlParse(paste0('<?xml version="1.0" encoding="UTF-8"?>
<svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" version="1.1" onload="init(evt)" width="550" height="550">
                  <style>

text{
                  font-size: 16px;
                  cursor: default;
                  font-family: Tahoma, Geneva, sans-serif;
                  }
      .tooltip{
		font-size: 12px;
}
                  .caption{
                  font-size: 12px;
                  font-family: Tahoma, Geneva, sans-serif;
                  }
                  </style>
                  
                  <script type="text/ecmascript">
                  <![CDATA[
                  
                  function init(evt)
{
                  if ( window.svgDocument == null )
{
                  svgDocument = evt.target.ownerDocument;
}
                  
                  tooltip = svgDocument.getElementById("tooltip");
}
                  
                  function ShowTooltip(evt, mouseovertext)
{
                  tooltip.setAttributeNS(null,"x",evt.clientX+8);
                  tooltip.setAttributeNS(null,"y",evt.clientY+4);
                  tooltip.firstChild.data = mouseovertext;
                  tooltip.setAttributeNS(null,"visibility","visible");
}
                  
                  function HideTooltip(evt)
{
                  tooltip.setAttributeNS(null,"visibility","hidden");
}
                  function MakeTransparent(evt) {
                  evt.target.setAttributeNS(null,"opacity","', def_opacity,'");
                  }
                  
                  function MakeOpaque(evt) {
                  evt.target.setAttributeNS(null,"opacity","1");
                  }
                  
                  ]]>
                  </script></svg>'))
  
  root_nd <- xmlRoot(doc)
  
  g_id <- newXMLNode("g",parent=root_nd, attrs = c(id="surface0"))
  
  

  rect_1 <- newXMLNode("rect",parent=g_id, attrs = c(id="box1", x="18", y="18", 
                                                     width="504", height="504", 
                                                     style="fill: rgb(100%,100%,100%);fill-opacity: 1; stroke: none;"))
  rect_2 <- newXMLNode("rect",parent=g_id, attrs = c(id="box2", x="18", y="18", 
                                                     width="504", height="504", 
                                                     style="stroke: black; fill: none;"))
  rect_3 <- newXMLNode("rect",parent=g_id, attrs = c(id="box3", x="25", y="25", 
                                                     width="165", height="185", 
                                                     style="stroke: grey; fill: none; stroke-opacity:0.3;"))
  tri <- newXMLNode("polygon", parent=g_id, attrs = c(points="18,522,522,18,522,522",
                        style="fill:grey;stroke:none;fill-opacity:0.1;"))
  addChildren(g_id,c(rect_1,rect_2, rect_3, tri))
  g_id <- add_CA(g_id, points)
  
  for (i in 1:length(points[[1]])){
    
    nwis_id <- paste0('nwis_',points$id[[i]])
    site_mo <- paste0('site_',points$id[[i]],'.mouseover')
    site_me <- paste0('site_',points$id[[i]],'.mouseout')
    
    mouse_move_txt <- paste0("ShowTooltip(evt, '", points$text[[i]], "')")
    pnt <- newXMLNode("circle", parent=g_id, attrs = c(id = nwis_id, cx=points$cx[[i]], cy=points$cy[[i]],
                                                       r=points$r[[i]], fill="#4169E1", opacity=def_opacity,
                                                       onmouseover="MakeOpaque(evt)",
                                                       onmousemove=mouse_move_txt,
                                                       onmouseout="MakeTransparent(evt); HideTooltip(evt)"))
    setter <- newXMLNode('set', attrs = c(
      attributeName="opacity", to="1", begin=site_mo,  end=site_me))
    pnt <- addChildren(pnt, c(setter))
    addChildren(g_id,c(pnt))
  }
  
  abv_ave <- newXMLNode("text", newXMLTextNode('Above average streamflow'),
                        attrs = c('text-anchor'="middle", transform="translate(263,263)rotate(315)"))
  bel_ave <- newXMLNode("text", newXMLTextNode('Below average streamflow'),
                        attrs = c('text-anchor'="middle", transform="translate(283,283)rotate(315)"))
  
  txt_n <- newXMLNode("tspan",newXMLTextNode('Historical average streamflow (m'))
  txt_sp <- newXMLNode("tspan", newXMLTextNode('3'), attrs = c('baseline-shift' = "super"))
  txt_n <- addChildren(txt_n, txt_sp)
  txt_c <- newXMLTextNode('/day{check units!})')
  
  x_ax <- newXMLNode("text",
                     attrs = c('text-anchor'="middle", transform="translate(265,538)"))
  x_ax <- addChildren(x_ax,txt_n, txt_c)
  txt_n <- newXMLNode("tspan",newXMLTextNode('Current streamflow (m'))
  txt_sp <- newXMLNode("tspan", newXMLTextNode('3'), attrs = c('baseline-shift' = "super"))
  txt_n <- addChildren(txt_n, txt_sp)
  txt_c <- newXMLTextNode('/day{check units!})')
  
  y_ax <- newXMLNode("text",
                     attrs = c('text-anchor'="middle", transform="translate(13,265)rotate(270)"))
  y_ax <- addChildren(y_ax, txt_n, txt_c)
  
  tt <- newXMLNode("text", newXMLTextNode('Tooltip'), parent = root_nd, 
                   attrs = c(class="label", id="tooltip", x="0", y="0", 
                             visibility="hidden"))
                   
  doc <- addChildren(root_nd,c(g_id, tt, abv_ave, bel_ave, x_ax, y_ax))
  
  
  saveXML(doc, file = file_nm)
}