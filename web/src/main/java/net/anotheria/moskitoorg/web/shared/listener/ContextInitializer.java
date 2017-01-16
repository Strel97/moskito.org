package net.anotheria.moskitoorg.web.shared.listener;

import net.anotheria.access.AccessService;
import net.anotheria.access.impl.AccessServiceFactory;
import net.anotheria.anoplass.api.APIFinder;
import net.anotheria.anoprise.metafactory.Extension;
import net.anotheria.anoprise.metafactory.MetaFactory;
import net.anotheria.anosite.access.AnoSiteAccessAPI;
import net.anotheria.anosite.access.AnoSiteAccessAPIFactory;
import net.anotheria.anosite.cms.helper.BoxTypeBoxHelper;
import net.anotheria.anosite.config.Config;
import net.anotheria.anosite.gen.shared.service.MetaFactoryConfigurator;
import net.anotheria.asg.util.helper.cmsview.CMSViewHelperRegistry;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;

/**
 * TODO comment this class
 *
 * @author lrosenberg
 * @since 09.05.14 00:00
 */
public class ContextInitializer implements ServletContextListener {

	/**
	 * Application name.
	 */
	public static final String APPLICATION_NAME = "Moskito.org";

	/**
	 * {@link Logger} instance.
	 */
	private static Logger log = LoggerFactory.getLogger(ContextInitializer.class);


	@Override
	public void contextInitialized(ServletContextEvent sce) {
		log.info("--- " + APPLICATION_NAME + " --- APPLICATION INITIALIZATION: STARTED --- ");

		MetaFactoryConfigurator.configure();

		MetaFactory.addFactoryClass(AccessService.class, Extension.NONE, AccessServiceFactory.class);
		APIFinder.addAPIFactory(AnoSiteAccessAPI.class, new AnoSiteAccessAPIFactory());

		configureWebTier();

		log.info("--- " + APPLICATION_NAME + " --- APPLICATION INITIALIZATION: FINISHED --- ");
		log.info("--- " + APPLICATION_NAME + " --- APPLICATION CONFIGURED AS: " + Config.getInstance().getSystemName() + " --- ");
	}

	@Override
	public void contextDestroyed(ServletContextEvent sce) {
		log.info("--- " + APPLICATION_NAME + " --- APPLICATION DESTROYED --- ");
	}

	/**
	 * Configuring Presentation Tier.
	 */
	private void configureWebTier() {
		BoxTypeBoxHelper typeHelper = new BoxTypeBoxHelper();
		CMSViewHelperRegistry.addCMSViewHelper("ASWebData.Box", typeHelper);
	}
}
