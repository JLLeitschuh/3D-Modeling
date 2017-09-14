
// Module names are of the form poly_<inkscape-path-id>().  As a result,
// you can associate a polygon in this OpenSCAD program with the corresponding
// SVG element in the Inkscape document by looking for the XML element with
// the attribute id="inkscape-path-id".

// fudge value is used to ensure that subtracted solids are a tad taller
// in the z dimension than the polygon being subtracted from.  This helps
// keep the resulting .stl file manifold.
fudge = 0.1;

module thundercatsLogo(h=1)
{
  scale([25.4/90, -25.4/90, 1]) union()
  {
    difference()
    {
       linear_extrude(height=h)
         polygon([[-256.460000,-3.460000],[-236.500000,-21.710000],[-218.908750,-36.998750],[-209.883906,-44.371719],[-200.500000,-51.260000],[-177.500000,-65.290000],[-145.500000,-85.630000],[-131.951250,-95.348750],[-125.245781,-100.841406],[-119.670000,-106.290000],[-106.490000,-126.290000],[-99.821250,-133.856875],[-92.680000,-140.310000],[-84.946250,-146.050625],[-76.500000,-151.480000],[-62.602344,-159.072246],[-47.081875,-166.047969],[-30.396094,-172.420645],[-13.002500,-178.203750],[22.078125,-188.055156],[54.500000,-195.710000],[141.500000,-212.540000],[188.500000,-220.120000],[192.585859,-219.939043],[194.511250,-218.749219],[194.719141,-216.817598],[193.652500,-214.411250],[189.467500,-209.242656],[185.500000,-205.380000],[176.243125,-197.358437],[165.617500,-189.342500],[154.433125,-182.185312],[143.500000,-176.740000],[133.842656,-173.492031],[123.833750,-171.531250],[113.657969,-171.012344],[103.500000,-172.090000],[94.075000,-174.470312],[84.717500,-177.287500],[75.251250,-179.545937],[65.500000,-180.250000],[59.490937,-179.104531],[51.530000,-176.628750],[37.500000,-171.290000],[43.548594,-171.836094],[47.833750,-172.831250],[51.952031,-173.805781],[57.500000,-174.290000],[67.616875,-173.313906],[76.852500,-170.726250],[85.911875,-167.397969],[95.500000,-164.200000],[105.903281,-162.478750],[117.451250,-161.920000],[129.023594,-162.501250],[139.500000,-164.200000],[150.860937,-167.239531],[162.370000,-171.678750],[173.444062,-177.158594],[183.500000,-183.320000],[204.500000,-199.290000],[214.700000,-187.290000],[226.172500,-171.781250],[236.190000,-155.290000],[242.101602,-143.649180],[247.381562,-131.740937],[252.045117,-119.594102],[256.107500,-107.237500],[262.489687,-82.010312],[266.650000,-56.290000],[268.500000,-36.290000],[268.500000,-18.290000],[267.923437,-9.027500],[266.512500,2.657500],[262.920000,23.710000],[253.920000,57.710000],[250.035000,69.186250],[247.431563,74.997031],[244.500000,79.710000],[241.360078,70.819512],[236.533125,62.953594],[230.293359,56.161816],[222.915000,50.493750],[214.672266,45.998965],[205.839375,42.727031],[196.690547,40.727520],[187.500000,40.050000],[178.962500,40.990000],[170.500000,42.710000],[175.970313,27.689375],[178.622500,14.682500],[179.463438,1.439375],[179.500000,-14.290000],[178.664219,-28.272344],[176.083750,-42.403750],[171.581406,-55.978281],[168.554160,-62.336113],[164.980000,-68.290000],[159.143672,-75.972559],[152.568125,-82.886719],[145.341016,-89.053457],[137.550000,-94.493750],[129.282734,-99.228574],[120.626875,-103.278906],[111.670078,-106.665723],[102.500000,-109.410000],[93.040625,-111.530781],[81.380000,-113.393750],[69.779375,-114.234844],[64.708203,-114.033418],[60.500000,-113.290000],[67.326250,-112.443437],[75.075000,-110.762500],[89.500000,-106.630000],[99.328125,-103.141133],[108.965000,-98.984062],[118.283125,-94.128086],[127.155000,-88.542500],[135.453125,-82.196602],[143.050000,-75.059687],[149.818125,-67.101055],[155.630000,-58.290000],[159.294026,-51.051133],[162.250488,-43.445938],[164.517214,-35.536523],[166.112031,-27.385000],[167.052766,-19.053477],[167.357246,-10.604062],[167.043298,-2.098867],[166.128750,6.400000],[162.569160,23.130312],[156.821094,39.090000],[153.170950,46.625586],[149.027168,53.782188],[144.407576,60.497695],[139.330000,66.710000],[129.225000,76.751250],[123.512500,81.181719],[117.500000,84.730000],[90.500000,95.190000],[83.125801,99.602520],[75.788281,105.074531],[68.761309,111.455215],[62.318750,118.593750],[56.734473,126.339316],[52.282344,134.541094],[49.236230,143.048262],[47.870000,151.710000],[48.064609,155.966133],[49.044375,159.722813],[50.739453,162.894961],[53.080000,165.397500],[55.996172,167.145352],[59.418125,168.053438],[63.276016,168.036680],[67.500000,167.010000],[73.035137,164.554688],[78.128594,161.409375],[87.353750,153.667500],[95.902031,145.021875],[104.500000,136.710000],[102.826680,142.470449],[100.465937,148.376094],[94.157500,160.183750],[86.525312,171.254531],[78.520000,180.710000],[69.832148,189.340781],[60.924688,196.961875],[51.701758,203.548906],[42.067500,209.077500],[31.926055,213.523281],[21.181562,216.861875],[9.738164,219.068906],[-2.500000,220.120000],[-10.665469,219.957344],[-18.758750,218.931250],[-26.722656,217.134531],[-34.500000,214.660000],[-42.716250,211.132500],[-47.298281,209.476563],[-50.490000,209.120000],[-52.758438,210.480469],[-55.182500,212.848750],[-59.500000,217.710000],[-62.019219,211.255313],[-63.821250,204.465000],[-64.462656,197.547188],[-63.500000,190.710000],[-68.880547,189.241094],[-74.980625,186.801875],[-88.040000,179.792500],[-100.079375,171.241875],[-104.904453,166.876094],[-108.500000,162.710000],[-99.633438,166.451563],[-90.510000,169.760000],[-81.131562,172.033438],[-71.500000,172.670000],[-63.875352,171.913008],[-56.599688,170.298437],[-49.659180,167.899648],[-43.040000,164.790000],[-36.728320,161.042852],[-30.710312,156.731563],[-19.500000,146.710000],[-10.552480,136.679063],[-2.819844,125.988125],[3.743027,114.703750],[9.181250,102.892500],[13.539941,90.620938],[16.864219,77.955625],[19.199199,64.963125],[20.590000,51.710000],[21.500000,41.710000],[20.821250,29.101250],[18.740000,16.710000],[16.232500,9.526250],[12.870000,2.710000],[9.048096,-2.762307],[4.735234,-7.352676],[-0.015557,-11.118777],[-5.151250,-14.118281],[-10.618818,-16.408860],[-16.365234,-18.048184],[-28.482500,-19.603750],[-41.078828,-19.246348],[-53.730000,-17.437344],[-66.011797,-14.638105],[-77.500000,-11.310000],[-95.500000,-5.010000],[-116.500000,4.940000],[-129.360000,12.352500],[-141.500000,20.920000],[-153.160000,31.283281],[-158.533203,37.170449],[-163.357500,43.496250],[-167.449609,50.236895],[-170.626250,57.368594],[-172.704141,64.867559],[-173.500000,72.710000],[-172.978672,81.785723],[-171.281250,90.337031],[-168.533828,98.418887],[-164.862500,106.086250],[-160.393359,113.394082],[-155.252500,120.397344],[-143.460000,133.710000],[-126.500000,149.710000],[-145.802813,141.731563],[-162.460000,133.537500],[-170.316211,128.842227],[-178.134688,123.472188],[-186.123320,117.220430],[-194.490000,109.880000],[-202.025781,102.304688],[-209.228750,93.460000],[-215.064844,83.782813],[-217.147168,78.768555],[-218.500000,73.710000],[-223.157813,76.518281],[-225.004961,76.845059],[-226.707500,76.353750],[-230.208438,72.617344],[-234.720000,64.710000],[-239.374375,54.471406],[-242.750000,43.851250],[-244.805625,32.910469],[-245.500000,21.710000],[-251.823281,20.041875],[-257.521250,17.402500],[-268.500000,10.710000],[-266.088594,6.411875],[-263.271250,2.950000],[-256.460000,-3.460000]]);
       translate([0, 0, -fudge])
         linear_extrude(height=h+2*fudge)
           polygon([[-70.500000,-140.620000],[-80.733750,-133.505000],[-90.180000,-125.850000],[-97.510000,-116.290000],[-111.510000,-100.300000],[-130.500000,-83.710000],[-142.500000,-74.290000],[-135.731230,-75.601934],[-128.651094,-77.600469],[-114.118750,-83.148750],[-100.027031,-89.917656],[-87.500000,-96.890000],[-78.500000,-101.683750],[-70.670000,-106.500000],[-64.379219,-114.040937],[-56.793750,-124.685000],[-48.081406,-136.326562],[-38.410000,-146.860000],[-30.811250,-153.128750],[-22.500000,-158.400000],[-16.387500,-161.116250],[-10.500000,-164.290000],[-18.257988,-163.674473],[-26.148281,-162.069531],[-34.067871,-159.635137],[-41.913750,-156.531250],[-56.972344,-148.954844],[-70.500000,-140.620000]]);
    }
  }
}

module thundercatsLogoThumbnail(height = 1)
{
	xyScale = 0.1592;
	scale([xyScale, xyScale, 1])
	thundercatsLogo(h = height);
}
