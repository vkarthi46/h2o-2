package water.genmodel;

import java.util.Map;

/** This is a helper class to support Java generated models.
 */
public abstract class GeneratedModel implements IGeneratedModel {
  @Override public int      getNumCols()      { return getNames().length - 1; }
  @Override public int      getResponseIdx () { return getNames().length - 1; }
  @Override public String   getResponseName() { return getNames()[getResponseIdx()]; }
  @Override public String[] getDomainValues(int i) { return getDomainValues()[i]; }
  @Override public int      getNumResponseClasses() { return getNumClasses(getResponseIdx()); }
  @Override public boolean  isClassifier() { return getNumResponseClasses()!=-1; }

  @Override public int getColIdx(String name) {
    String[] names = getNames();
    for (int i=0; i<names.length; i++) if (names[i].equals(name)) return i;
    return -1;
  }
  @Override public int getNumClasses(int i) {
    String[] domval = getDomainValues(i);
    return domval!=null?domval.length:-1;
  }
  @Override public String[] getDomainValues(String name) {
    int colIdx = getColIdx(name);
    return colIdx != -1 ? getDomainValues(colIdx) : null;
  }
  @Override public Map<String, Integer> getDomainValuesMap(int i) {
    return getDomainValuesMap()[i];
  }
  @Override public String[][] getDomainValues() {
    int ncols = getNumCols();
    String[][] ret = new String[ncols][];
    Map<String,Integer>[] dom = getDomainValuesMap();
    for (int i=0; i<ncols; i++) {
      ret[i] = (String[]) dom[i].keySet().toArray();
    }
    return ret;
  }
  @Override public int mapEnum(int colIdx, String enumValue) {
    String[] domain = getDomainValues(colIdx);
    if (domain==null || domain.length==0) return -1;
    for (int i=0; i<domain.length;i++) if (enumValue.equals(domain[i])) return i;
    return -1;
  }

  @Override public int getPredsSize() {
    return isClassifier() ? 1+getNumResponseClasses() : 2;
  }

  /**
   * Takes a HashMap mapping column names to doubles.
   * <p>
   * Looks up the column names needed by the model, and places the doubles into the data array in
   * the order needed by the model. Missing columns use NaN.
   * </p>
   */
  public double[] map( Map<String, Double> row, double data[] ) {
    String[] colNames = getNames();
    for( int i=0; i<colNames.length-1; i++ ) {
      Double d = row.get(colNames[i]);
      data[i] = d==null ? Double.NaN : d;
    }
    return data;
  }

  // Does the mapping lookup for every row, no allocation
  public float[] predict( Map<String, Double> row, double data[], float preds[] ) {
    return predict(map(row,data),preds);
  }

  // Allocates a double[] for every row
  public float[] predict( Map<String, Double> row, float preds[] ) {
    return predict(map(row,new double[getNames().length]),preds);
  }

  // Allocates a double[] and a float[] for every row
  public float[] predict( Map<String, Double> row ) {
    return predict(map(row,new double[getNames().length]),new float[getNumResponseClasses()+1]);
  }

}