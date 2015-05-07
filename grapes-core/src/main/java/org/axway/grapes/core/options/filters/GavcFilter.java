package org.axway.grapes.core.options.filters;

import org.axway.grapes.model.datamodel.Artifact;
import  org.axway.grapes.model.datamodel.DbCollections;

import java.util.Collections;
import java.util.HashMap;
import java.util.Map;

public class GavcFilter implements Filter {

    private String gavc;

    /**
     * The parameter must never be null
     *
     * @param gavc
     */
    public GavcFilter(final String gavc) {
        this.gavc = gavc;
    }

    @Override
    public boolean filter(final Object datamodelObj) {
        if(datamodelObj instanceof Artifact){
            return gavc.equals( ((Artifact)datamodelObj).getGavc());
        }

        return false;
    }

    @Override
    public Map<String, Object> moduleFilterFields() {
        return Collections.emptyMap();
    }

    @Override
    public Map<String, Object> artifactFilterFields() {
        final Map<String, Object> fields = new HashMap<String, Object>();
        fields.put(DbCollections.DEFAULT_ID, gavc);
        return fields;
    }
}
