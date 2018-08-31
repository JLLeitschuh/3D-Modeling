
package org.onebeartoe.modeling.openscad.inliner;

import java.io.File;
import java.io.IOException;
import java.net.URL;
import java.nio.file.Files;
import java.nio.file.Path;
import java.util.ResourceBundle;
import java.util.logging.Level;
import java.util.logging.Logger;
import java.util.prefs.BackingStoreException;
import javafx.event.ActionEvent;
import javafx.fxml.FXML;
import javafx.fxml.Initializable;
import javafx.scene.control.TextField;
import javafx.stage.FileChooser;
import javafx.stage.Stage;
import org.onebeartoe.application.JavaPreferencesService;
import org.onebeartoe.application.PreferencesService;
import org.onebeartoe.application.ui.GraphicalUserInterfaceServices;
import org.onebeartoe.application.ui.JavaFxGuiServices;
import org.onebeartoe.modeling.opensacd.services.OpenScadPreferences;
import org.onebeartoe.modeling.opensacd.services.ThingiverseCustomizerService;
import org.onebeartoe.modeling.openscad.test.suite.utils.PngGenerator;

public class FXMLController implements Initializable//, DesktopApplication 
{
    private Logger logger;
    
    private PreferencesService preferencesService;
    
    private GraphicalUserInterfaceServices uiServices;
    
    private ThingiverseCustomizerService customizerService;
    
    private PngGenerator pg;
    
    private String openScadFile;
    
    @FXML
    private TextField currentFileTextField;
    
    private ResourceBundle resourceBundle;
    
    private void generateCutomizerFile()
    {
        try 
        {
            File infile = new File(openScadFile);
            String interpolatedContent = customizerService.interpolateOpenScad(infile);
            
            int start = openScadFile.lastIndexOf(".");
            int end = openScadFile.length();
            String extension = openScadFile.substring(start, end);
            String path = infile.getParent() + File.separator + "inlined" + File.separator + infile.getName() + "-" +"inlined" + extension;
            File outfile = new File(path);

            if( !outfile.getParentFile().exists() )
            {
                outfile.getParentFile().mkdirs();
            }

            Path outpath = outfile.toPath();
            
            Files.write(outpath, interpolatedContent.getBytes() );
            
            logger.log(Level.INFO, "The OpenScad file for Thingiverse Customizer has been output to: " + outpath.toAbsolutePath() );
        }
        catch (IOException  ex)
        {
            logger.log(Level.SEVERE, ex.getMessage(), ex);
            
            String message = "Error: " + ex.getMessage();
            String title = "An Error Occurred";
            uiServices.infoMessage(message, title);
        }
    }
    
    @FXML
    private void handleButtonAction(ActionEvent event)
    {
        System.out.println("You clicked me!");

        if(openScadFile == null)
        {
            String message = "No OpenSCAD file is selected.  Please select an OpenSCAD file to generate a Customizer version.";
            String title = "Select an OpenSCAD File";
            uiServices.infoMessage(message, title);
        }
        else
        {
            generateCutomizerFile();
        }
    }
    
    @Override
    public void initialize(URL url, ResourceBundle rb)
    {
        this.resourceBundle = rb;
        
        logger = Logger.getLogger(getClass().getName() );
        pg = new PngGenerator();
        
        preferencesService = new JavaPreferencesService( getClass() );
        restorePreferences();
        
        currentFileTextField.setText(openScadFile);
        
        uiServices = new JavaFxGuiServices();
        
        try 
        {
            customizerService = new ThingiverseCustomizerService();
        } 
        catch (IOException ex) 
        {
            logger.log(Level.SEVERE, "The customizer service was not instantiated.", ex);
        }
    }
    
    private void restorePreferences()
    {
        String defaultValue = null;
        openScadFile = preferencesService.get(OpenScadPreferences.OPENSCAD_FILE, defaultValue);
     
        if(openScadFile == null)
        {
            String noSelectionMessage = resourceBundle.getString("currentFileTextField.noFileSelected");
            openScadFile = noSelectionMessage;
        }
    
        String message = "OpenSCAD file: " + openScadFile;
        logger.log(Level.INFO, message);
    }
    
    private void savePreference(OpenScadPreferences key, String value)
    {
        String preferenceName = key.name();
        try 
        {       
            preferencesService.saveProperty(preferenceName, value);
        } 
        catch (BackingStoreException ex) 
        {
            String message = ex.getMessage();
            
            logger.log(Level.SEVERE, message, ex);
            
            String title = "Error Saving Preference";
            uiServices.infoMessage(message, title);
        }
    }

    @FXML 
    void selectOpenScadFile(ActionEvent event)
    {
        // show the file chooser dialog
        FileChooser fc = new FileChooser();
        final Stage dialog = new Stage();
        File file = fc.showOpenDialog(dialog);
        if (file != null)
        {
            openScadFile = file.getAbsolutePath();
            
            currentFileTextField.setText(file.getAbsolutePath());
     
            // save the current file to preferences
            savePreference(OpenScadPreferences.OPENSCAD_FILE, file.getAbsolutePath() );
        }
    }
}
