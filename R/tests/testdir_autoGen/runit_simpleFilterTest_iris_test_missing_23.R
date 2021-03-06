            ##
            # Author: Autogenerated on 2013-12-18 17:01:19
            # gitHash: 2581a0dfa12a51892283830529a5126ea49f0cb9
            # SEED: 2481425483200553751
            ##
            setwd(normalizePath(dirname(R.utils::commandArgs(asValues=TRUE)$"f")))
            source('../findNSourceUtils.R') 
            simpleFilterTest_iris_test_missing_23 <- function(conn) {
                Log.info("A munge-task R unit test on data <iris_test_missing> testing the functional unit <>=> ")
                Log.info("Uploading iris_test_missing")
                hex <- h2o.uploadFile(conn, locate("../../smalldata/test/classifier/iris_test_missing.csv"), "riris_test_missing.hex")
                Log.info("Filtering out rows by >= from dataset iris_test_missing and column \"sepal_len\" using value 6.14851557341")
                     filterHex <- hex[hex[,c("sepal_len")] >= 6.14851557341,]
                    Log.info("Perform filtering with the '$' sign also")
                    filterHex <- hex[hex$"sepal_len" >= 6.14851557341,]
                Log.info("Filtering out rows by >= from dataset iris_test_missing and column \"petal_wid\" using value 1.39378532166")
                     filterHex <- hex[hex[,c("petal_wid")] >= 1.39378532166,]
                    Log.info("Perform filtering with the '$' sign also")
                    filterHex <- hex[hex$"petal_wid" >= 1.39378532166,]
                Log.info("Filtering out rows by >= from dataset iris_test_missing and column \"petal_wid\" using value 1.59375306142")
                     filterHex <- hex[hex[,c("petal_wid")] >= 1.59375306142,]
                    Log.info("Perform filtering with the '$' sign also")
                    filterHex <- hex[hex$"petal_wid" >= 1.59375306142,]
                Log.info("Filtering out rows by >= from dataset iris_test_missing and column \"sepal_wid\" using value 2.64569667603")
                     filterHex <- hex[hex[,c("sepal_wid")] >= 2.64569667603,]
                    Log.info("Perform filtering with the '$' sign also")
                    filterHex <- hex[hex$"sepal_wid" >= 2.64569667603,]
                Log.info("Filtering out rows by >= from dataset iris_test_missing and column \"petal_len\" using value 4.11653347576")
                     filterHex <- hex[hex[,c("petal_len")] >= 4.11653347576,]
                    Log.info("Perform filtering with the '$' sign also")
                    filterHex <- hex[hex$"petal_len" >= 4.11653347576,]
                Log.info("Filtering out rows by >= from dataset iris_test_missing and column \"petal_len\" using value 4.0807389798")
                     filterHex <- hex[hex[,c("petal_len")] >= 4.0807389798,]
                    Log.info("Perform filtering with the '$' sign also")
                    filterHex <- hex[hex$"petal_len" >= 4.0807389798,]
                Log.info("Filtering out rows by >= from dataset iris_test_missing and column \"petal_len\" using value 4.04628707461")
                     filterHex <- hex[hex[,c("petal_len")] >= 4.04628707461,]
                    Log.info("Perform filtering with the '$' sign also")
                    filterHex <- hex[hex$"petal_len" >= 4.04628707461,]
                Log.info("Filtering out rows by >= from dataset iris_test_missing and column \"sepal_wid\" using value 2.68151622107")
                     filterHex <- hex[hex[,c("sepal_wid")] >= 2.68151622107,]
                    Log.info("Perform filtering with the '$' sign also")
                    filterHex <- hex[hex$"sepal_wid" >= 2.68151622107,]
                Log.info("Filtering out rows by >= from dataset iris_test_missing and column \"petal_len\" using value 4.59564886574")
                     filterHex <- hex[hex[,c("petal_len")] >= 4.59564886574,]
                    Log.info("Perform filtering with the '$' sign also")
                    filterHex <- hex[hex$"petal_len" >= 4.59564886574,]
                    Log.info("Filtering out rows by >= from dataset iris_test_missing and column \"sepal_len\" using value 5.15699826864, and also subsetting columns.")
                     filterHex <- hex[hex[,c("sepal_len")] >= 5.15699826864, c("sepal_len")]
                    Log.info("Now do the same filter & subset, but select complement of columns.")
                     filterHex <- hex[hex[,c("sepal_len")] >= 5.15699826864, c("petal_wid","sepal_wid","petal_len","sepal_len","species")]
                    Log.info("Filtering out rows by >= from dataset iris_test_missing and column \"sepal_wid\" using value 2.69760745887, and also subsetting columns.")
                     filterHex <- hex[hex[,c("sepal_wid")] >= 2.69760745887, c("sepal_wid")]
                    Log.info("Now do the same filter & subset, but select complement of columns.")
                     filterHex <- hex[hex[,c("sepal_wid")] >= 2.69760745887, c("petal_wid","sepal_wid","petal_len","sepal_len","species")]
                    Log.info("Filtering out rows by >= from dataset iris_test_missing and column \"petal_wid\" using value 1.54132249474, and also subsetting columns.")
                     filterHex <- hex[hex[,c("petal_wid")] >= 1.54132249474, c("petal_wid")]
                    Log.info("Now do the same filter & subset, but select complement of columns.")
                     filterHex <- hex[hex[,c("petal_wid")] >= 1.54132249474, c("petal_wid","sepal_wid","petal_len","sepal_len","species")]
                    Log.info("Filtering out rows by >= from dataset iris_test_missing and column \"sepal_wid\" using value 2.34009006504, and also subsetting columns.")
                     filterHex <- hex[hex[,c("sepal_wid")] >= 2.34009006504, c("sepal_wid")]
                    Log.info("Now do the same filter & subset, but select complement of columns.")
                     filterHex <- hex[hex[,c("sepal_wid")] >= 2.34009006504, c("petal_wid","sepal_wid","petal_len","sepal_len","species")]
                    Log.info("Filtering out rows by >= from dataset iris_test_missing and column \"petal_len\" using value 3.96468009283, and also subsetting columns.")
                     filterHex <- hex[hex[,c("petal_len")] >= 3.96468009283, c("petal_len")]
                    Log.info("Now do the same filter & subset, but select complement of columns.")
                     filterHex <- hex[hex[,c("petal_len")] >= 3.96468009283, c("petal_wid","sepal_wid","petal_len","sepal_len","species")]
                    Log.info("Filtering out rows by >= from dataset iris_test_missing and column \"sepal_len\" using value 5.31041291729, and also subsetting columns.")
                     filterHex <- hex[hex[,c("sepal_len")] >= 5.31041291729, c("sepal_len")]
                    Log.info("Now do the same filter & subset, but select complement of columns.")
                     filterHex <- hex[hex[,c("sepal_len")] >= 5.31041291729, c("petal_wid","sepal_wid","petal_len","sepal_len","species")]
                    Log.info("Filtering out rows by >= from dataset iris_test_missing and column \"petal_wid\" using value 1.38911109211, and also subsetting columns.")
                     filterHex <- hex[hex[,c("petal_wid")] >= 1.38911109211, c("petal_wid")]
                    Log.info("Now do the same filter & subset, but select complement of columns.")
                     filterHex <- hex[hex[,c("petal_wid")] >= 1.38911109211, c("petal_wid","sepal_wid","petal_len","sepal_len","species")]
                    Log.info("Filtering out rows by >= from dataset iris_test_missing and column \"petal_wid\" using value 1.23502370526, and also subsetting columns.")
                     filterHex <- hex[hex[,c("petal_wid")] >= 1.23502370526, c("petal_wid")]
                    Log.info("Now do the same filter & subset, but select complement of columns.")
                     filterHex <- hex[hex[,c("petal_wid")] >= 1.23502370526, c("petal_wid","sepal_wid","petal_len","sepal_len","species")]
                    Log.info("Filtering out rows by >= from dataset iris_test_missing and column \"petal_len\" using value 3.07398920186, and also subsetting columns.")
                     filterHex <- hex[hex[,c("petal_len")] >= 3.07398920186, c("petal_len")]
                    Log.info("Now do the same filter & subset, but select complement of columns.")
                     filterHex <- hex[hex[,c("petal_len")] >= 3.07398920186, c("petal_wid","sepal_wid","petal_len","sepal_len","species")]
            testEnd()
            }
            doTest("simpleFilterTest_ on data iris_test_missing unit= >=", simpleFilterTest_iris_test_missing_23)
