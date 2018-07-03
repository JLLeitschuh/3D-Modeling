
package org.onebeartoe.modeling.openscad.test.suite;

import java.nio.file.Path;
import java.util.List;

/**
 * @author Roberto Marquez <https://www.youtube.com/user/onebeartoe>
 */
public class RunProfile 
{
    public boolean deleteProposedBaseLines;
    
    public boolean diffOnly;
    
    public boolean generateBaselines;
    
    public boolean redirectOpenscad;
    
    public String path;
    
    public String executablePath;
    
    public List<Path> openscadPaths;
    
    public OpenScadTestSuite.RunMode mode;
}
