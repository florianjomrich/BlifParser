package placement;

import java.util.HashMap;

import edu.byu.ece.rapidSmith.design.Design;
import edu.byu.ece.rapidSmith.design.Instance;
import edu.byu.ece.rapidSmith.device.PrimitiveSite;

public class Placer {
	boolean useOwnPlacer;

	public Design design;
	HashMap<String, PrimitiveSite> primitiveSites;

	public Placer(Design design, HashMap<String, PrimitiveSite> primitiveSites,
			boolean useOwnPlacer) {
		this.design = design;
		this.primitiveSites = primitiveSites;
		this.useOwnPlacer = useOwnPlacer;
	}

	public void placeInstance(Instance myInstance) {
		// place it on the FPGA using a Random placer
		//if no own placer is used
		if (!useOwnPlacer) {
			for (PrimitiveSite site : primitiveSites.values()) {
				// Some primitive sites can have more than one type reside at
				// the site, such as SLICEM
				// sites which can also have SLICELs placed there. Checking if
				// the site is compatible
				// makes sure you get the best possible chance of finding a
				// place for bob to live.
				if (site.isCompatiblePrimitiveType(myInstance.getType())) {
					// Let's also make sure we don't place bob on a site that is
					// already used
					if (!design.isPrimitiveSiteUsed(site)) {
						myInstance.place(site);
						System.out.println("We placed " + myInstance.getName()
								+ " on tile: " + myInstance.getTile()
								+ " and site: "
								+ myInstance.getPrimitiveSiteName());
						break;
					}
				}
			}
		}
	}
}
