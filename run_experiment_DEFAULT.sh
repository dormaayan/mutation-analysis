#!/bin/bash
rm -rf /home/dorma10/mutation-analysis/mutation_results logs
mkdir /home/dorma10/mutation-analysis/mutation_results logs
echo '* 1 out of 9 -> commons-cli'
mkdir /home/dorma10/mutation-analysis/mutation_results/commons-cli


echo '* Compiling commons-cli'
cd /home/dorma10/mutation-analysis/projects/commons-cli

echo '* Caching original pom'
cp pom.xml cached_pom.xml

python3 /home/dorma10/mutation-analysis/effectiveness/mutation/pom_changer.py commons-cli org.apache.commons.cli.BasicParser org.apache.commons.cli.BasicParserTest DEFAULT
echo '* Mutating org.apache.commons.cli.BasicParser with operator DEFAULT'
timeout 20m mvn org.pitest:pitest-maven:mutationCoverage -X -DoutputFormats=HTML --log-file ../../logs/org.apache.commons.cli.BasicParserTest.txt
mv target/pit-reports target/org.apache.commons.cli.BasicParserTest
cp -r target/org.apache.commons.cli.BasicParserTest /home/dorma10/mutation-analysis/mutation_results/commons-cli

rm -rf target/org.apache.commons.cli.BasicParserTest

python3 /home/dorma10/mutation-analysis/effectiveness/mutation/pom_changer.py commons-cli org.apache.commons.cli.PatternOptionBuilder org.apache.commons.cli.PatternOptionBuilderTest DEFAULT
echo '* Mutating org.apache.commons.cli.PatternOptionBuilder with operator DEFAULT'
timeout 20m mvn org.pitest:pitest-maven:mutationCoverage -X -DoutputFormats=HTML --log-file ../../logs/org.apache.commons.cli.PatternOptionBuilderTest.txt
mv target/pit-reports target/org.apache.commons.cli.PatternOptionBuilderTest
cp -r target/org.apache.commons.cli.PatternOptionBuilderTest /home/dorma10/mutation-analysis/mutation_results/commons-cli

rm -rf target/org.apache.commons.cli.PatternOptionBuilderTest

python3 /home/dorma10/mutation-analysis/effectiveness/mutation/pom_changer.py commons-cli org.apache.commons.cli.Options org.apache.commons.cli.OptionsTest DEFAULT
echo '* Mutating org.apache.commons.cli.Options with operator DEFAULT'
timeout 20m mvn org.pitest:pitest-maven:mutationCoverage -X -DoutputFormats=HTML --log-file ../../logs/org.apache.commons.cli.OptionsTest.txt
mv target/pit-reports target/org.apache.commons.cli.OptionsTest
cp -r target/org.apache.commons.cli.OptionsTest /home/dorma10/mutation-analysis/mutation_results/commons-cli

rm -rf target/org.apache.commons.cli.OptionsTest

python3 /home/dorma10/mutation-analysis/effectiveness/mutation/pom_changer.py commons-cli org.apache.commons.cli.Option org.apache.commons.cli.OptionTest DEFAULT
echo '* Mutating org.apache.commons.cli.Option with operator DEFAULT'
timeout 20m mvn org.pitest:pitest-maven:mutationCoverage -X -DoutputFormats=HTML --log-file ../../logs/org.apache.commons.cli.OptionTest.txt
mv target/pit-reports target/org.apache.commons.cli.OptionTest
cp -r target/org.apache.commons.cli.OptionTest /home/dorma10/mutation-analysis/mutation_results/commons-cli

rm -rf target/org.apache.commons.cli.OptionTest

python3 /home/dorma10/mutation-analysis/effectiveness/mutation/pom_changer.py commons-cli org.apache.commons.cli.CommandLine org.apache.commons.cli.CommandLineTest DEFAULT
echo '* Mutating org.apache.commons.cli.CommandLine with operator DEFAULT'
timeout 20m mvn org.pitest:pitest-maven:mutationCoverage -X -DoutputFormats=HTML --log-file ../../logs/org.apache.commons.cli.CommandLineTest.txt
mv target/pit-reports target/org.apache.commons.cli.CommandLineTest
cp -r target/org.apache.commons.cli.CommandLineTest /home/dorma10/mutation-analysis/mutation_results/commons-cli

rm -rf target/org.apache.commons.cli.CommandLineTest

python3 /home/dorma10/mutation-analysis/effectiveness/mutation/pom_changer.py commons-cli org.apache.commons.cli.OptionGroup org.apache.commons.cli.OptionGroupTest DEFAULT
echo '* Mutating org.apache.commons.cli.OptionGroup with operator DEFAULT'
timeout 20m mvn org.pitest:pitest-maven:mutationCoverage -X -DoutputFormats=HTML --log-file ../../logs/org.apache.commons.cli.OptionGroupTest.txt
mv target/pit-reports target/org.apache.commons.cli.OptionGroupTest
cp -r target/org.apache.commons.cli.OptionGroupTest /home/dorma10/mutation-analysis/mutation_results/commons-cli

rm -rf target/org.apache.commons.cli.OptionGroupTest

python3 /home/dorma10/mutation-analysis/effectiveness/mutation/pom_changer.py commons-cli org.apache.commons.cli.GnuParser org.apache.commons.cli.GnuParserTest DEFAULT
echo '* Mutating org.apache.commons.cli.GnuParser with operator DEFAULT'
timeout 20m mvn org.pitest:pitest-maven:mutationCoverage -X -DoutputFormats=HTML --log-file ../../logs/org.apache.commons.cli.GnuParserTest.txt
mv target/pit-reports target/org.apache.commons.cli.GnuParserTest
cp -r target/org.apache.commons.cli.GnuParserTest /home/dorma10/mutation-analysis/mutation_results/commons-cli

rm -rf target/org.apache.commons.cli.GnuParserTest

python3 /home/dorma10/mutation-analysis/effectiveness/mutation/pom_changer.py commons-cli org.apache.commons.cli.DefaultParser org.apache.commons.cli.DefaultParserTest DEFAULT
echo '* Mutating org.apache.commons.cli.DefaultParser with operator DEFAULT'
timeout 20m mvn org.pitest:pitest-maven:mutationCoverage -X -DoutputFormats=HTML --log-file ../../logs/org.apache.commons.cli.DefaultParserTest.txt
mv target/pit-reports target/org.apache.commons.cli.DefaultParserTest
cp -r target/org.apache.commons.cli.DefaultParserTest /home/dorma10/mutation-analysis/mutation_results/commons-cli

rm -rf target/org.apache.commons.cli.DefaultParserTest

python3 /home/dorma10/mutation-analysis/effectiveness/mutation/pom_changer.py commons-cli org.apache.commons.cli.OptionBuilder org.apache.commons.cli.OptionBuilderTest DEFAULT
echo '* Mutating org.apache.commons.cli.OptionBuilder with operator DEFAULT'
timeout 20m mvn org.pitest:pitest-maven:mutationCoverage -X -DoutputFormats=HTML --log-file ../../logs/org.apache.commons.cli.OptionBuilderTest.txt
mv target/pit-reports target/org.apache.commons.cli.OptionBuilderTest
cp -r target/org.apache.commons.cli.OptionBuilderTest /home/dorma10/mutation-analysis/mutation_results/commons-cli

rm -rf target/org.apache.commons.cli.OptionBuilderTest

python3 /home/dorma10/mutation-analysis/effectiveness/mutation/pom_changer.py commons-cli org.apache.commons.cli.Util org.apache.commons.cli.UtilTest DEFAULT
echo '* Mutating org.apache.commons.cli.Util with operator DEFAULT'
timeout 20m mvn org.pitest:pitest-maven:mutationCoverage -X -DoutputFormats=HTML --log-file ../../logs/org.apache.commons.cli.UtilTest.txt
mv target/pit-reports target/org.apache.commons.cli.UtilTest
cp -r target/org.apache.commons.cli.UtilTest /home/dorma10/mutation-analysis/mutation_results/commons-cli

rm -rf target/org.apache.commons.cli.UtilTest

python3 /home/dorma10/mutation-analysis/effectiveness/mutation/pom_changer.py commons-cli org.apache.commons.cli.PosixParser org.apache.commons.cli.PosixParserTest DEFAULT
echo '* Mutating org.apache.commons.cli.PosixParser with operator DEFAULT'
timeout 20m mvn org.pitest:pitest-maven:mutationCoverage -X -DoutputFormats=HTML --log-file ../../logs/org.apache.commons.cli.PosixParserTest.txt
mv target/pit-reports target/org.apache.commons.cli.PosixParserTest
cp -r target/org.apache.commons.cli.PosixParserTest /home/dorma10/mutation-analysis/mutation_results/commons-cli

rm -rf target/org.apache.commons.cli.PosixParserTest

python3 /home/dorma10/mutation-analysis/effectiveness/mutation/pom_changer.py commons-cli org.apache.commons.cli.HelpFormatter org.apache.commons.cli.HelpFormatterTest DEFAULT
echo '* Mutating org.apache.commons.cli.HelpFormatter with operator DEFAULT'
timeout 20m mvn org.pitest:pitest-maven:mutationCoverage -X -DoutputFormats=HTML --log-file ../../logs/org.apache.commons.cli.HelpFormatterTest.txt
mv target/pit-reports target/org.apache.commons.cli.HelpFormatterTest
cp -r target/org.apache.commons.cli.HelpFormatterTest /home/dorma10/mutation-analysis/mutation_results/commons-cli

rm -rf target/org.apache.commons.cli.HelpFormatterTest
echo '* Restoring original pom'
rm -rf pom.xml
mv cached_pom.xml pom.xml
cd ../..

echo '* 2 out of 9 -> commons-codec'
mkdir /home/dorma10/mutation-analysis/mutation_results/commons-codec


echo '* Compiling commons-codec'
cd /home/dorma10/mutation-analysis/projects/commons-codec

echo '* Caching original pom'
cp pom.xml cached_pom.xml

python3 /home/dorma10/mutation-analysis/effectiveness/mutation/pom_changer.py commons-codec org.apache.commons.codec.Charsets org.apache.commons.codec.CharsetsTest DEFAULT
echo '* Mutating org.apache.commons.codec.Charsets with operator DEFAULT'
timeout 20m mvn org.pitest:pitest-maven:mutationCoverage -X -DoutputFormats=HTML --log-file ../../logs/org.apache.commons.codec.CharsetsTest.txt
mv target/pit-reports target/org.apache.commons.codec.CharsetsTest
cp -r target/org.apache.commons.codec.CharsetsTest /home/dorma10/mutation-analysis/mutation_results/commons-codec

rm -rf target/org.apache.commons.codec.CharsetsTest

python3 /home/dorma10/mutation-analysis/effectiveness/mutation/pom_changer.py commons-codec org.apache.commons.codec.StringEncoderComparator org.apache.commons.codec.StringEncoderComparatorTest DEFAULT
echo '* Mutating org.apache.commons.codec.StringEncoderComparator with operator DEFAULT'
timeout 20m mvn org.pitest:pitest-maven:mutationCoverage -X -DoutputFormats=HTML --log-file ../../logs/org.apache.commons.codec.StringEncoderComparatorTest.txt
mv target/pit-reports target/org.apache.commons.codec.StringEncoderComparatorTest
cp -r target/org.apache.commons.codec.StringEncoderComparatorTest /home/dorma10/mutation-analysis/mutation_results/commons-codec

rm -rf target/org.apache.commons.codec.StringEncoderComparatorTest

python3 /home/dorma10/mutation-analysis/effectiveness/mutation/pom_changer.py commons-codec org.apache.commons.codec.DecoderException org.apache.commons.codec.DecoderExceptionTest DEFAULT
echo '* Mutating org.apache.commons.codec.DecoderException with operator DEFAULT'
timeout 20m mvn org.pitest:pitest-maven:mutationCoverage -X -DoutputFormats=HTML --log-file ../../logs/org.apache.commons.codec.DecoderExceptionTest.txt
mv target/pit-reports target/org.apache.commons.codec.DecoderExceptionTest
cp -r target/org.apache.commons.codec.DecoderExceptionTest /home/dorma10/mutation-analysis/mutation_results/commons-codec

rm -rf target/org.apache.commons.codec.DecoderExceptionTest

python3 /home/dorma10/mutation-analysis/effectiveness/mutation/pom_changer.py commons-codec org.apache.commons.codec.CharEncoding org.apache.commons.codec.CharEncodingTest DEFAULT
echo '* Mutating org.apache.commons.codec.CharEncoding with operator DEFAULT'
timeout 20m mvn org.pitest:pitest-maven:mutationCoverage -X -DoutputFormats=HTML --log-file ../../logs/org.apache.commons.codec.CharEncodingTest.txt
mv target/pit-reports target/org.apache.commons.codec.CharEncodingTest
cp -r target/org.apache.commons.codec.CharEncodingTest /home/dorma10/mutation-analysis/mutation_results/commons-codec

rm -rf target/org.apache.commons.codec.CharEncodingTest

python3 /home/dorma10/mutation-analysis/effectiveness/mutation/pom_changer.py commons-codec org.apache.commons.codec.EncoderException org.apache.commons.codec.EncoderExceptionTest DEFAULT
echo '* Mutating org.apache.commons.codec.EncoderException with operator DEFAULT'
timeout 20m mvn org.pitest:pitest-maven:mutationCoverage -X -DoutputFormats=HTML --log-file ../../logs/org.apache.commons.codec.EncoderExceptionTest.txt
mv target/pit-reports target/org.apache.commons.codec.EncoderExceptionTest
cp -r target/org.apache.commons.codec.EncoderExceptionTest /home/dorma10/mutation-analysis/mutation_results/commons-codec

rm -rf target/org.apache.commons.codec.EncoderExceptionTest

python3 /home/dorma10/mutation-analysis/effectiveness/mutation/pom_changer.py commons-codec org.apache.commons.codec.net.QCodec org.apache.commons.codec.net.QCodecTest DEFAULT
echo '* Mutating org.apache.commons.codec.net.QCodec with operator DEFAULT'
timeout 20m mvn org.pitest:pitest-maven:mutationCoverage -X -DoutputFormats=HTML --log-file ../../logs/org.apache.commons.codec.net.QCodecTest.txt
mv target/pit-reports target/org.apache.commons.codec.net.QCodecTest
cp -r target/org.apache.commons.codec.net.QCodecTest /home/dorma10/mutation-analysis/mutation_results/commons-codec

rm -rf target/org.apache.commons.codec.net.QCodecTest

python3 /home/dorma10/mutation-analysis/effectiveness/mutation/pom_changer.py commons-codec org.apache.commons.codec.net.URLCodec org.apache.commons.codec.net.URLCodecTest DEFAULT
echo '* Mutating org.apache.commons.codec.net.URLCodec with operator DEFAULT'
timeout 20m mvn org.pitest:pitest-maven:mutationCoverage -X -DoutputFormats=HTML --log-file ../../logs/org.apache.commons.codec.net.URLCodecTest.txt
mv target/pit-reports target/org.apache.commons.codec.net.URLCodecTest
cp -r target/org.apache.commons.codec.net.URLCodecTest /home/dorma10/mutation-analysis/mutation_results/commons-codec

rm -rf target/org.apache.commons.codec.net.URLCodecTest

python3 /home/dorma10/mutation-analysis/effectiveness/mutation/pom_changer.py commons-codec org.apache.commons.codec.net.Utils org.apache.commons.codec.net.UtilsTest DEFAULT
echo '* Mutating org.apache.commons.codec.net.Utils with operator DEFAULT'
timeout 20m mvn org.pitest:pitest-maven:mutationCoverage -X -DoutputFormats=HTML --log-file ../../logs/org.apache.commons.codec.net.UtilsTest.txt
mv target/pit-reports target/org.apache.commons.codec.net.UtilsTest
cp -r target/org.apache.commons.codec.net.UtilsTest /home/dorma10/mutation-analysis/mutation_results/commons-codec

rm -rf target/org.apache.commons.codec.net.UtilsTest

python3 /home/dorma10/mutation-analysis/effectiveness/mutation/pom_changer.py commons-codec org.apache.commons.codec.net.RFC1522Codec org.apache.commons.codec.net.RFC1522CodecTest DEFAULT
echo '* Mutating org.apache.commons.codec.net.RFC1522Codec with operator DEFAULT'
timeout 20m mvn org.pitest:pitest-maven:mutationCoverage -X -DoutputFormats=HTML --log-file ../../logs/org.apache.commons.codec.net.RFC1522CodecTest.txt
mv target/pit-reports target/org.apache.commons.codec.net.RFC1522CodecTest
cp -r target/org.apache.commons.codec.net.RFC1522CodecTest /home/dorma10/mutation-analysis/mutation_results/commons-codec

rm -rf target/org.apache.commons.codec.net.RFC1522CodecTest

python3 /home/dorma10/mutation-analysis/effectiveness/mutation/pom_changer.py commons-codec org.apache.commons.codec.net.QuotedPrintableCodec org.apache.commons.codec.net.QuotedPrintableCodecTest DEFAULT
echo '* Mutating org.apache.commons.codec.net.QuotedPrintableCodec with operator DEFAULT'
timeout 20m mvn org.pitest:pitest-maven:mutationCoverage -X -DoutputFormats=HTML --log-file ../../logs/org.apache.commons.codec.net.QuotedPrintableCodecTest.txt
mv target/pit-reports target/org.apache.commons.codec.net.QuotedPrintableCodecTest
cp -r target/org.apache.commons.codec.net.QuotedPrintableCodecTest /home/dorma10/mutation-analysis/mutation_results/commons-codec

rm -rf target/org.apache.commons.codec.net.QuotedPrintableCodecTest

python3 /home/dorma10/mutation-analysis/effectiveness/mutation/pom_changer.py commons-codec org.apache.commons.codec.net.PercentCodec org.apache.commons.codec.net.PercentCodecTest DEFAULT
echo '* Mutating org.apache.commons.codec.net.PercentCodec with operator DEFAULT'
timeout 20m mvn org.pitest:pitest-maven:mutationCoverage -X -DoutputFormats=HTML --log-file ../../logs/org.apache.commons.codec.net.PercentCodecTest.txt
mv target/pit-reports target/org.apache.commons.codec.net.PercentCodecTest
cp -r target/org.apache.commons.codec.net.PercentCodecTest /home/dorma10/mutation-analysis/mutation_results/commons-codec

rm -rf target/org.apache.commons.codec.net.PercentCodecTest

python3 /home/dorma10/mutation-analysis/effectiveness/mutation/pom_changer.py commons-codec org.apache.commons.codec.net.BCodec org.apache.commons.codec.net.BCodecTest DEFAULT
echo '* Mutating org.apache.commons.codec.net.BCodec with operator DEFAULT'
timeout 20m mvn org.pitest:pitest-maven:mutationCoverage -X -DoutputFormats=HTML --log-file ../../logs/org.apache.commons.codec.net.BCodecTest.txt
mv target/pit-reports target/org.apache.commons.codec.net.BCodecTest
cp -r target/org.apache.commons.codec.net.BCodecTest /home/dorma10/mutation-analysis/mutation_results/commons-codec

rm -rf target/org.apache.commons.codec.net.BCodecTest

python3 /home/dorma10/mutation-analysis/effectiveness/mutation/pom_changer.py commons-codec org.apache.commons.codec.language.DaitchMokotoffSoundex org.apache.commons.codec.language.DaitchMokotoffSoundexTest DEFAULT
echo '* Mutating org.apache.commons.codec.language.DaitchMokotoffSoundex with operator DEFAULT'
timeout 20m mvn org.pitest:pitest-maven:mutationCoverage -X -DoutputFormats=HTML --log-file ../../logs/org.apache.commons.codec.language.DaitchMokotoffSoundexTest.txt
mv target/pit-reports target/org.apache.commons.codec.language.DaitchMokotoffSoundexTest
cp -r target/org.apache.commons.codec.language.DaitchMokotoffSoundexTest /home/dorma10/mutation-analysis/mutation_results/commons-codec

rm -rf target/org.apache.commons.codec.language.DaitchMokotoffSoundexTest

python3 /home/dorma10/mutation-analysis/effectiveness/mutation/pom_changer.py commons-codec org.apache.commons.codec.language.Caverphone2 org.apache.commons.codec.language.Caverphone2Test DEFAULT
echo '* Mutating org.apache.commons.codec.language.Caverphone2 with operator DEFAULT'
timeout 20m mvn org.pitest:pitest-maven:mutationCoverage -X -DoutputFormats=HTML --log-file ../../logs/org.apache.commons.codec.language.Caverphone2Test.txt
mv target/pit-reports target/org.apache.commons.codec.language.Caverphone2Test
cp -r target/org.apache.commons.codec.language.Caverphone2Test /home/dorma10/mutation-analysis/mutation_results/commons-codec

rm -rf target/org.apache.commons.codec.language.Caverphone2Test

python3 /home/dorma10/mutation-analysis/effectiveness/mutation/pom_changer.py commons-codec org.apache.commons.codec.language.Metaphone org.apache.commons.codec.language.MetaphoneTest DEFAULT
echo '* Mutating org.apache.commons.codec.language.Metaphone with operator DEFAULT'
timeout 20m mvn org.pitest:pitest-maven:mutationCoverage -X -DoutputFormats=HTML --log-file ../../logs/org.apache.commons.codec.language.MetaphoneTest.txt
mv target/pit-reports target/org.apache.commons.codec.language.MetaphoneTest
cp -r target/org.apache.commons.codec.language.MetaphoneTest /home/dorma10/mutation-analysis/mutation_results/commons-codec

rm -rf target/org.apache.commons.codec.language.MetaphoneTest

python3 /home/dorma10/mutation-analysis/effectiveness/mutation/pom_changer.py commons-codec org.apache.commons.codec.language.Nysiis org.apache.commons.codec.language.NysiisTest DEFAULT
echo '* Mutating org.apache.commons.codec.language.Nysiis with operator DEFAULT'
timeout 20m mvn org.pitest:pitest-maven:mutationCoverage -X -DoutputFormats=HTML --log-file ../../logs/org.apache.commons.codec.language.NysiisTest.txt
mv target/pit-reports target/org.apache.commons.codec.language.NysiisTest
cp -r target/org.apache.commons.codec.language.NysiisTest /home/dorma10/mutation-analysis/mutation_results/commons-codec

rm -rf target/org.apache.commons.codec.language.NysiisTest

python3 /home/dorma10/mutation-analysis/effectiveness/mutation/pom_changer.py commons-codec org.apache.commons.codec.language.DoubleMetaphone org.apache.commons.codec.language.DoubleMetaphoneTest DEFAULT
echo '* Mutating org.apache.commons.codec.language.DoubleMetaphone with operator DEFAULT'
timeout 20m mvn org.pitest:pitest-maven:mutationCoverage -X -DoutputFormats=HTML --log-file ../../logs/org.apache.commons.codec.language.DoubleMetaphoneTest.txt
mv target/pit-reports target/org.apache.commons.codec.language.DoubleMetaphoneTest
cp -r target/org.apache.commons.codec.language.DoubleMetaphoneTest /home/dorma10/mutation-analysis/mutation_results/commons-codec

rm -rf target/org.apache.commons.codec.language.DoubleMetaphoneTest

python3 /home/dorma10/mutation-analysis/effectiveness/mutation/pom_changer.py commons-codec org.apache.commons.codec.language.MatchRatingApproachEncoder org.apache.commons.codec.language.MatchRatingApproachEncoderTest DEFAULT
echo '* Mutating org.apache.commons.codec.language.MatchRatingApproachEncoder with operator DEFAULT'
timeout 20m mvn org.pitest:pitest-maven:mutationCoverage -X -DoutputFormats=HTML --log-file ../../logs/org.apache.commons.codec.language.MatchRatingApproachEncoderTest.txt
mv target/pit-reports target/org.apache.commons.codec.language.MatchRatingApproachEncoderTest
cp -r target/org.apache.commons.codec.language.MatchRatingApproachEncoderTest /home/dorma10/mutation-analysis/mutation_results/commons-codec

rm -rf target/org.apache.commons.codec.language.MatchRatingApproachEncoderTest

python3 /home/dorma10/mutation-analysis/effectiveness/mutation/pom_changer.py commons-codec org.apache.commons.codec.language.ColognePhonetic org.apache.commons.codec.language.ColognePhoneticTest DEFAULT
echo '* Mutating org.apache.commons.codec.language.ColognePhonetic with operator DEFAULT'
timeout 20m mvn org.pitest:pitest-maven:mutationCoverage -X -DoutputFormats=HTML --log-file ../../logs/org.apache.commons.codec.language.ColognePhoneticTest.txt
mv target/pit-reports target/org.apache.commons.codec.language.ColognePhoneticTest
cp -r target/org.apache.commons.codec.language.ColognePhoneticTest /home/dorma10/mutation-analysis/mutation_results/commons-codec

rm -rf target/org.apache.commons.codec.language.ColognePhoneticTest

python3 /home/dorma10/mutation-analysis/effectiveness/mutation/pom_changer.py commons-codec org.apache.commons.codec.language.RefinedSoundex org.apache.commons.codec.language.RefinedSoundexTest DEFAULT
echo '* Mutating org.apache.commons.codec.language.RefinedSoundex with operator DEFAULT'
timeout 20m mvn org.pitest:pitest-maven:mutationCoverage -X -DoutputFormats=HTML --log-file ../../logs/org.apache.commons.codec.language.RefinedSoundexTest.txt
mv target/pit-reports target/org.apache.commons.codec.language.RefinedSoundexTest
cp -r target/org.apache.commons.codec.language.RefinedSoundexTest /home/dorma10/mutation-analysis/mutation_results/commons-codec

rm -rf target/org.apache.commons.codec.language.RefinedSoundexTest

python3 /home/dorma10/mutation-analysis/effectiveness/mutation/pom_changer.py commons-codec org.apache.commons.codec.language.Caverphone1 org.apache.commons.codec.language.Caverphone1Test DEFAULT
echo '* Mutating org.apache.commons.codec.language.Caverphone1 with operator DEFAULT'
timeout 20m mvn org.pitest:pitest-maven:mutationCoverage -X -DoutputFormats=HTML --log-file ../../logs/org.apache.commons.codec.language.Caverphone1Test.txt
mv target/pit-reports target/org.apache.commons.codec.language.Caverphone1Test
cp -r target/org.apache.commons.codec.language.Caverphone1Test /home/dorma10/mutation-analysis/mutation_results/commons-codec

rm -rf target/org.apache.commons.codec.language.Caverphone1Test

python3 /home/dorma10/mutation-analysis/effectiveness/mutation/pom_changer.py commons-codec org.apache.commons.codec.language.Soundex org.apache.commons.codec.language.SoundexTest DEFAULT
echo '* Mutating org.apache.commons.codec.language.Soundex with operator DEFAULT'
timeout 20m mvn org.pitest:pitest-maven:mutationCoverage -X -DoutputFormats=HTML --log-file ../../logs/org.apache.commons.codec.language.SoundexTest.txt
mv target/pit-reports target/org.apache.commons.codec.language.SoundexTest
cp -r target/org.apache.commons.codec.language.SoundexTest /home/dorma10/mutation-analysis/mutation_results/commons-codec

rm -rf target/org.apache.commons.codec.language.SoundexTest

python3 /home/dorma10/mutation-analysis/effectiveness/mutation/pom_changer.py commons-codec org.apache.commons.codec.language.bm.BeiderMorseEncoder org.apache.commons.codec.language.bm.BeiderMorseEncoderTest DEFAULT
echo '* Mutating org.apache.commons.codec.language.bm.BeiderMorseEncoder with operator DEFAULT'
timeout 20m mvn org.pitest:pitest-maven:mutationCoverage -X -DoutputFormats=HTML --log-file ../../logs/org.apache.commons.codec.language.bm.BeiderMorseEncoderTest.txt
mv target/pit-reports target/org.apache.commons.codec.language.bm.BeiderMorseEncoderTest
cp -r target/org.apache.commons.codec.language.bm.BeiderMorseEncoderTest /home/dorma10/mutation-analysis/mutation_results/commons-codec

rm -rf target/org.apache.commons.codec.language.bm.BeiderMorseEncoderTest

python3 /home/dorma10/mutation-analysis/effectiveness/mutation/pom_changer.py commons-codec org.apache.commons.codec.language.bm.PhoneticEngine org.apache.commons.codec.language.bm.PhoneticEngineTest DEFAULT
echo '* Mutating org.apache.commons.codec.language.bm.PhoneticEngine with operator DEFAULT'
timeout 20m mvn org.pitest:pitest-maven:mutationCoverage -X -DoutputFormats=HTML --log-file ../../logs/org.apache.commons.codec.language.bm.PhoneticEngineTest.txt
mv target/pit-reports target/org.apache.commons.codec.language.bm.PhoneticEngineTest
cp -r target/org.apache.commons.codec.language.bm.PhoneticEngineTest /home/dorma10/mutation-analysis/mutation_results/commons-codec

rm -rf target/org.apache.commons.codec.language.bm.PhoneticEngineTest

python3 /home/dorma10/mutation-analysis/effectiveness/mutation/pom_changer.py commons-codec org.apache.commons.codec.language.bm.Rule org.apache.commons.codec.language.bm.RuleTest DEFAULT
echo '* Mutating org.apache.commons.codec.language.bm.Rule with operator DEFAULT'
timeout 20m mvn org.pitest:pitest-maven:mutationCoverage -X -DoutputFormats=HTML --log-file ../../logs/org.apache.commons.codec.language.bm.RuleTest.txt
mv target/pit-reports target/org.apache.commons.codec.language.bm.RuleTest
cp -r target/org.apache.commons.codec.language.bm.RuleTest /home/dorma10/mutation-analysis/mutation_results/commons-codec

rm -rf target/org.apache.commons.codec.language.bm.RuleTest

python3 /home/dorma10/mutation-analysis/effectiveness/mutation/pom_changer.py commons-codec org.apache.commons.codec.binary.Base32InputStream org.apache.commons.codec.binary.Base32InputStreamTest DEFAULT
echo '* Mutating org.apache.commons.codec.binary.Base32InputStream with operator DEFAULT'
timeout 20m mvn org.pitest:pitest-maven:mutationCoverage -X -DoutputFormats=HTML --log-file ../../logs/org.apache.commons.codec.binary.Base32InputStreamTest.txt
mv target/pit-reports target/org.apache.commons.codec.binary.Base32InputStreamTest
cp -r target/org.apache.commons.codec.binary.Base32InputStreamTest /home/dorma10/mutation-analysis/mutation_results/commons-codec

rm -rf target/org.apache.commons.codec.binary.Base32InputStreamTest

python3 /home/dorma10/mutation-analysis/effectiveness/mutation/pom_changer.py commons-codec org.apache.commons.codec.binary.BinaryCodec org.apache.commons.codec.binary.BinaryCodecTest DEFAULT
echo '* Mutating org.apache.commons.codec.binary.BinaryCodec with operator DEFAULT'
timeout 20m mvn org.pitest:pitest-maven:mutationCoverage -X -DoutputFormats=HTML --log-file ../../logs/org.apache.commons.codec.binary.BinaryCodecTest.txt
mv target/pit-reports target/org.apache.commons.codec.binary.BinaryCodecTest
cp -r target/org.apache.commons.codec.binary.BinaryCodecTest /home/dorma10/mutation-analysis/mutation_results/commons-codec

rm -rf target/org.apache.commons.codec.binary.BinaryCodecTest

python3 /home/dorma10/mutation-analysis/effectiveness/mutation/pom_changer.py commons-codec org.apache.commons.codec.binary.Base32 org.apache.commons.codec.binary.Base32Test DEFAULT
echo '* Mutating org.apache.commons.codec.binary.Base32 with operator DEFAULT'
timeout 20m mvn org.pitest:pitest-maven:mutationCoverage -X -DoutputFormats=HTML --log-file ../../logs/org.apache.commons.codec.binary.Base32Test.txt
mv target/pit-reports target/org.apache.commons.codec.binary.Base32Test
cp -r target/org.apache.commons.codec.binary.Base32Test /home/dorma10/mutation-analysis/mutation_results/commons-codec

rm -rf target/org.apache.commons.codec.binary.Base32Test

python3 /home/dorma10/mutation-analysis/effectiveness/mutation/pom_changer.py commons-codec org.apache.commons.codec.binary.Base64OutputStream org.apache.commons.codec.binary.Base64OutputStreamTest DEFAULT
echo '* Mutating org.apache.commons.codec.binary.Base64OutputStream with operator DEFAULT'
timeout 20m mvn org.pitest:pitest-maven:mutationCoverage -X -DoutputFormats=HTML --log-file ../../logs/org.apache.commons.codec.binary.Base64OutputStreamTest.txt
mv target/pit-reports target/org.apache.commons.codec.binary.Base64OutputStreamTest
cp -r target/org.apache.commons.codec.binary.Base64OutputStreamTest /home/dorma10/mutation-analysis/mutation_results/commons-codec

rm -rf target/org.apache.commons.codec.binary.Base64OutputStreamTest

python3 /home/dorma10/mutation-analysis/effectiveness/mutation/pom_changer.py commons-codec org.apache.commons.codec.binary.Base64InputStream org.apache.commons.codec.binary.Base64InputStreamTest DEFAULT
echo '* Mutating org.apache.commons.codec.binary.Base64InputStream with operator DEFAULT'
timeout 20m mvn org.pitest:pitest-maven:mutationCoverage -X -DoutputFormats=HTML --log-file ../../logs/org.apache.commons.codec.binary.Base64InputStreamTest.txt
mv target/pit-reports target/org.apache.commons.codec.binary.Base64InputStreamTest
cp -r target/org.apache.commons.codec.binary.Base64InputStreamTest /home/dorma10/mutation-analysis/mutation_results/commons-codec

rm -rf target/org.apache.commons.codec.binary.Base64InputStreamTest

python3 /home/dorma10/mutation-analysis/effectiveness/mutation/pom_changer.py commons-codec org.apache.commons.codec.binary.BaseNCodec org.apache.commons.codec.binary.BaseNCodecTest DEFAULT
echo '* Mutating org.apache.commons.codec.binary.BaseNCodec with operator DEFAULT'
timeout 20m mvn org.pitest:pitest-maven:mutationCoverage -X -DoutputFormats=HTML --log-file ../../logs/org.apache.commons.codec.binary.BaseNCodecTest.txt
mv target/pit-reports target/org.apache.commons.codec.binary.BaseNCodecTest
cp -r target/org.apache.commons.codec.binary.BaseNCodecTest /home/dorma10/mutation-analysis/mutation_results/commons-codec

rm -rf target/org.apache.commons.codec.binary.BaseNCodecTest

python3 /home/dorma10/mutation-analysis/effectiveness/mutation/pom_changer.py commons-codec org.apache.commons.codec.binary.StringUtils org.apache.commons.codec.binary.StringUtilsTest DEFAULT
echo '* Mutating org.apache.commons.codec.binary.StringUtils with operator DEFAULT'
timeout 20m mvn org.pitest:pitest-maven:mutationCoverage -X -DoutputFormats=HTML --log-file ../../logs/org.apache.commons.codec.binary.StringUtilsTest.txt
mv target/pit-reports target/org.apache.commons.codec.binary.StringUtilsTest
cp -r target/org.apache.commons.codec.binary.StringUtilsTest /home/dorma10/mutation-analysis/mutation_results/commons-codec

rm -rf target/org.apache.commons.codec.binary.StringUtilsTest

python3 /home/dorma10/mutation-analysis/effectiveness/mutation/pom_changer.py commons-codec org.apache.commons.codec.binary.Hex org.apache.commons.codec.binary.HexTest DEFAULT
echo '* Mutating org.apache.commons.codec.binary.Hex with operator DEFAULT'
timeout 20m mvn org.pitest:pitest-maven:mutationCoverage -X -DoutputFormats=HTML --log-file ../../logs/org.apache.commons.codec.binary.HexTest.txt
mv target/pit-reports target/org.apache.commons.codec.binary.HexTest
cp -r target/org.apache.commons.codec.binary.HexTest /home/dorma10/mutation-analysis/mutation_results/commons-codec

rm -rf target/org.apache.commons.codec.binary.HexTest

python3 /home/dorma10/mutation-analysis/effectiveness/mutation/pom_changer.py commons-codec org.apache.commons.codec.binary.Base32OutputStream org.apache.commons.codec.binary.Base32OutputStreamTest DEFAULT
echo '* Mutating org.apache.commons.codec.binary.Base32OutputStream with operator DEFAULT'
timeout 20m mvn org.pitest:pitest-maven:mutationCoverage -X -DoutputFormats=HTML --log-file ../../logs/org.apache.commons.codec.binary.Base32OutputStreamTest.txt
mv target/pit-reports target/org.apache.commons.codec.binary.Base32OutputStreamTest
cp -r target/org.apache.commons.codec.binary.Base32OutputStreamTest /home/dorma10/mutation-analysis/mutation_results/commons-codec

rm -rf target/org.apache.commons.codec.binary.Base32OutputStreamTest

python3 /home/dorma10/mutation-analysis/effectiveness/mutation/pom_changer.py commons-codec org.apache.commons.codec.binary.Base64 org.apache.commons.codec.binary.Base64Test DEFAULT
echo '* Mutating org.apache.commons.codec.binary.Base64 with operator DEFAULT'
timeout 20m mvn org.pitest:pitest-maven:mutationCoverage -X -DoutputFormats=HTML --log-file ../../logs/org.apache.commons.codec.binary.Base64Test.txt
mv target/pit-reports target/org.apache.commons.codec.binary.Base64Test
cp -r target/org.apache.commons.codec.binary.Base64Test /home/dorma10/mutation-analysis/mutation_results/commons-codec

rm -rf target/org.apache.commons.codec.binary.Base64Test

python3 /home/dorma10/mutation-analysis/effectiveness/mutation/pom_changer.py commons-codec org.apache.commons.codec.digest.DigestUtils org.apache.commons.codec.digest.DigestUtilsTest DEFAULT
echo '* Mutating org.apache.commons.codec.digest.DigestUtils with operator DEFAULT'
timeout 20m mvn org.pitest:pitest-maven:mutationCoverage -X -DoutputFormats=HTML --log-file ../../logs/org.apache.commons.codec.digest.DigestUtilsTest.txt
mv target/pit-reports target/org.apache.commons.codec.digest.DigestUtilsTest
cp -r target/org.apache.commons.codec.digest.DigestUtilsTest /home/dorma10/mutation-analysis/mutation_results/commons-codec

rm -rf target/org.apache.commons.codec.digest.DigestUtilsTest

python3 /home/dorma10/mutation-analysis/effectiveness/mutation/pom_changer.py commons-codec org.apache.commons.codec.digest.PureJavaCrc32C org.apache.commons.codec.digest.PureJavaCrc32CTest DEFAULT
echo '* Mutating org.apache.commons.codec.digest.PureJavaCrc32C with operator DEFAULT'
timeout 20m mvn org.pitest:pitest-maven:mutationCoverage -X -DoutputFormats=HTML --log-file ../../logs/org.apache.commons.codec.digest.PureJavaCrc32CTest.txt
mv target/pit-reports target/org.apache.commons.codec.digest.PureJavaCrc32CTest
cp -r target/org.apache.commons.codec.digest.PureJavaCrc32CTest /home/dorma10/mutation-analysis/mutation_results/commons-codec

rm -rf target/org.apache.commons.codec.digest.PureJavaCrc32CTest

python3 /home/dorma10/mutation-analysis/effectiveness/mutation/pom_changer.py commons-codec org.apache.commons.codec.digest.Crypt org.apache.commons.codec.digest.CryptTest DEFAULT
echo '* Mutating org.apache.commons.codec.digest.Crypt with operator DEFAULT'
timeout 20m mvn org.pitest:pitest-maven:mutationCoverage -X -DoutputFormats=HTML --log-file ../../logs/org.apache.commons.codec.digest.CryptTest.txt
mv target/pit-reports target/org.apache.commons.codec.digest.CryptTest
cp -r target/org.apache.commons.codec.digest.CryptTest /home/dorma10/mutation-analysis/mutation_results/commons-codec

rm -rf target/org.apache.commons.codec.digest.CryptTest

python3 /home/dorma10/mutation-analysis/effectiveness/mutation/pom_changer.py commons-codec org.apache.commons.codec.digest.B64 org.apache.commons.codec.digest.B64Test DEFAULT
echo '* Mutating org.apache.commons.codec.digest.B64 with operator DEFAULT'
timeout 20m mvn org.pitest:pitest-maven:mutationCoverage -X -DoutputFormats=HTML --log-file ../../logs/org.apache.commons.codec.digest.B64Test.txt
mv target/pit-reports target/org.apache.commons.codec.digest.B64Test
cp -r target/org.apache.commons.codec.digest.B64Test /home/dorma10/mutation-analysis/mutation_results/commons-codec

rm -rf target/org.apache.commons.codec.digest.B64Test

python3 /home/dorma10/mutation-analysis/effectiveness/mutation/pom_changer.py commons-codec org.apache.commons.codec.digest.MurmurHash2 org.apache.commons.codec.digest.MurmurHash2Test DEFAULT
echo '* Mutating org.apache.commons.codec.digest.MurmurHash2 with operator DEFAULT'
timeout 20m mvn org.pitest:pitest-maven:mutationCoverage -X -DoutputFormats=HTML --log-file ../../logs/org.apache.commons.codec.digest.MurmurHash2Test.txt
mv target/pit-reports target/org.apache.commons.codec.digest.MurmurHash2Test
cp -r target/org.apache.commons.codec.digest.MurmurHash2Test /home/dorma10/mutation-analysis/mutation_results/commons-codec

rm -rf target/org.apache.commons.codec.digest.MurmurHash2Test

python3 /home/dorma10/mutation-analysis/effectiveness/mutation/pom_changer.py commons-codec org.apache.commons.codec.digest.HmacUtils org.apache.commons.codec.digest.HmacUtilsTest DEFAULT
echo '* Mutating org.apache.commons.codec.digest.HmacUtils with operator DEFAULT'
timeout 20m mvn org.pitest:pitest-maven:mutationCoverage -X -DoutputFormats=HTML --log-file ../../logs/org.apache.commons.codec.digest.HmacUtilsTest.txt
mv target/pit-reports target/org.apache.commons.codec.digest.HmacUtilsTest
cp -r target/org.apache.commons.codec.digest.HmacUtilsTest /home/dorma10/mutation-analysis/mutation_results/commons-codec

rm -rf target/org.apache.commons.codec.digest.HmacUtilsTest

python3 /home/dorma10/mutation-analysis/effectiveness/mutation/pom_changer.py commons-codec org.apache.commons.codec.digest.HmacAlgorithms org.apache.commons.codec.digest.HmacAlgorithmsTest DEFAULT
echo '* Mutating org.apache.commons.codec.digest.HmacAlgorithms with operator DEFAULT'
timeout 20m mvn org.pitest:pitest-maven:mutationCoverage -X -DoutputFormats=HTML --log-file ../../logs/org.apache.commons.codec.digest.HmacAlgorithmsTest.txt
mv target/pit-reports target/org.apache.commons.codec.digest.HmacAlgorithmsTest
cp -r target/org.apache.commons.codec.digest.HmacAlgorithmsTest /home/dorma10/mutation-analysis/mutation_results/commons-codec

rm -rf target/org.apache.commons.codec.digest.HmacAlgorithmsTest

python3 /home/dorma10/mutation-analysis/effectiveness/mutation/pom_changer.py commons-codec org.apache.commons.codec.digest.MessageDigestAlgorithms org.apache.commons.codec.digest.MessageDigestAlgorithmsTest DEFAULT
echo '* Mutating org.apache.commons.codec.digest.MessageDigestAlgorithms with operator DEFAULT'
timeout 20m mvn org.pitest:pitest-maven:mutationCoverage -X -DoutputFormats=HTML --log-file ../../logs/org.apache.commons.codec.digest.MessageDigestAlgorithmsTest.txt
mv target/pit-reports target/org.apache.commons.codec.digest.MessageDigestAlgorithmsTest
cp -r target/org.apache.commons.codec.digest.MessageDigestAlgorithmsTest /home/dorma10/mutation-analysis/mutation_results/commons-codec

rm -rf target/org.apache.commons.codec.digest.MessageDigestAlgorithmsTest

python3 /home/dorma10/mutation-analysis/effectiveness/mutation/pom_changer.py commons-codec org.apache.commons.codec.digest.UnixCrypt org.apache.commons.codec.digest.UnixCryptTest DEFAULT
echo '* Mutating org.apache.commons.codec.digest.UnixCrypt with operator DEFAULT'
timeout 20m mvn org.pitest:pitest-maven:mutationCoverage -X -DoutputFormats=HTML --log-file ../../logs/org.apache.commons.codec.digest.UnixCryptTest.txt
mv target/pit-reports target/org.apache.commons.codec.digest.UnixCryptTest
cp -r target/org.apache.commons.codec.digest.UnixCryptTest /home/dorma10/mutation-analysis/mutation_results/commons-codec

rm -rf target/org.apache.commons.codec.digest.UnixCryptTest

python3 /home/dorma10/mutation-analysis/effectiveness/mutation/pom_changer.py commons-codec org.apache.commons.codec.digest.Md5Crypt org.apache.commons.codec.digest.Md5CryptTest DEFAULT
echo '* Mutating org.apache.commons.codec.digest.Md5Crypt with operator DEFAULT'
timeout 20m mvn org.pitest:pitest-maven:mutationCoverage -X -DoutputFormats=HTML --log-file ../../logs/org.apache.commons.codec.digest.Md5CryptTest.txt
mv target/pit-reports target/org.apache.commons.codec.digest.Md5CryptTest
cp -r target/org.apache.commons.codec.digest.Md5CryptTest /home/dorma10/mutation-analysis/mutation_results/commons-codec

rm -rf target/org.apache.commons.codec.digest.Md5CryptTest

python3 /home/dorma10/mutation-analysis/effectiveness/mutation/pom_changer.py commons-codec org.apache.commons.codec.digest.Sha2Crypt org.apache.commons.codec.digest.Sha2CryptTest DEFAULT
echo '* Mutating org.apache.commons.codec.digest.Sha2Crypt with operator DEFAULT'
timeout 20m mvn org.pitest:pitest-maven:mutationCoverage -X -DoutputFormats=HTML --log-file ../../logs/org.apache.commons.codec.digest.Sha2CryptTest.txt
mv target/pit-reports target/org.apache.commons.codec.digest.Sha2CryptTest
cp -r target/org.apache.commons.codec.digest.Sha2CryptTest /home/dorma10/mutation-analysis/mutation_results/commons-codec

rm -rf target/org.apache.commons.codec.digest.Sha2CryptTest

python3 /home/dorma10/mutation-analysis/effectiveness/mutation/pom_changer.py commons-codec org.apache.commons.codec.digest.MurmurHash3 org.apache.commons.codec.digest.MurmurHash3Test DEFAULT
echo '* Mutating org.apache.commons.codec.digest.MurmurHash3 with operator DEFAULT'
timeout 20m mvn org.pitest:pitest-maven:mutationCoverage -X -DoutputFormats=HTML --log-file ../../logs/org.apache.commons.codec.digest.MurmurHash3Test.txt
mv target/pit-reports target/org.apache.commons.codec.digest.MurmurHash3Test
cp -r target/org.apache.commons.codec.digest.MurmurHash3Test /home/dorma10/mutation-analysis/mutation_results/commons-codec

rm -rf target/org.apache.commons.codec.digest.MurmurHash3Test

python3 /home/dorma10/mutation-analysis/effectiveness/mutation/pom_changer.py commons-codec org.apache.commons.codec.digest.XXHash32 org.apache.commons.codec.digest.XXHash32Test DEFAULT
echo '* Mutating org.apache.commons.codec.digest.XXHash32 with operator DEFAULT'
timeout 20m mvn org.pitest:pitest-maven:mutationCoverage -X -DoutputFormats=HTML --log-file ../../logs/org.apache.commons.codec.digest.XXHash32Test.txt
mv target/pit-reports target/org.apache.commons.codec.digest.XXHash32Test
cp -r target/org.apache.commons.codec.digest.XXHash32Test /home/dorma10/mutation-analysis/mutation_results/commons-codec

rm -rf target/org.apache.commons.codec.digest.XXHash32Test

python3 /home/dorma10/mutation-analysis/effectiveness/mutation/pom_changer.py commons-codec org.apache.commons.codec.digest.PureJavaCrc32 org.apache.commons.codec.digest.PureJavaCrc32Test DEFAULT
echo '* Mutating org.apache.commons.codec.digest.PureJavaCrc32 with operator DEFAULT'
timeout 20m mvn org.pitest:pitest-maven:mutationCoverage -X -DoutputFormats=HTML --log-file ../../logs/org.apache.commons.codec.digest.PureJavaCrc32Test.txt
mv target/pit-reports target/org.apache.commons.codec.digest.PureJavaCrc32Test
cp -r target/org.apache.commons.codec.digest.PureJavaCrc32Test /home/dorma10/mutation-analysis/mutation_results/commons-codec

rm -rf target/org.apache.commons.codec.digest.PureJavaCrc32Test
echo '* Restoring original pom'
rm -rf pom.xml
mv cached_pom.xml pom.xml
cd ../..

echo '* 3 out of 9 -> jackson-core'
mkdir /home/dorma10/mutation-analysis/mutation_results/jackson-core


echo '* Compiling jackson-core'
cd /home/dorma10/mutation-analysis/projects/jackson-core

echo '* Caching original pom'
cp pom.xml cached_pom.xml

python3 /home/dorma10/mutation-analysis/effectiveness/mutation/pom_changer.py jackson-core com.fasterxml.jackson.core.JsonpCharacterEscapes com.fasterxml.jackson.core.JsonpCharacterEscapesTest DEFAULT
echo '* Mutating com.fasterxml.jackson.core.JsonpCharacterEscapes with operator DEFAULT'
timeout 20m mvn org.pitest:pitest-maven:mutationCoverage -X -DoutputFormats=HTML --log-file ../../logs/com.fasterxml.jackson.core.JsonpCharacterEscapesTest.txt
mv target/pit-reports target/com.fasterxml.jackson.core.JsonpCharacterEscapesTest
cp -r target/com.fasterxml.jackson.core.JsonpCharacterEscapesTest /home/dorma10/mutation-analysis/mutation_results/jackson-core

rm -rf target/com.fasterxml.jackson.core.JsonpCharacterEscapesTest

python3 /home/dorma10/mutation-analysis/effectiveness/mutation/pom_changer.py jackson-core com.fasterxml.jackson.core.Version com.fasterxml.jackson.core.VersionTest DEFAULT
echo '* Mutating com.fasterxml.jackson.core.Version with operator DEFAULT'
timeout 20m mvn org.pitest:pitest-maven:mutationCoverage -X -DoutputFormats=HTML --log-file ../../logs/com.fasterxml.jackson.core.VersionTest.txt
mv target/pit-reports target/com.fasterxml.jackson.core.VersionTest
cp -r target/com.fasterxml.jackson.core.VersionTest /home/dorma10/mutation-analysis/mutation_results/jackson-core

rm -rf target/com.fasterxml.jackson.core.VersionTest

python3 /home/dorma10/mutation-analysis/effectiveness/mutation/pom_changer.py jackson-core com.fasterxml.jackson.core.io.SegmentedStringWriter com.fasterxml.jackson.core.io.SegmentedStringWriterTest DEFAULT
echo '* Mutating com.fasterxml.jackson.core.io.SegmentedStringWriter with operator DEFAULT'
timeout 20m mvn org.pitest:pitest-maven:mutationCoverage -X -DoutputFormats=HTML --log-file ../../logs/com.fasterxml.jackson.core.io.SegmentedStringWriterTest.txt
mv target/pit-reports target/com.fasterxml.jackson.core.io.SegmentedStringWriterTest
cp -r target/com.fasterxml.jackson.core.io.SegmentedStringWriterTest /home/dorma10/mutation-analysis/mutation_results/jackson-core

rm -rf target/com.fasterxml.jackson.core.io.SegmentedStringWriterTest

python3 /home/dorma10/mutation-analysis/effectiveness/mutation/pom_changer.py jackson-core com.fasterxml.jackson.core.io.UTF8Writer com.fasterxml.jackson.core.io.UTF8WriterTest DEFAULT
echo '* Mutating com.fasterxml.jackson.core.io.UTF8Writer with operator DEFAULT'
timeout 20m mvn org.pitest:pitest-maven:mutationCoverage -X -DoutputFormats=HTML --log-file ../../logs/com.fasterxml.jackson.core.io.UTF8WriterTest.txt
mv target/pit-reports target/com.fasterxml.jackson.core.io.UTF8WriterTest
cp -r target/com.fasterxml.jackson.core.io.UTF8WriterTest /home/dorma10/mutation-analysis/mutation_results/jackson-core

rm -rf target/com.fasterxml.jackson.core.io.UTF8WriterTest

python3 /home/dorma10/mutation-analysis/effectiveness/mutation/pom_changer.py jackson-core com.fasterxml.jackson.core.PrettyPrinter com.fasterxml.jackson.core.write.PrettyPrinterTest DEFAULT
echo '* Mutating com.fasterxml.jackson.core.PrettyPrinter with operator DEFAULT'
timeout 20m mvn org.pitest:pitest-maven:mutationCoverage -X -DoutputFormats=HTML --log-file ../../logs/com.fasterxml.jackson.core.write.PrettyPrinterTest.txt
mv target/pit-reports target/com.fasterxml.jackson.core.write.PrettyPrinterTest
cp -r target/com.fasterxml.jackson.core.write.PrettyPrinterTest /home/dorma10/mutation-analysis/mutation_results/jackson-core

rm -rf target/com.fasterxml.jackson.core.write.PrettyPrinterTest

python3 /home/dorma10/mutation-analysis/effectiveness/mutation/pom_changer.py jackson-core com.fasterxml.jackson.core.json.JsonReadContext com.fasterxml.jackson.core.json.JsonReadContextTest DEFAULT
echo '* Mutating com.fasterxml.jackson.core.json.JsonReadContext with operator DEFAULT'
timeout 20m mvn org.pitest:pitest-maven:mutationCoverage -X -DoutputFormats=HTML --log-file ../../logs/com.fasterxml.jackson.core.json.JsonReadContextTest.txt
mv target/pit-reports target/com.fasterxml.jackson.core.json.JsonReadContextTest
cp -r target/com.fasterxml.jackson.core.json.JsonReadContextTest /home/dorma10/mutation-analysis/mutation_results/jackson-core

rm -rf target/com.fasterxml.jackson.core.json.JsonReadContextTest

python3 /home/dorma10/mutation-analysis/effectiveness/mutation/pom_changer.py jackson-core com.fasterxml.jackson.core.JsonFactory com.fasterxml.jackson.core.json.JsonFactoryTest DEFAULT
echo '* Mutating com.fasterxml.jackson.core.JsonFactory with operator DEFAULT'
timeout 20m mvn org.pitest:pitest-maven:mutationCoverage -X -DoutputFormats=HTML --log-file ../../logs/com.fasterxml.jackson.core.json.JsonFactoryTest.txt
mv target/pit-reports target/com.fasterxml.jackson.core.json.JsonFactoryTest
cp -r target/com.fasterxml.jackson.core.json.JsonFactoryTest /home/dorma10/mutation-analysis/mutation_results/jackson-core

rm -rf target/com.fasterxml.jackson.core.json.JsonFactoryTest

python3 /home/dorma10/mutation-analysis/effectiveness/mutation/pom_changer.py jackson-core com.fasterxml.jackson.core.format.DataFormatMatcher com.fasterxml.jackson.core.format.DataFormatMatcherTest DEFAULT
echo '* Mutating com.fasterxml.jackson.core.format.DataFormatMatcher with operator DEFAULT'
timeout 20m mvn org.pitest:pitest-maven:mutationCoverage -X -DoutputFormats=HTML --log-file ../../logs/com.fasterxml.jackson.core.format.DataFormatMatcherTest.txt
mv target/pit-reports target/com.fasterxml.jackson.core.format.DataFormatMatcherTest
cp -r target/com.fasterxml.jackson.core.format.DataFormatMatcherTest /home/dorma10/mutation-analysis/mutation_results/jackson-core

rm -rf target/com.fasterxml.jackson.core.format.DataFormatMatcherTest

python3 /home/dorma10/mutation-analysis/effectiveness/mutation/pom_changer.py jackson-core com.fasterxml.jackson.core.util.VersionUtil com.fasterxml.jackson.core.util.VersionUtilTest DEFAULT
echo '* Mutating com.fasterxml.jackson.core.util.VersionUtil with operator DEFAULT'
timeout 20m mvn org.pitest:pitest-maven:mutationCoverage -X -DoutputFormats=HTML --log-file ../../logs/com.fasterxml.jackson.core.util.VersionUtilTest.txt
mv target/pit-reports target/com.fasterxml.jackson.core.util.VersionUtilTest
cp -r target/com.fasterxml.jackson.core.util.VersionUtilTest /home/dorma10/mutation-analysis/mutation_results/jackson-core

rm -rf target/com.fasterxml.jackson.core.util.VersionUtilTest

python3 /home/dorma10/mutation-analysis/effectiveness/mutation/pom_changer.py jackson-core com.fasterxml.jackson.core.util.RequestPayload com.fasterxml.jackson.core.util.RequestPayloadTest DEFAULT
echo '* Mutating com.fasterxml.jackson.core.util.RequestPayload with operator DEFAULT'
timeout 20m mvn org.pitest:pitest-maven:mutationCoverage -X -DoutputFormats=HTML --log-file ../../logs/com.fasterxml.jackson.core.util.RequestPayloadTest.txt
mv target/pit-reports target/com.fasterxml.jackson.core.util.RequestPayloadTest
cp -r target/com.fasterxml.jackson.core.util.RequestPayloadTest /home/dorma10/mutation-analysis/mutation_results/jackson-core

rm -rf target/com.fasterxml.jackson.core.util.RequestPayloadTest

python3 /home/dorma10/mutation-analysis/effectiveness/mutation/pom_changer.py jackson-core com.fasterxml.jackson.core.util.Separators com.fasterxml.jackson.core.util.SeparatorsTest DEFAULT
echo '* Mutating com.fasterxml.jackson.core.util.Separators with operator DEFAULT'
timeout 20m mvn org.pitest:pitest-maven:mutationCoverage -X -DoutputFormats=HTML --log-file ../../logs/com.fasterxml.jackson.core.util.SeparatorsTest.txt
mv target/pit-reports target/com.fasterxml.jackson.core.util.SeparatorsTest
cp -r target/com.fasterxml.jackson.core.util.SeparatorsTest /home/dorma10/mutation-analysis/mutation_results/jackson-core

rm -rf target/com.fasterxml.jackson.core.util.SeparatorsTest

python3 /home/dorma10/mutation-analysis/effectiveness/mutation/pom_changer.py jackson-core com.fasterxml.jackson.core.util.ByteArrayBuilder com.fasterxml.jackson.core.util.ByteArrayBuilderTest DEFAULT
echo '* Mutating com.fasterxml.jackson.core.util.ByteArrayBuilder with operator DEFAULT'
timeout 20m mvn org.pitest:pitest-maven:mutationCoverage -X -DoutputFormats=HTML --log-file ../../logs/com.fasterxml.jackson.core.util.ByteArrayBuilderTest.txt
mv target/pit-reports target/com.fasterxml.jackson.core.util.ByteArrayBuilderTest
cp -r target/com.fasterxml.jackson.core.util.ByteArrayBuilderTest /home/dorma10/mutation-analysis/mutation_results/jackson-core

rm -rf target/com.fasterxml.jackson.core.util.ByteArrayBuilderTest

python3 /home/dorma10/mutation-analysis/effectiveness/mutation/pom_changer.py jackson-core com.fasterxml.jackson.core.util.DefaultIndenter com.fasterxml.jackson.core.util.DefaultIndenterTest DEFAULT
echo '* Mutating com.fasterxml.jackson.core.util.DefaultIndenter with operator DEFAULT'
timeout 20m mvn org.pitest:pitest-maven:mutationCoverage -X -DoutputFormats=HTML --log-file ../../logs/com.fasterxml.jackson.core.util.DefaultIndenterTest.txt
mv target/pit-reports target/com.fasterxml.jackson.core.util.DefaultIndenterTest
cp -r target/com.fasterxml.jackson.core.util.DefaultIndenterTest /home/dorma10/mutation-analysis/mutation_results/jackson-core

rm -rf target/com.fasterxml.jackson.core.util.DefaultIndenterTest

python3 /home/dorma10/mutation-analysis/effectiveness/mutation/pom_changer.py jackson-core com.fasterxml.jackson.core.type.TypeReference com.fasterxml.jackson.core.type.TypeReferenceTest DEFAULT
echo '* Mutating com.fasterxml.jackson.core.type.TypeReference with operator DEFAULT'
timeout 20m mvn org.pitest:pitest-maven:mutationCoverage -X -DoutputFormats=HTML --log-file ../../logs/com.fasterxml.jackson.core.type.TypeReferenceTest.txt
mv target/pit-reports target/com.fasterxml.jackson.core.type.TypeReferenceTest
cp -r target/com.fasterxml.jackson.core.type.TypeReferenceTest /home/dorma10/mutation-analysis/mutation_results/jackson-core

rm -rf target/com.fasterxml.jackson.core.type.TypeReferenceTest
echo '* Restoring original pom'
rm -rf pom.xml
mv cached_pom.xml pom.xml
cd ../..

echo '* 4 out of 9 -> jackson-databind'
mkdir /home/dorma10/mutation-analysis/mutation_results/jackson-databind


echo '* Compiling jackson-databind'
cd /home/dorma10/mutation-analysis/projects/jackson-databind

echo '* Caching original pom'
cp pom.xml cached_pom.xml

python3 /home/dorma10/mutation-analysis/effectiveness/mutation/pom_changer.py jackson-databind com.fasterxml.jackson.databind.ObjectReader com.fasterxml.jackson.databind.ObjectReaderTest DEFAULT
echo '* Mutating com.fasterxml.jackson.databind.ObjectReader with operator DEFAULT'
timeout 20m mvn org.pitest:pitest-maven:mutationCoverage -X -DoutputFormats=HTML --log-file ../../logs/com.fasterxml.jackson.databind.ObjectReaderTest.txt
mv target/pit-reports target/com.fasterxml.jackson.databind.ObjectReaderTest
cp -r target/com.fasterxml.jackson.databind.ObjectReaderTest /home/dorma10/mutation-analysis/mutation_results/jackson-databind

rm -rf target/com.fasterxml.jackson.databind.ObjectReaderTest

python3 /home/dorma10/mutation-analysis/effectiveness/mutation/pom_changer.py jackson-databind com.fasterxml.jackson.databind.ObjectWriter com.fasterxml.jackson.databind.ObjectWriterTest DEFAULT
echo '* Mutating com.fasterxml.jackson.databind.ObjectWriter with operator DEFAULT'
timeout 20m mvn org.pitest:pitest-maven:mutationCoverage -X -DoutputFormats=HTML --log-file ../../logs/com.fasterxml.jackson.databind.ObjectWriterTest.txt
mv target/pit-reports target/com.fasterxml.jackson.databind.ObjectWriterTest
cp -r target/com.fasterxml.jackson.databind.ObjectWriterTest /home/dorma10/mutation-analysis/mutation_results/jackson-databind

rm -rf target/com.fasterxml.jackson.databind.ObjectWriterTest

python3 /home/dorma10/mutation-analysis/effectiveness/mutation/pom_changer.py jackson-databind com.fasterxml.jackson.databind.ObjectMapper com.fasterxml.jackson.databind.ObjectMapperTest DEFAULT
echo '* Mutating com.fasterxml.jackson.databind.ObjectMapper with operator DEFAULT'
timeout 20m mvn org.pitest:pitest-maven:mutationCoverage -X -DoutputFormats=HTML --log-file ../../logs/com.fasterxml.jackson.databind.ObjectMapperTest.txt
mv target/pit-reports target/com.fasterxml.jackson.databind.ObjectMapperTest
cp -r target/com.fasterxml.jackson.databind.ObjectMapperTest /home/dorma10/mutation-analysis/mutation_results/jackson-databind

rm -rf target/com.fasterxml.jackson.databind.ObjectMapperTest

python3 /home/dorma10/mutation-analysis/effectiveness/mutation/pom_changer.py jackson-databind com.fasterxml.jackson.databind.ser.BeanSerializerModifier com.fasterxml.jackson.databind.ser.BeanSerializerModifierTest DEFAULT
echo '* Mutating com.fasterxml.jackson.databind.ser.BeanSerializerModifier with operator DEFAULT'
timeout 20m mvn org.pitest:pitest-maven:mutationCoverage -X -DoutputFormats=HTML --log-file ../../logs/com.fasterxml.jackson.databind.ser.BeanSerializerModifierTest.txt
mv target/pit-reports target/com.fasterxml.jackson.databind.ser.BeanSerializerModifierTest
cp -r target/com.fasterxml.jackson.databind.ser.BeanSerializerModifierTest /home/dorma10/mutation-analysis/mutation_results/jackson-databind

rm -rf target/com.fasterxml.jackson.databind.ser.BeanSerializerModifierTest

python3 /home/dorma10/mutation-analysis/effectiveness/mutation/pom_changer.py jackson-databind com.fasterxml.jackson.databind.util.RawValue com.fasterxml.jackson.databind.ser.RawValueTest DEFAULT
echo '* Mutating com.fasterxml.jackson.databind.util.RawValue with operator DEFAULT'
timeout 20m mvn org.pitest:pitest-maven:mutationCoverage -X -DoutputFormats=HTML --log-file ../../logs/com.fasterxml.jackson.databind.ser.RawValueTest.txt
mv target/pit-reports target/com.fasterxml.jackson.databind.ser.RawValueTest
cp -r target/com.fasterxml.jackson.databind.ser.RawValueTest /home/dorma10/mutation-analysis/mutation_results/jackson-databind

rm -rf target/com.fasterxml.jackson.databind.ser.RawValueTest

python3 /home/dorma10/mutation-analysis/effectiveness/mutation/pom_changer.py jackson-databind com.fasterxml.jackson.databind.node.JsonNodeFactory com.fasterxml.jackson.databind.node.JsonNodeFactoryTest DEFAULT
echo '* Mutating com.fasterxml.jackson.databind.node.JsonNodeFactory with operator DEFAULT'
timeout 20m mvn org.pitest:pitest-maven:mutationCoverage -X -DoutputFormats=HTML --log-file ../../logs/com.fasterxml.jackson.databind.node.JsonNodeFactoryTest.txt
mv target/pit-reports target/com.fasterxml.jackson.databind.node.JsonNodeFactoryTest
cp -r target/com.fasterxml.jackson.databind.node.JsonNodeFactoryTest /home/dorma10/mutation-analysis/mutation_results/jackson-databind

rm -rf target/com.fasterxml.jackson.databind.node.JsonNodeFactoryTest

python3 /home/dorma10/mutation-analysis/effectiveness/mutation/pom_changer.py jackson-databind com.fasterxml.jackson.databind.node.TextNode com.fasterxml.jackson.databind.node.TextNodeTest DEFAULT
echo '* Mutating com.fasterxml.jackson.databind.node.TextNode with operator DEFAULT'
timeout 20m mvn org.pitest:pitest-maven:mutationCoverage -X -DoutputFormats=HTML --log-file ../../logs/com.fasterxml.jackson.databind.node.TextNodeTest.txt
mv target/pit-reports target/com.fasterxml.jackson.databind.node.TextNodeTest
cp -r target/com.fasterxml.jackson.databind.node.TextNodeTest /home/dorma10/mutation-analysis/mutation_results/jackson-databind

rm -rf target/com.fasterxml.jackson.databind.node.TextNodeTest

python3 /home/dorma10/mutation-analysis/effectiveness/mutation/pom_changer.py jackson-databind com.fasterxml.jackson.databind.node.POJONode com.fasterxml.jackson.databind.node.POJONodeTest DEFAULT
echo '* Mutating com.fasterxml.jackson.databind.node.POJONode with operator DEFAULT'
timeout 20m mvn org.pitest:pitest-maven:mutationCoverage -X -DoutputFormats=HTML --log-file ../../logs/com.fasterxml.jackson.databind.node.POJONodeTest.txt
mv target/pit-reports target/com.fasterxml.jackson.databind.node.POJONodeTest
cp -r target/com.fasterxml.jackson.databind.node.POJONodeTest /home/dorma10/mutation-analysis/mutation_results/jackson-databind

rm -rf target/com.fasterxml.jackson.databind.node.POJONodeTest

python3 /home/dorma10/mutation-analysis/effectiveness/mutation/pom_changer.py jackson-databind com.fasterxml.jackson.databind.node.ArrayNode com.fasterxml.jackson.databind.node.ArrayNodeTest DEFAULT
echo '* Mutating com.fasterxml.jackson.databind.node.ArrayNode with operator DEFAULT'
timeout 20m mvn org.pitest:pitest-maven:mutationCoverage -X -DoutputFormats=HTML --log-file ../../logs/com.fasterxml.jackson.databind.node.ArrayNodeTest.txt
mv target/pit-reports target/com.fasterxml.jackson.databind.node.ArrayNodeTest
cp -r target/com.fasterxml.jackson.databind.node.ArrayNodeTest /home/dorma10/mutation-analysis/mutation_results/jackson-databind

rm -rf target/com.fasterxml.jackson.databind.node.ArrayNodeTest

python3 /home/dorma10/mutation-analysis/effectiveness/mutation/pom_changer.py jackson-databind com.fasterxml.jackson.databind.node.ObjectNode com.fasterxml.jackson.databind.node.ObjectNodeTest DEFAULT
echo '* Mutating com.fasterxml.jackson.databind.node.ObjectNode with operator DEFAULT'
timeout 20m mvn org.pitest:pitest-maven:mutationCoverage -X -DoutputFormats=HTML --log-file ../../logs/com.fasterxml.jackson.databind.node.ObjectNodeTest.txt
mv target/pit-reports target/com.fasterxml.jackson.databind.node.ObjectNodeTest
cp -r target/com.fasterxml.jackson.databind.node.ObjectNodeTest /home/dorma10/mutation-analysis/mutation_results/jackson-databind

rm -rf target/com.fasterxml.jackson.databind.node.ObjectNodeTest

python3 /home/dorma10/mutation-analysis/effectiveness/mutation/pom_changer.py jackson-databind com.fasterxml.jackson.databind.deser.DeserializerFactory com.fasterxml.jackson.databind.deser.DeserializerFactoryTest DEFAULT
echo '* Mutating com.fasterxml.jackson.databind.deser.DeserializerFactory with operator DEFAULT'
timeout 20m mvn org.pitest:pitest-maven:mutationCoverage -X -DoutputFormats=HTML --log-file ../../logs/com.fasterxml.jackson.databind.deser.DeserializerFactoryTest.txt
mv target/pit-reports target/com.fasterxml.jackson.databind.deser.DeserializerFactoryTest
cp -r target/com.fasterxml.jackson.databind.deser.DeserializerFactoryTest /home/dorma10/mutation-analysis/mutation_results/jackson-databind

rm -rf target/com.fasterxml.jackson.databind.deser.DeserializerFactoryTest

python3 /home/dorma10/mutation-analysis/effectiveness/mutation/pom_changer.py jackson-databind com.fasterxml.jackson.databind.SequenceWriter com.fasterxml.jackson.databind.seq.SequenceWriterTest DEFAULT
echo '* Mutating com.fasterxml.jackson.databind.SequenceWriter with operator DEFAULT'
timeout 20m mvn org.pitest:pitest-maven:mutationCoverage -X -DoutputFormats=HTML --log-file ../../logs/com.fasterxml.jackson.databind.seq.SequenceWriterTest.txt
mv target/pit-reports target/com.fasterxml.jackson.databind.seq.SequenceWriterTest
cp -r target/com.fasterxml.jackson.databind.seq.SequenceWriterTest /home/dorma10/mutation-analysis/mutation_results/jackson-databind

rm -rf target/com.fasterxml.jackson.databind.seq.SequenceWriterTest

python3 /home/dorma10/mutation-analysis/effectiveness/mutation/pom_changer.py jackson-databind com.fasterxml.jackson.databind.jsontype.TypeDeserializer com.fasterxml.jackson.databind.jsontype.TypeDeserializerTest DEFAULT
echo '* Mutating com.fasterxml.jackson.databind.jsontype.TypeDeserializer with operator DEFAULT'
timeout 20m mvn org.pitest:pitest-maven:mutationCoverage -X -DoutputFormats=HTML --log-file ../../logs/com.fasterxml.jackson.databind.jsontype.TypeDeserializerTest.txt
mv target/pit-reports target/com.fasterxml.jackson.databind.jsontype.TypeDeserializerTest
cp -r target/com.fasterxml.jackson.databind.jsontype.TypeDeserializerTest /home/dorma10/mutation-analysis/mutation_results/jackson-databind

rm -rf target/com.fasterxml.jackson.databind.jsontype.TypeDeserializerTest

python3 /home/dorma10/mutation-analysis/effectiveness/mutation/pom_changer.py jackson-databind com.fasterxml.jackson.databind.module.SimpleModule com.fasterxml.jackson.databind.module.SimpleModuleTest DEFAULT
echo '* Mutating com.fasterxml.jackson.databind.module.SimpleModule with operator DEFAULT'
timeout 20m mvn org.pitest:pitest-maven:mutationCoverage -X -DoutputFormats=HTML --log-file ../../logs/com.fasterxml.jackson.databind.module.SimpleModuleTest.txt
mv target/pit-reports target/com.fasterxml.jackson.databind.module.SimpleModuleTest
cp -r target/com.fasterxml.jackson.databind.module.SimpleModuleTest /home/dorma10/mutation-analysis/mutation_results/jackson-databind

rm -rf target/com.fasterxml.jackson.databind.module.SimpleModuleTest

python3 /home/dorma10/mutation-analysis/effectiveness/mutation/pom_changer.py jackson-databind com.fasterxml.jackson.databind.util.ClassUtil com.fasterxml.jackson.databind.util.ClassUtilTest DEFAULT
echo '* Mutating com.fasterxml.jackson.databind.util.ClassUtil with operator DEFAULT'
timeout 20m mvn org.pitest:pitest-maven:mutationCoverage -X -DoutputFormats=HTML --log-file ../../logs/com.fasterxml.jackson.databind.util.ClassUtilTest.txt
mv target/pit-reports target/com.fasterxml.jackson.databind.util.ClassUtilTest
cp -r target/com.fasterxml.jackson.databind.util.ClassUtilTest /home/dorma10/mutation-analysis/mutation_results/jackson-databind

rm -rf target/com.fasterxml.jackson.databind.util.ClassUtilTest

python3 /home/dorma10/mutation-analysis/effectiveness/mutation/pom_changer.py jackson-databind com.fasterxml.jackson.databind.util.EnumValues com.fasterxml.jackson.databind.util.EnumValuesTest DEFAULT
echo '* Mutating com.fasterxml.jackson.databind.util.EnumValues with operator DEFAULT'
timeout 20m mvn org.pitest:pitest-maven:mutationCoverage -X -DoutputFormats=HTML --log-file ../../logs/com.fasterxml.jackson.databind.util.EnumValuesTest.txt
mv target/pit-reports target/com.fasterxml.jackson.databind.util.EnumValuesTest
cp -r target/com.fasterxml.jackson.databind.util.EnumValuesTest /home/dorma10/mutation-analysis/mutation_results/jackson-databind

rm -rf target/com.fasterxml.jackson.databind.util.EnumValuesTest

python3 /home/dorma10/mutation-analysis/effectiveness/mutation/pom_changer.py jackson-databind com.fasterxml.jackson.databind.util.JSONPObject com.fasterxml.jackson.databind.util.JSONPObjectTest DEFAULT
echo '* Mutating com.fasterxml.jackson.databind.util.JSONPObject with operator DEFAULT'
timeout 20m mvn org.pitest:pitest-maven:mutationCoverage -X -DoutputFormats=HTML --log-file ../../logs/com.fasterxml.jackson.databind.util.JSONPObjectTest.txt
mv target/pit-reports target/com.fasterxml.jackson.databind.util.JSONPObjectTest
cp -r target/com.fasterxml.jackson.databind.util.JSONPObjectTest /home/dorma10/mutation-analysis/mutation_results/jackson-databind

rm -rf target/com.fasterxml.jackson.databind.util.JSONPObjectTest

python3 /home/dorma10/mutation-analysis/effectiveness/mutation/pom_changer.py jackson-databind com.fasterxml.jackson.databind.util.BeanUtil com.fasterxml.jackson.databind.util.BeanUtilTest DEFAULT
echo '* Mutating com.fasterxml.jackson.databind.util.BeanUtil with operator DEFAULT'
timeout 20m mvn org.pitest:pitest-maven:mutationCoverage -X -DoutputFormats=HTML --log-file ../../logs/com.fasterxml.jackson.databind.util.BeanUtilTest.txt
mv target/pit-reports target/com.fasterxml.jackson.databind.util.BeanUtilTest
cp -r target/com.fasterxml.jackson.databind.util.BeanUtilTest /home/dorma10/mutation-analysis/mutation_results/jackson-databind

rm -rf target/com.fasterxml.jackson.databind.util.BeanUtilTest

python3 /home/dorma10/mutation-analysis/effectiveness/mutation/pom_changer.py jackson-databind com.fasterxml.jackson.databind.util.ISO8601DateFormat com.fasterxml.jackson.databind.util.ISO8601DateFormatTest DEFAULT
echo '* Mutating com.fasterxml.jackson.databind.util.ISO8601DateFormat with operator DEFAULT'
timeout 20m mvn org.pitest:pitest-maven:mutationCoverage -X -DoutputFormats=HTML --log-file ../../logs/com.fasterxml.jackson.databind.util.ISO8601DateFormatTest.txt
mv target/pit-reports target/com.fasterxml.jackson.databind.util.ISO8601DateFormatTest
cp -r target/com.fasterxml.jackson.databind.util.ISO8601DateFormatTest /home/dorma10/mutation-analysis/mutation_results/jackson-databind

rm -rf target/com.fasterxml.jackson.databind.util.ISO8601DateFormatTest

python3 /home/dorma10/mutation-analysis/effectiveness/mutation/pom_changer.py jackson-databind com.fasterxml.jackson.databind.util.CompactStringObjectMap com.fasterxml.jackson.databind.util.CompactStringObjectMapTest DEFAULT
echo '* Mutating com.fasterxml.jackson.databind.util.CompactStringObjectMap with operator DEFAULT'
timeout 20m mvn org.pitest:pitest-maven:mutationCoverage -X -DoutputFormats=HTML --log-file ../../logs/com.fasterxml.jackson.databind.util.CompactStringObjectMapTest.txt
mv target/pit-reports target/com.fasterxml.jackson.databind.util.CompactStringObjectMapTest
cp -r target/com.fasterxml.jackson.databind.util.CompactStringObjectMapTest /home/dorma10/mutation-analysis/mutation_results/jackson-databind

rm -rf target/com.fasterxml.jackson.databind.util.CompactStringObjectMapTest

python3 /home/dorma10/mutation-analysis/effectiveness/mutation/pom_changer.py jackson-databind com.fasterxml.jackson.databind.util.RawValue com.fasterxml.jackson.databind.util.RawValueTest DEFAULT
echo '* Mutating com.fasterxml.jackson.databind.util.RawValue with operator DEFAULT'
timeout 20m mvn org.pitest:pitest-maven:mutationCoverage -X -DoutputFormats=HTML --log-file ../../logs/com.fasterxml.jackson.databind.util.RawValueTest.txt
mv target/pit-reports target/com.fasterxml.jackson.databind.util.RawValueTest
cp -r target/com.fasterxml.jackson.databind.util.RawValueTest /home/dorma10/mutation-analysis/mutation_results/jackson-databind

rm -rf target/com.fasterxml.jackson.databind.util.RawValueTest

python3 /home/dorma10/mutation-analysis/effectiveness/mutation/pom_changer.py jackson-databind com.fasterxml.jackson.databind.util.ISO8601Utils com.fasterxml.jackson.databind.util.ISO8601UtilsTest DEFAULT
echo '* Mutating com.fasterxml.jackson.databind.util.ISO8601Utils with operator DEFAULT'
timeout 20m mvn org.pitest:pitest-maven:mutationCoverage -X -DoutputFormats=HTML --log-file ../../logs/com.fasterxml.jackson.databind.util.ISO8601UtilsTest.txt
mv target/pit-reports target/com.fasterxml.jackson.databind.util.ISO8601UtilsTest
cp -r target/com.fasterxml.jackson.databind.util.ISO8601UtilsTest /home/dorma10/mutation-analysis/mutation_results/jackson-databind

rm -rf target/com.fasterxml.jackson.databind.util.ISO8601UtilsTest

python3 /home/dorma10/mutation-analysis/effectiveness/mutation/pom_changer.py jackson-databind com.fasterxml.jackson.databind.util.NameTransformer com.fasterxml.jackson.databind.util.NameTransformerTest DEFAULT
echo '* Mutating com.fasterxml.jackson.databind.util.NameTransformer with operator DEFAULT'
timeout 20m mvn org.pitest:pitest-maven:mutationCoverage -X -DoutputFormats=HTML --log-file ../../logs/com.fasterxml.jackson.databind.util.NameTransformerTest.txt
mv target/pit-reports target/com.fasterxml.jackson.databind.util.NameTransformerTest
cp -r target/com.fasterxml.jackson.databind.util.NameTransformerTest /home/dorma10/mutation-analysis/mutation_results/jackson-databind

rm -rf target/com.fasterxml.jackson.databind.util.NameTransformerTest

python3 /home/dorma10/mutation-analysis/effectiveness/mutation/pom_changer.py jackson-databind com.fasterxml.jackson.databind.util.ArrayBuilders com.fasterxml.jackson.databind.util.ArrayBuildersTest DEFAULT
echo '* Mutating com.fasterxml.jackson.databind.util.ArrayBuilders with operator DEFAULT'
timeout 20m mvn org.pitest:pitest-maven:mutationCoverage -X -DoutputFormats=HTML --log-file ../../logs/com.fasterxml.jackson.databind.util.ArrayBuildersTest.txt
mv target/pit-reports target/com.fasterxml.jackson.databind.util.ArrayBuildersTest
cp -r target/com.fasterxml.jackson.databind.util.ArrayBuildersTest /home/dorma10/mutation-analysis/mutation_results/jackson-databind

rm -rf target/com.fasterxml.jackson.databind.util.ArrayBuildersTest

python3 /home/dorma10/mutation-analysis/effectiveness/mutation/pom_changer.py jackson-databind com.fasterxml.jackson.databind.BeanDescription com.fasterxml.jackson.databind.introspect.BeanDescriptionTest DEFAULT
echo '* Mutating com.fasterxml.jackson.databind.BeanDescription with operator DEFAULT'
timeout 20m mvn org.pitest:pitest-maven:mutationCoverage -X -DoutputFormats=HTML --log-file ../../logs/com.fasterxml.jackson.databind.introspect.BeanDescriptionTest.txt
mv target/pit-reports target/com.fasterxml.jackson.databind.introspect.BeanDescriptionTest
cp -r target/com.fasterxml.jackson.databind.introspect.BeanDescriptionTest /home/dorma10/mutation-analysis/mutation_results/jackson-databind

rm -rf target/com.fasterxml.jackson.databind.introspect.BeanDescriptionTest

python3 /home/dorma10/mutation-analysis/effectiveness/mutation/pom_changer.py jackson-databind com.fasterxml.jackson.databind.PropertyMetadata com.fasterxml.jackson.databind.introspect.PropertyMetadataTest DEFAULT
echo '* Mutating com.fasterxml.jackson.databind.PropertyMetadata with operator DEFAULT'
timeout 20m mvn org.pitest:pitest-maven:mutationCoverage -X -DoutputFormats=HTML --log-file ../../logs/com.fasterxml.jackson.databind.introspect.PropertyMetadataTest.txt
mv target/pit-reports target/com.fasterxml.jackson.databind.introspect.PropertyMetadataTest
cp -r target/com.fasterxml.jackson.databind.introspect.PropertyMetadataTest /home/dorma10/mutation-analysis/mutation_results/jackson-databind

rm -rf target/com.fasterxml.jackson.databind.introspect.PropertyMetadataTest

python3 /home/dorma10/mutation-analysis/effectiveness/mutation/pom_changer.py jackson-databind com.fasterxml.jackson.databind.introspect.POJOPropertiesCollector com.fasterxml.jackson.databind.introspect.POJOPropertiesCollectorTest DEFAULT
echo '* Mutating com.fasterxml.jackson.databind.introspect.POJOPropertiesCollector with operator DEFAULT'
timeout 20m mvn org.pitest:pitest-maven:mutationCoverage -X -DoutputFormats=HTML --log-file ../../logs/com.fasterxml.jackson.databind.introspect.POJOPropertiesCollectorTest.txt
mv target/pit-reports target/com.fasterxml.jackson.databind.introspect.POJOPropertiesCollectorTest
cp -r target/com.fasterxml.jackson.databind.introspect.POJOPropertiesCollectorTest /home/dorma10/mutation-analysis/mutation_results/jackson-databind

rm -rf target/com.fasterxml.jackson.databind.introspect.POJOPropertiesCollectorTest

python3 /home/dorma10/mutation-analysis/effectiveness/mutation/pom_changer.py jackson-databind com.fasterxml.jackson.databind.DatabindContext com.fasterxml.jackson.databind.cfg.DatabindContextTest DEFAULT
echo '* Mutating com.fasterxml.jackson.databind.DatabindContext with operator DEFAULT'
timeout 20m mvn org.pitest:pitest-maven:mutationCoverage -X -DoutputFormats=HTML --log-file ../../logs/com.fasterxml.jackson.databind.cfg.DatabindContextTest.txt
mv target/pit-reports target/com.fasterxml.jackson.databind.cfg.DatabindContextTest
cp -r target/com.fasterxml.jackson.databind.cfg.DatabindContextTest /home/dorma10/mutation-analysis/mutation_results/jackson-databind

rm -rf target/com.fasterxml.jackson.databind.cfg.DatabindContextTest

python3 /home/dorma10/mutation-analysis/effectiveness/mutation/pom_changer.py jackson-databind com.fasterxml.jackson.databind.DeserializationConfig com.fasterxml.jackson.databind.cfg.DeserializationConfigTest DEFAULT
echo '* Mutating com.fasterxml.jackson.databind.DeserializationConfig with operator DEFAULT'
timeout 20m mvn org.pitest:pitest-maven:mutationCoverage -X -DoutputFormats=HTML --log-file ../../logs/com.fasterxml.jackson.databind.cfg.DeserializationConfigTest.txt
mv target/pit-reports target/com.fasterxml.jackson.databind.cfg.DeserializationConfigTest
cp -r target/com.fasterxml.jackson.databind.cfg.DeserializationConfigTest /home/dorma10/mutation-analysis/mutation_results/jackson-databind

rm -rf target/com.fasterxml.jackson.databind.cfg.DeserializationConfigTest

python3 /home/dorma10/mutation-analysis/effectiveness/mutation/pom_changer.py jackson-databind com.fasterxml.jackson.databind.deser.impl.BeanPropertyMap com.fasterxml.jackson.databind.misc.BeanPropertyMapTest DEFAULT
echo '* Mutating com.fasterxml.jackson.databind.deser.impl.BeanPropertyMap with operator DEFAULT'
timeout 20m mvn org.pitest:pitest-maven:mutationCoverage -X -DoutputFormats=HTML --log-file ../../logs/com.fasterxml.jackson.databind.misc.BeanPropertyMapTest.txt
mv target/pit-reports target/com.fasterxml.jackson.databind.misc.BeanPropertyMapTest
cp -r target/com.fasterxml.jackson.databind.misc.BeanPropertyMapTest /home/dorma10/mutation-analysis/mutation_results/jackson-databind

rm -rf target/com.fasterxml.jackson.databind.misc.BeanPropertyMapTest
echo '* Restoring original pom'
rm -rf pom.xml
mv cached_pom.xml pom.xml
cd ../..

echo '* 5 out of 9 -> commons-fileupload'
mkdir /home/dorma10/mutation-analysis/mutation_results/commons-fileupload


echo '* Compiling commons-fileupload'
cd /home/dorma10/mutation-analysis/projects/commons-fileupload

echo '* Caching original pom'
cp pom.xml cached_pom.xml

python3 /home/dorma10/mutation-analysis/effectiveness/mutation/pom_changer.py commons-fileupload org.apache.commons.fileupload.FileItemHeaders org.apache.commons.fileupload.FileItemHeadersTest DEFAULT
echo '* Mutating org.apache.commons.fileupload.FileItemHeaders with operator DEFAULT'
timeout 20m mvn org.pitest:pitest-maven:mutationCoverage -X -DoutputFormats=HTML --log-file ../../logs/org.apache.commons.fileupload.FileItemHeadersTest.txt
mv target/pit-reports target/org.apache.commons.fileupload.FileItemHeadersTest
cp -r target/org.apache.commons.fileupload.FileItemHeadersTest /home/dorma10/mutation-analysis/mutation_results/commons-fileupload

rm -rf target/org.apache.commons.fileupload.FileItemHeadersTest

python3 /home/dorma10/mutation-analysis/effectiveness/mutation/pom_changer.py commons-fileupload org.apache.commons.fileupload.ParameterParser org.apache.commons.fileupload.ParameterParserTest DEFAULT
echo '* Mutating org.apache.commons.fileupload.ParameterParser with operator DEFAULT'
timeout 20m mvn org.pitest:pitest-maven:mutationCoverage -X -DoutputFormats=HTML --log-file ../../logs/org.apache.commons.fileupload.ParameterParserTest.txt
mv target/pit-reports target/org.apache.commons.fileupload.ParameterParserTest
cp -r target/org.apache.commons.fileupload.ParameterParserTest /home/dorma10/mutation-analysis/mutation_results/commons-fileupload

rm -rf target/org.apache.commons.fileupload.ParameterParserTest

python3 /home/dorma10/mutation-analysis/effectiveness/mutation/pom_changer.py commons-fileupload org.apache.commons.fileupload.ProgressListener org.apache.commons.fileupload.ProgressListenerTest DEFAULT
echo '* Mutating org.apache.commons.fileupload.ProgressListener with operator DEFAULT'
timeout 20m mvn org.pitest:pitest-maven:mutationCoverage -X -DoutputFormats=HTML --log-file ../../logs/org.apache.commons.fileupload.ProgressListenerTest.txt
mv target/pit-reports target/org.apache.commons.fileupload.ProgressListenerTest
cp -r target/org.apache.commons.fileupload.ProgressListenerTest /home/dorma10/mutation-analysis/mutation_results/commons-fileupload

rm -rf target/org.apache.commons.fileupload.ProgressListenerTest

python3 /home/dorma10/mutation-analysis/effectiveness/mutation/pom_changer.py commons-fileupload org.apache.commons.fileupload.DefaultFileItem org.apache.commons.fileupload.DefaultFileItemTest DEFAULT
echo '* Mutating org.apache.commons.fileupload.DefaultFileItem with operator DEFAULT'
timeout 20m mvn org.pitest:pitest-maven:mutationCoverage -X -DoutputFormats=HTML --log-file ../../logs/org.apache.commons.fileupload.DefaultFileItemTest.txt
mv target/pit-reports target/org.apache.commons.fileupload.DefaultFileItemTest
cp -r target/org.apache.commons.fileupload.DefaultFileItemTest /home/dorma10/mutation-analysis/mutation_results/commons-fileupload

rm -rf target/org.apache.commons.fileupload.DefaultFileItemTest

python3 /home/dorma10/mutation-analysis/effectiveness/mutation/pom_changer.py commons-fileupload org.apache.commons.fileupload.MultipartStream org.apache.commons.fileupload.MultipartStreamTest DEFAULT
echo '* Mutating org.apache.commons.fileupload.MultipartStream with operator DEFAULT'
timeout 20m mvn org.pitest:pitest-maven:mutationCoverage -X -DoutputFormats=HTML --log-file ../../logs/org.apache.commons.fileupload.MultipartStreamTest.txt
mv target/pit-reports target/org.apache.commons.fileupload.MultipartStreamTest
cp -r target/org.apache.commons.fileupload.MultipartStreamTest /home/dorma10/mutation-analysis/mutation_results/commons-fileupload

rm -rf target/org.apache.commons.fileupload.MultipartStreamTest

python3 /home/dorma10/mutation-analysis/effectiveness/mutation/pom_changer.py commons-fileupload org.apache.commons.fileupload.FileUpload org.apache.commons.fileupload.FileUploadTest DEFAULT
echo '* Mutating org.apache.commons.fileupload.FileUpload with operator DEFAULT'
timeout 20m mvn org.pitest:pitest-maven:mutationCoverage -X -DoutputFormats=HTML --log-file ../../logs/org.apache.commons.fileupload.FileUploadTest.txt
mv target/pit-reports target/org.apache.commons.fileupload.FileUploadTest
cp -r target/org.apache.commons.fileupload.FileUploadTest /home/dorma10/mutation-analysis/mutation_results/commons-fileupload

rm -rf target/org.apache.commons.fileupload.FileUploadTest

python3 /home/dorma10/mutation-analysis/effectiveness/mutation/pom_changer.py commons-fileupload org.apache.commons.fileupload.DiskFileUpload org.apache.commons.fileupload.DiskFileUploadTest DEFAULT
echo '* Mutating org.apache.commons.fileupload.DiskFileUpload with operator DEFAULT'
timeout 20m mvn org.pitest:pitest-maven:mutationCoverage -X -DoutputFormats=HTML --log-file ../../logs/org.apache.commons.fileupload.DiskFileUploadTest.txt
mv target/pit-reports target/org.apache.commons.fileupload.DiskFileUploadTest
cp -r target/org.apache.commons.fileupload.DiskFileUploadTest /home/dorma10/mutation-analysis/mutation_results/commons-fileupload

rm -rf target/org.apache.commons.fileupload.DiskFileUploadTest

python3 /home/dorma10/mutation-analysis/effectiveness/mutation/pom_changer.py commons-fileupload org.apache.commons.fileupload.portlet.PortletFileUpload org.apache.commons.fileupload.portlet.PortletFileUploadTest DEFAULT
echo '* Mutating org.apache.commons.fileupload.portlet.PortletFileUpload with operator DEFAULT'
timeout 20m mvn org.pitest:pitest-maven:mutationCoverage -X -DoutputFormats=HTML --log-file ../../logs/org.apache.commons.fileupload.portlet.PortletFileUploadTest.txt
mv target/pit-reports target/org.apache.commons.fileupload.portlet.PortletFileUploadTest
cp -r target/org.apache.commons.fileupload.portlet.PortletFileUploadTest /home/dorma10/mutation-analysis/mutation_results/commons-fileupload

rm -rf target/org.apache.commons.fileupload.portlet.PortletFileUploadTest

python3 /home/dorma10/mutation-analysis/effectiveness/mutation/pom_changer.py commons-fileupload org.apache.commons.fileupload.servlet.ServletFileUpload org.apache.commons.fileupload.servlet.ServletFileUploadTest DEFAULT
echo '* Mutating org.apache.commons.fileupload.servlet.ServletFileUpload with operator DEFAULT'
timeout 20m mvn org.pitest:pitest-maven:mutationCoverage -X -DoutputFormats=HTML --log-file ../../logs/org.apache.commons.fileupload.servlet.ServletFileUploadTest.txt
mv target/pit-reports target/org.apache.commons.fileupload.servlet.ServletFileUploadTest
cp -r target/org.apache.commons.fileupload.servlet.ServletFileUploadTest /home/dorma10/mutation-analysis/mutation_results/commons-fileupload

rm -rf target/org.apache.commons.fileupload.servlet.ServletFileUploadTest
echo '* Restoring original pom'
rm -rf pom.xml
mv cached_pom.xml pom.xml
cd ../..

echo '* 6 out of 9 -> commons-imaging'
mkdir /home/dorma10/mutation-analysis/mutation_results/commons-imaging


echo '* Compiling commons-imaging'
cd /home/dorma10/mutation-analysis/projects/commons-imaging

echo '* Caching original pom'
cp pom.xml cached_pom.xml

python3 /home/dorma10/mutation-analysis/effectiveness/mutation/pom_changer.py commons-imaging org.apache.commons.imaging.Imaging org.apache.commons.imaging.ImagingTest DEFAULT
echo '* Mutating org.apache.commons.imaging.Imaging with operator DEFAULT'
timeout 20m mvn org.pitest:pitest-maven:mutationCoverage -X -DoutputFormats=HTML --log-file ../../logs/org.apache.commons.imaging.ImagingTest.txt
mv target/pit-reports target/org.apache.commons.imaging.ImagingTest
cp -r target/org.apache.commons.imaging.ImagingTest /home/dorma10/mutation-analysis/mutation_results/commons-imaging

rm -rf target/org.apache.commons.imaging.ImagingTest

python3 /home/dorma10/mutation-analysis/effectiveness/mutation/pom_changer.py commons-imaging org.apache.commons.imaging.ImageDump org.apache.commons.imaging.ImageDumpTest DEFAULT
echo '* Mutating org.apache.commons.imaging.ImageDump with operator DEFAULT'
timeout 20m mvn org.pitest:pitest-maven:mutationCoverage -X -DoutputFormats=HTML --log-file ../../logs/org.apache.commons.imaging.ImageDumpTest.txt
mv target/pit-reports target/org.apache.commons.imaging.ImageDumpTest
cp -r target/org.apache.commons.imaging.ImageDumpTest /home/dorma10/mutation-analysis/mutation_results/commons-imaging

rm -rf target/org.apache.commons.imaging.ImageDumpTest

python3 /home/dorma10/mutation-analysis/effectiveness/mutation/pom_changer.py commons-imaging org.apache.commons.imaging.palette.SimplePalette org.apache.commons.imaging.palette.SimplePaletteTest DEFAULT
echo '* Mutating org.apache.commons.imaging.palette.SimplePalette with operator DEFAULT'
timeout 20m mvn org.pitest:pitest-maven:mutationCoverage -X -DoutputFormats=HTML --log-file ../../logs/org.apache.commons.imaging.palette.SimplePaletteTest.txt
mv target/pit-reports target/org.apache.commons.imaging.palette.SimplePaletteTest
cp -r target/org.apache.commons.imaging.palette.SimplePaletteTest /home/dorma10/mutation-analysis/mutation_results/commons-imaging

rm -rf target/org.apache.commons.imaging.palette.SimplePaletteTest

python3 /home/dorma10/mutation-analysis/effectiveness/mutation/pom_changer.py commons-imaging org.apache.commons.imaging.palette.Dithering org.apache.commons.imaging.palette.DitheringTest DEFAULT
echo '* Mutating org.apache.commons.imaging.palette.Dithering with operator DEFAULT'
timeout 20m mvn org.pitest:pitest-maven:mutationCoverage -X -DoutputFormats=HTML --log-file ../../logs/org.apache.commons.imaging.palette.DitheringTest.txt
mv target/pit-reports target/org.apache.commons.imaging.palette.DitheringTest
cp -r target/org.apache.commons.imaging.palette.DitheringTest /home/dorma10/mutation-analysis/mutation_results/commons-imaging

rm -rf target/org.apache.commons.imaging.palette.DitheringTest

python3 /home/dorma10/mutation-analysis/effectiveness/mutation/pom_changer.py commons-imaging org.apache.commons.imaging.color.ColorCieLuv org.apache.commons.imaging.color.ColorCieLuvTest DEFAULT
echo '* Mutating org.apache.commons.imaging.color.ColorCieLuv with operator DEFAULT'
timeout 20m mvn org.pitest:pitest-maven:mutationCoverage -X -DoutputFormats=HTML --log-file ../../logs/org.apache.commons.imaging.color.ColorCieLuvTest.txt
mv target/pit-reports target/org.apache.commons.imaging.color.ColorCieLuvTest
cp -r target/org.apache.commons.imaging.color.ColorCieLuvTest /home/dorma10/mutation-analysis/mutation_results/commons-imaging

rm -rf target/org.apache.commons.imaging.color.ColorCieLuvTest

python3 /home/dorma10/mutation-analysis/effectiveness/mutation/pom_changer.py commons-imaging org.apache.commons.imaging.color.ColorCmy org.apache.commons.imaging.color.ColorCmyTest DEFAULT
echo '* Mutating org.apache.commons.imaging.color.ColorCmy with operator DEFAULT'
timeout 20m mvn org.pitest:pitest-maven:mutationCoverage -X -DoutputFormats=HTML --log-file ../../logs/org.apache.commons.imaging.color.ColorCmyTest.txt
mv target/pit-reports target/org.apache.commons.imaging.color.ColorCmyTest
cp -r target/org.apache.commons.imaging.color.ColorCmyTest /home/dorma10/mutation-analysis/mutation_results/commons-imaging

rm -rf target/org.apache.commons.imaging.color.ColorCmyTest

python3 /home/dorma10/mutation-analysis/effectiveness/mutation/pom_changer.py commons-imaging org.apache.commons.imaging.color.ColorCieLab org.apache.commons.imaging.color.ColorCieLabTest DEFAULT
echo '* Mutating org.apache.commons.imaging.color.ColorCieLab with operator DEFAULT'
timeout 20m mvn org.pitest:pitest-maven:mutationCoverage -X -DoutputFormats=HTML --log-file ../../logs/org.apache.commons.imaging.color.ColorCieLabTest.txt
mv target/pit-reports target/org.apache.commons.imaging.color.ColorCieLabTest
cp -r target/org.apache.commons.imaging.color.ColorCieLabTest /home/dorma10/mutation-analysis/mutation_results/commons-imaging

rm -rf target/org.apache.commons.imaging.color.ColorCieLabTest

python3 /home/dorma10/mutation-analysis/effectiveness/mutation/pom_changer.py commons-imaging org.apache.commons.imaging.color.ColorCmyk org.apache.commons.imaging.color.ColorCmykTest DEFAULT
echo '* Mutating org.apache.commons.imaging.color.ColorCmyk with operator DEFAULT'
timeout 20m mvn org.pitest:pitest-maven:mutationCoverage -X -DoutputFormats=HTML --log-file ../../logs/org.apache.commons.imaging.color.ColorCmykTest.txt
mv target/pit-reports target/org.apache.commons.imaging.color.ColorCmykTest
cp -r target/org.apache.commons.imaging.color.ColorCmykTest /home/dorma10/mutation-analysis/mutation_results/commons-imaging

rm -rf target/org.apache.commons.imaging.color.ColorCmykTest

python3 /home/dorma10/mutation-analysis/effectiveness/mutation/pom_changer.py commons-imaging org.apache.commons.imaging.color.ColorHunterLab org.apache.commons.imaging.color.ColorHunterLabTest DEFAULT
echo '* Mutating org.apache.commons.imaging.color.ColorHunterLab with operator DEFAULT'
timeout 20m mvn org.pitest:pitest-maven:mutationCoverage -X -DoutputFormats=HTML --log-file ../../logs/org.apache.commons.imaging.color.ColorHunterLabTest.txt
mv target/pit-reports target/org.apache.commons.imaging.color.ColorHunterLabTest
cp -r target/org.apache.commons.imaging.color.ColorHunterLabTest /home/dorma10/mutation-analysis/mutation_results/commons-imaging

rm -rf target/org.apache.commons.imaging.color.ColorHunterLabTest

python3 /home/dorma10/mutation-analysis/effectiveness/mutation/pom_changer.py commons-imaging org.apache.commons.imaging.color.ColorXyz org.apache.commons.imaging.color.ColorXyzTest DEFAULT
echo '* Mutating org.apache.commons.imaging.color.ColorXyz with operator DEFAULT'
timeout 20m mvn org.pitest:pitest-maven:mutationCoverage -X -DoutputFormats=HTML --log-file ../../logs/org.apache.commons.imaging.color.ColorXyzTest.txt
mv target/pit-reports target/org.apache.commons.imaging.color.ColorXyzTest
cp -r target/org.apache.commons.imaging.color.ColorXyzTest /home/dorma10/mutation-analysis/mutation_results/commons-imaging

rm -rf target/org.apache.commons.imaging.color.ColorXyzTest

python3 /home/dorma10/mutation-analysis/effectiveness/mutation/pom_changer.py commons-imaging org.apache.commons.imaging.color.ColorConversions org.apache.commons.imaging.color.ColorConversionsTest DEFAULT
echo '* Mutating org.apache.commons.imaging.color.ColorConversions with operator DEFAULT'
timeout 20m mvn org.pitest:pitest-maven:mutationCoverage -X -DoutputFormats=HTML --log-file ../../logs/org.apache.commons.imaging.color.ColorConversionsTest.txt
mv target/pit-reports target/org.apache.commons.imaging.color.ColorConversionsTest
cp -r target/org.apache.commons.imaging.color.ColorConversionsTest /home/dorma10/mutation-analysis/mutation_results/commons-imaging

rm -rf target/org.apache.commons.imaging.color.ColorConversionsTest

python3 /home/dorma10/mutation-analysis/effectiveness/mutation/pom_changer.py commons-imaging org.apache.commons.imaging.color.ColorHsl org.apache.commons.imaging.color.ColorHslTest DEFAULT
echo '* Mutating org.apache.commons.imaging.color.ColorHsl with operator DEFAULT'
timeout 20m mvn org.pitest:pitest-maven:mutationCoverage -X -DoutputFormats=HTML --log-file ../../logs/org.apache.commons.imaging.color.ColorHslTest.txt
mv target/pit-reports target/org.apache.commons.imaging.color.ColorHslTest
cp -r target/org.apache.commons.imaging.color.ColorHslTest /home/dorma10/mutation-analysis/mutation_results/commons-imaging

rm -rf target/org.apache.commons.imaging.color.ColorHslTest

python3 /home/dorma10/mutation-analysis/effectiveness/mutation/pom_changer.py commons-imaging org.apache.commons.imaging.color.ColorHsv org.apache.commons.imaging.color.ColorHsvTest DEFAULT
echo '* Mutating org.apache.commons.imaging.color.ColorHsv with operator DEFAULT'
timeout 20m mvn org.pitest:pitest-maven:mutationCoverage -X -DoutputFormats=HTML --log-file ../../logs/org.apache.commons.imaging.color.ColorHsvTest.txt
mv target/pit-reports target/org.apache.commons.imaging.color.ColorHsvTest
cp -r target/org.apache.commons.imaging.color.ColorHsvTest /home/dorma10/mutation-analysis/mutation_results/commons-imaging

rm -rf target/org.apache.commons.imaging.color.ColorHsvTest

python3 /home/dorma10/mutation-analysis/effectiveness/mutation/pom_changer.py commons-imaging org.apache.commons.imaging.color.ColorCieLch org.apache.commons.imaging.color.ColorCieLchTest DEFAULT
echo '* Mutating org.apache.commons.imaging.color.ColorCieLch with operator DEFAULT'
timeout 20m mvn org.pitest:pitest-maven:mutationCoverage -X -DoutputFormats=HTML --log-file ../../logs/org.apache.commons.imaging.color.ColorCieLchTest.txt
mv target/pit-reports target/org.apache.commons.imaging.color.ColorCieLchTest
cp -r target/org.apache.commons.imaging.color.ColorCieLchTest /home/dorma10/mutation-analysis/mutation_results/commons-imaging

rm -rf target/org.apache.commons.imaging.color.ColorCieLchTest

python3 /home/dorma10/mutation-analysis/effectiveness/mutation/pom_changer.py commons-imaging org.apache.commons.imaging.common.RationalNumber org.apache.commons.imaging.common.RationalNumberTest DEFAULT
echo '* Mutating org.apache.commons.imaging.common.RationalNumber with operator DEFAULT'
timeout 20m mvn org.pitest:pitest-maven:mutationCoverage -X -DoutputFormats=HTML --log-file ../../logs/org.apache.commons.imaging.common.RationalNumberTest.txt
mv target/pit-reports target/org.apache.commons.imaging.common.RationalNumberTest
cp -r target/org.apache.commons.imaging.common.RationalNumberTest /home/dorma10/mutation-analysis/mutation_results/commons-imaging

rm -rf target/org.apache.commons.imaging.common.RationalNumberTest

python3 /home/dorma10/mutation-analysis/effectiveness/mutation/pom_changer.py commons-imaging org.apache.commons.imaging.common.RgbBufferedImageFactory org.apache.commons.imaging.common.RgbBufferedImageFactoryTest DEFAULT
echo '* Mutating org.apache.commons.imaging.common.RgbBufferedImageFactory with operator DEFAULT'
timeout 20m mvn org.pitest:pitest-maven:mutationCoverage -X -DoutputFormats=HTML --log-file ../../logs/org.apache.commons.imaging.common.RgbBufferedImageFactoryTest.txt
mv target/pit-reports target/org.apache.commons.imaging.common.RgbBufferedImageFactoryTest
cp -r target/org.apache.commons.imaging.common.RgbBufferedImageFactoryTest /home/dorma10/mutation-analysis/mutation_results/commons-imaging

rm -rf target/org.apache.commons.imaging.common.RgbBufferedImageFactoryTest

python3 /home/dorma10/mutation-analysis/effectiveness/mutation/pom_changer.py commons-imaging org.apache.commons.imaging.common.bytesource.ByteSource org.apache.commons.imaging.common.bytesource.ByteSourceTest DEFAULT
echo '* Mutating org.apache.commons.imaging.common.bytesource.ByteSource with operator DEFAULT'
timeout 20m mvn org.pitest:pitest-maven:mutationCoverage -X -DoutputFormats=HTML --log-file ../../logs/org.apache.commons.imaging.common.bytesource.ByteSourceTest.txt
mv target/pit-reports target/org.apache.commons.imaging.common.bytesource.ByteSourceTest
cp -r target/org.apache.commons.imaging.common.bytesource.ByteSourceTest /home/dorma10/mutation-analysis/mutation_results/commons-imaging

rm -rf target/org.apache.commons.imaging.common.bytesource.ByteSourceTest

python3 /home/dorma10/mutation-analysis/effectiveness/mutation/pom_changer.py commons-imaging org.apache.commons.imaging.common.bytesource.ByteSourceInputStream org.apache.commons.imaging.common.bytesource.ByteSourceInputStreamTest DEFAULT
echo '* Mutating org.apache.commons.imaging.common.bytesource.ByteSourceInputStream with operator DEFAULT'
timeout 20m mvn org.pitest:pitest-maven:mutationCoverage -X -DoutputFormats=HTML --log-file ../../logs/org.apache.commons.imaging.common.bytesource.ByteSourceInputStreamTest.txt
mv target/pit-reports target/org.apache.commons.imaging.common.bytesource.ByteSourceInputStreamTest
cp -r target/org.apache.commons.imaging.common.bytesource.ByteSourceInputStreamTest /home/dorma10/mutation-analysis/mutation_results/commons-imaging

rm -rf target/org.apache.commons.imaging.common.bytesource.ByteSourceInputStreamTest

python3 /home/dorma10/mutation-analysis/effectiveness/mutation/pom_changer.py commons-imaging org.apache.commons.imaging.common.itu_t4.HuffmanTreeException org.apache.commons.imaging.common.itu_t4.HuffmanTreeExceptionTest DEFAULT
echo '* Mutating org.apache.commons.imaging.common.itu_t4.HuffmanTreeException with operator DEFAULT'
timeout 20m mvn org.pitest:pitest-maven:mutationCoverage -X -DoutputFormats=HTML --log-file ../../logs/org.apache.commons.imaging.common.itu_t4.HuffmanTreeExceptionTest.txt
mv target/pit-reports target/org.apache.commons.imaging.common.itu_t4.HuffmanTreeExceptionTest
cp -r target/org.apache.commons.imaging.common.itu_t4.HuffmanTreeExceptionTest /home/dorma10/mutation-analysis/mutation_results/commons-imaging

rm -rf target/org.apache.commons.imaging.common.itu_t4.HuffmanTreeExceptionTest

python3 /home/dorma10/mutation-analysis/effectiveness/mutation/pom_changer.py commons-imaging org.apache.commons.imaging.common.itu_t4.T4_T6_Tables org.apache.commons.imaging.common.itu_t4.T4_T6_TablesTest DEFAULT
echo '* Mutating org.apache.commons.imaging.common.itu_t4.T4_T6_Tables with operator DEFAULT'
timeout 20m mvn org.pitest:pitest-maven:mutationCoverage -X -DoutputFormats=HTML --log-file ../../logs/org.apache.commons.imaging.common.itu_t4.T4_T6_TablesTest.txt
mv target/pit-reports target/org.apache.commons.imaging.common.itu_t4.T4_T6_TablesTest
cp -r target/org.apache.commons.imaging.common.itu_t4.T4_T6_TablesTest /home/dorma10/mutation-analysis/mutation_results/commons-imaging

rm -rf target/org.apache.commons.imaging.common.itu_t4.T4_T6_TablesTest

python3 /home/dorma10/mutation-analysis/effectiveness/mutation/pom_changer.py commons-imaging org.apache.commons.imaging.formats.bmp.BmpWriterRgb org.apache.commons.imaging.formats.bmp.BmpWriterRgbTest DEFAULT
echo '* Mutating org.apache.commons.imaging.formats.bmp.BmpWriterRgb with operator DEFAULT'
timeout 20m mvn org.pitest:pitest-maven:mutationCoverage -X -DoutputFormats=HTML --log-file ../../logs/org.apache.commons.imaging.formats.bmp.BmpWriterRgbTest.txt
mv target/pit-reports target/org.apache.commons.imaging.formats.bmp.BmpWriterRgbTest
cp -r target/org.apache.commons.imaging.formats.bmp.BmpWriterRgbTest /home/dorma10/mutation-analysis/mutation_results/commons-imaging

rm -rf target/org.apache.commons.imaging.formats.bmp.BmpWriterRgbTest

python3 /home/dorma10/mutation-analysis/effectiveness/mutation/pom_changer.py commons-imaging org.apache.commons.imaging.formats.tiff.TiffTags org.apache.commons.imaging.formats.tiff.TiffTagsTest DEFAULT
echo '* Mutating org.apache.commons.imaging.formats.tiff.TiffTags with operator DEFAULT'
timeout 20m mvn org.pitest:pitest-maven:mutationCoverage -X -DoutputFormats=HTML --log-file ../../logs/org.apache.commons.imaging.formats.tiff.TiffTagsTest.txt
mv target/pit-reports target/org.apache.commons.imaging.formats.tiff.TiffTagsTest
cp -r target/org.apache.commons.imaging.formats.tiff.TiffTagsTest /home/dorma10/mutation-analysis/mutation_results/commons-imaging

rm -rf target/org.apache.commons.imaging.formats.tiff.TiffTagsTest

python3 /home/dorma10/mutation-analysis/effectiveness/mutation/pom_changer.py commons-imaging org.apache.commons.imaging.formats.tiff.TiffRasterStatistics org.apache.commons.imaging.formats.tiff.TiffRasterStatisticsTest DEFAULT
echo '* Mutating org.apache.commons.imaging.formats.tiff.TiffRasterStatistics with operator DEFAULT'
timeout 20m mvn org.pitest:pitest-maven:mutationCoverage -X -DoutputFormats=HTML --log-file ../../logs/org.apache.commons.imaging.formats.tiff.TiffRasterStatisticsTest.txt
mv target/pit-reports target/org.apache.commons.imaging.formats.tiff.TiffRasterStatisticsTest
cp -r target/org.apache.commons.imaging.formats.tiff.TiffRasterStatisticsTest /home/dorma10/mutation-analysis/mutation_results/commons-imaging

rm -rf target/org.apache.commons.imaging.formats.tiff.TiffRasterStatisticsTest

python3 /home/dorma10/mutation-analysis/effectiveness/mutation/pom_changer.py commons-imaging org.apache.commons.imaging.formats.tiff.TiffRasterData org.apache.commons.imaging.formats.tiff.TiffRasterDataTest DEFAULT
echo '* Mutating org.apache.commons.imaging.formats.tiff.TiffRasterData with operator DEFAULT'
timeout 20m mvn org.pitest:pitest-maven:mutationCoverage -X -DoutputFormats=HTML --log-file ../../logs/org.apache.commons.imaging.formats.tiff.TiffRasterDataTest.txt
mv target/pit-reports target/org.apache.commons.imaging.formats.tiff.TiffRasterDataTest
cp -r target/org.apache.commons.imaging.formats.tiff.TiffRasterDataTest /home/dorma10/mutation-analysis/mutation_results/commons-imaging

rm -rf target/org.apache.commons.imaging.formats.tiff.TiffRasterDataTest

python3 /home/dorma10/mutation-analysis/effectiveness/mutation/pom_changer.py commons-imaging org.apache.commons.imaging.formats.tiff.JpegImageData org.apache.commons.imaging.formats.tiff.JpegImageDataTest DEFAULT
echo '* Mutating org.apache.commons.imaging.formats.tiff.JpegImageData with operator DEFAULT'
timeout 20m mvn org.pitest:pitest-maven:mutationCoverage -X -DoutputFormats=HTML --log-file ../../logs/org.apache.commons.imaging.formats.tiff.JpegImageDataTest.txt
mv target/pit-reports target/org.apache.commons.imaging.formats.tiff.JpegImageDataTest
cp -r target/org.apache.commons.imaging.formats.tiff.JpegImageDataTest /home/dorma10/mutation-analysis/mutation_results/commons-imaging

rm -rf target/org.apache.commons.imaging.formats.tiff.JpegImageDataTest

python3 /home/dorma10/mutation-analysis/effectiveness/mutation/pom_changer.py commons-imaging org.apache.commons.imaging.formats.tiff.write.TiffOutputSet org.apache.commons.imaging.formats.tiff.write.TiffOutputSetTest DEFAULT
echo '* Mutating org.apache.commons.imaging.formats.tiff.write.TiffOutputSet with operator DEFAULT'
timeout 20m mvn org.pitest:pitest-maven:mutationCoverage -X -DoutputFormats=HTML --log-file ../../logs/org.apache.commons.imaging.formats.tiff.write.TiffOutputSetTest.txt
mv target/pit-reports target/org.apache.commons.imaging.formats.tiff.write.TiffOutputSetTest
cp -r target/org.apache.commons.imaging.formats.tiff.write.TiffOutputSetTest /home/dorma10/mutation-analysis/mutation_results/commons-imaging

rm -rf target/org.apache.commons.imaging.formats.tiff.write.TiffOutputSetTest

python3 /home/dorma10/mutation-analysis/effectiveness/mutation/pom_changer.py commons-imaging org.apache.commons.imaging.formats.tiff.write.TiffOutputDirectory org.apache.commons.imaging.formats.tiff.write.TiffOutputDirectoryTest DEFAULT
echo '* Mutating org.apache.commons.imaging.formats.tiff.write.TiffOutputDirectory with operator DEFAULT'
timeout 20m mvn org.pitest:pitest-maven:mutationCoverage -X -DoutputFormats=HTML --log-file ../../logs/org.apache.commons.imaging.formats.tiff.write.TiffOutputDirectoryTest.txt
mv target/pit-reports target/org.apache.commons.imaging.formats.tiff.write.TiffOutputDirectoryTest
cp -r target/org.apache.commons.imaging.formats.tiff.write.TiffOutputDirectoryTest /home/dorma10/mutation-analysis/mutation_results/commons-imaging

rm -rf target/org.apache.commons.imaging.formats.tiff.write.TiffOutputDirectoryTest

python3 /home/dorma10/mutation-analysis/effectiveness/mutation/pom_changer.py commons-imaging org.apache.commons.imaging.formats.tiff.fieldtypes.FieldTypeShort org.apache.commons.imaging.formats.tiff.fieldtypes.FieldTypeShortTest DEFAULT
echo '* Mutating org.apache.commons.imaging.formats.tiff.fieldtypes.FieldTypeShort with operator DEFAULT'
timeout 20m mvn org.pitest:pitest-maven:mutationCoverage -X -DoutputFormats=HTML --log-file ../../logs/org.apache.commons.imaging.formats.tiff.fieldtypes.FieldTypeShortTest.txt
mv target/pit-reports target/org.apache.commons.imaging.formats.tiff.fieldtypes.FieldTypeShortTest
cp -r target/org.apache.commons.imaging.formats.tiff.fieldtypes.FieldTypeShortTest /home/dorma10/mutation-analysis/mutation_results/commons-imaging

rm -rf target/org.apache.commons.imaging.formats.tiff.fieldtypes.FieldTypeShortTest

python3 /home/dorma10/mutation-analysis/effectiveness/mutation/pom_changer.py commons-imaging org.apache.commons.imaging.formats.tiff.fieldtypes.FieldType org.apache.commons.imaging.formats.tiff.fieldtypes.FieldTypeTest DEFAULT
echo '* Mutating org.apache.commons.imaging.formats.tiff.fieldtypes.FieldType with operator DEFAULT'
timeout 20m mvn org.pitest:pitest-maven:mutationCoverage -X -DoutputFormats=HTML --log-file ../../logs/org.apache.commons.imaging.formats.tiff.fieldtypes.FieldTypeTest.txt
mv target/pit-reports target/org.apache.commons.imaging.formats.tiff.fieldtypes.FieldTypeTest
cp -r target/org.apache.commons.imaging.formats.tiff.fieldtypes.FieldTypeTest /home/dorma10/mutation-analysis/mutation_results/commons-imaging

rm -rf target/org.apache.commons.imaging.formats.tiff.fieldtypes.FieldTypeTest

python3 /home/dorma10/mutation-analysis/effectiveness/mutation/pom_changer.py commons-imaging org.apache.commons.imaging.formats.tiff.fieldtypes.FieldTypeLong org.apache.commons.imaging.formats.tiff.fieldtypes.FieldTypeLongTest DEFAULT
echo '* Mutating org.apache.commons.imaging.formats.tiff.fieldtypes.FieldTypeLong with operator DEFAULT'
timeout 20m mvn org.pitest:pitest-maven:mutationCoverage -X -DoutputFormats=HTML --log-file ../../logs/org.apache.commons.imaging.formats.tiff.fieldtypes.FieldTypeLongTest.txt
mv target/pit-reports target/org.apache.commons.imaging.formats.tiff.fieldtypes.FieldTypeLongTest
cp -r target/org.apache.commons.imaging.formats.tiff.fieldtypes.FieldTypeLongTest /home/dorma10/mutation-analysis/mutation_results/commons-imaging

rm -rf target/org.apache.commons.imaging.formats.tiff.fieldtypes.FieldTypeLongTest

python3 /home/dorma10/mutation-analysis/effectiveness/mutation/pom_changer.py commons-imaging org.apache.commons.imaging.formats.tiff.fieldtypes.FieldTypeByte org.apache.commons.imaging.formats.tiff.fieldtypes.FieldTypeByteTest DEFAULT
echo '* Mutating org.apache.commons.imaging.formats.tiff.fieldtypes.FieldTypeByte with operator DEFAULT'
timeout 20m mvn org.pitest:pitest-maven:mutationCoverage -X -DoutputFormats=HTML --log-file ../../logs/org.apache.commons.imaging.formats.tiff.fieldtypes.FieldTypeByteTest.txt
mv target/pit-reports target/org.apache.commons.imaging.formats.tiff.fieldtypes.FieldTypeByteTest
cp -r target/org.apache.commons.imaging.formats.tiff.fieldtypes.FieldTypeByteTest /home/dorma10/mutation-analysis/mutation_results/commons-imaging

rm -rf target/org.apache.commons.imaging.formats.tiff.fieldtypes.FieldTypeByteTest

python3 /home/dorma10/mutation-analysis/effectiveness/mutation/pom_changer.py commons-imaging org.apache.commons.imaging.formats.tiff.fieldtypes.FieldTypeAscii org.apache.commons.imaging.formats.tiff.fieldtypes.FieldTypeAsciiTest DEFAULT
echo '* Mutating org.apache.commons.imaging.formats.tiff.fieldtypes.FieldTypeAscii with operator DEFAULT'
timeout 20m mvn org.pitest:pitest-maven:mutationCoverage -X -DoutputFormats=HTML --log-file ../../logs/org.apache.commons.imaging.formats.tiff.fieldtypes.FieldTypeAsciiTest.txt
mv target/pit-reports target/org.apache.commons.imaging.formats.tiff.fieldtypes.FieldTypeAsciiTest
cp -r target/org.apache.commons.imaging.formats.tiff.fieldtypes.FieldTypeAsciiTest /home/dorma10/mutation-analysis/mutation_results/commons-imaging

rm -rf target/org.apache.commons.imaging.formats.tiff.fieldtypes.FieldTypeAsciiTest

python3 /home/dorma10/mutation-analysis/effectiveness/mutation/pom_changer.py commons-imaging org.apache.commons.imaging.formats.tiff.fieldtypes.FieldTypeRational org.apache.commons.imaging.formats.tiff.fieldtypes.FieldTypeRationalTest DEFAULT
echo '* Mutating org.apache.commons.imaging.formats.tiff.fieldtypes.FieldTypeRational with operator DEFAULT'
timeout 20m mvn org.pitest:pitest-maven:mutationCoverage -X -DoutputFormats=HTML --log-file ../../logs/org.apache.commons.imaging.formats.tiff.fieldtypes.FieldTypeRationalTest.txt
mv target/pit-reports target/org.apache.commons.imaging.formats.tiff.fieldtypes.FieldTypeRationalTest
cp -r target/org.apache.commons.imaging.formats.tiff.fieldtypes.FieldTypeRationalTest /home/dorma10/mutation-analysis/mutation_results/commons-imaging

rm -rf target/org.apache.commons.imaging.formats.tiff.fieldtypes.FieldTypeRationalTest

python3 /home/dorma10/mutation-analysis/effectiveness/mutation/pom_changer.py commons-imaging org.apache.commons.imaging.formats.tiff.datareaders.DataReaderStrips org.apache.commons.imaging.formats.tiff.datareaders.DataReaderStripsTest DEFAULT
echo '* Mutating org.apache.commons.imaging.formats.tiff.datareaders.DataReaderStrips with operator DEFAULT'
timeout 20m mvn org.pitest:pitest-maven:mutationCoverage -X -DoutputFormats=HTML --log-file ../../logs/org.apache.commons.imaging.formats.tiff.datareaders.DataReaderStripsTest.txt
mv target/pit-reports target/org.apache.commons.imaging.formats.tiff.datareaders.DataReaderStripsTest
cp -r target/org.apache.commons.imaging.formats.tiff.datareaders.DataReaderStripsTest /home/dorma10/mutation-analysis/mutation_results/commons-imaging

rm -rf target/org.apache.commons.imaging.formats.tiff.datareaders.DataReaderStripsTest

python3 /home/dorma10/mutation-analysis/effectiveness/mutation/pom_changer.py commons-imaging org.apache.commons.imaging.formats.tiff.photometricinterpreters.PhotometricInterpreterRgb org.apache.commons.imaging.formats.tiff.photometricinterpreters.PhotometricInterpreterRgbTest DEFAULT
echo '* Mutating org.apache.commons.imaging.formats.tiff.photometricinterpreters.PhotometricInterpreterRgb with operator DEFAULT'
timeout 20m mvn org.pitest:pitest-maven:mutationCoverage -X -DoutputFormats=HTML --log-file ../../logs/org.apache.commons.imaging.formats.tiff.photometricinterpreters.PhotometricInterpreterRgbTest.txt
mv target/pit-reports target/org.apache.commons.imaging.formats.tiff.photometricinterpreters.PhotometricInterpreterRgbTest
cp -r target/org.apache.commons.imaging.formats.tiff.photometricinterpreters.PhotometricInterpreterRgbTest /home/dorma10/mutation-analysis/mutation_results/commons-imaging

rm -rf target/org.apache.commons.imaging.formats.tiff.photometricinterpreters.PhotometricInterpreterRgbTest

python3 /home/dorma10/mutation-analysis/effectiveness/mutation/pom_changer.py commons-imaging org.apache.commons.imaging.formats.tiff.photometricinterpreters.PhotometricInterpreterLogLuv org.apache.commons.imaging.formats.tiff.photometricinterpreters.PhotometricInterpreterLogLuvTest DEFAULT
echo '* Mutating org.apache.commons.imaging.formats.tiff.photometricinterpreters.PhotometricInterpreterLogLuv with operator DEFAULT'
timeout 20m mvn org.pitest:pitest-maven:mutationCoverage -X -DoutputFormats=HTML --log-file ../../logs/org.apache.commons.imaging.formats.tiff.photometricinterpreters.PhotometricInterpreterLogLuvTest.txt
mv target/pit-reports target/org.apache.commons.imaging.formats.tiff.photometricinterpreters.PhotometricInterpreterLogLuvTest
cp -r target/org.apache.commons.imaging.formats.tiff.photometricinterpreters.PhotometricInterpreterLogLuvTest /home/dorma10/mutation-analysis/mutation_results/commons-imaging

rm -rf target/org.apache.commons.imaging.formats.tiff.photometricinterpreters.PhotometricInterpreterLogLuvTest

python3 /home/dorma10/mutation-analysis/effectiveness/mutation/pom_changer.py commons-imaging org.apache.commons.imaging.formats.tiff.photometricinterpreters.floatingpoint.PhotometricInterpreterFloat org.apache.commons.imaging.formats.tiff.photometricinterpreters.floatingpoint.PhotometricInterpreterFloatTest DEFAULT
echo '* Mutating org.apache.commons.imaging.formats.tiff.photometricinterpreters.floatingpoint.PhotometricInterpreterFloat with operator DEFAULT'
timeout 20m mvn org.pitest:pitest-maven:mutationCoverage -X -DoutputFormats=HTML --log-file ../../logs/org.apache.commons.imaging.formats.tiff.photometricinterpreters.floatingpoint.PhotometricInterpreterFloatTest.txt
mv target/pit-reports target/org.apache.commons.imaging.formats.tiff.photometricinterpreters.floatingpoint.PhotometricInterpreterFloatTest
cp -r target/org.apache.commons.imaging.formats.tiff.photometricinterpreters.floatingpoint.PhotometricInterpreterFloatTest /home/dorma10/mutation-analysis/mutation_results/commons-imaging

rm -rf target/org.apache.commons.imaging.formats.tiff.photometricinterpreters.floatingpoint.PhotometricInterpreterFloatTest

python3 /home/dorma10/mutation-analysis/effectiveness/mutation/pom_changer.py commons-imaging org.apache.commons.imaging.formats.tiff.photometricinterpreters.floatingpoint.PaletteEntryForRange org.apache.commons.imaging.formats.tiff.photometricinterpreters.floatingpoint.PaletteEntryForRangeTest DEFAULT
echo '* Mutating org.apache.commons.imaging.formats.tiff.photometricinterpreters.floatingpoint.PaletteEntryForRange with operator DEFAULT'
timeout 20m mvn org.pitest:pitest-maven:mutationCoverage -X -DoutputFormats=HTML --log-file ../../logs/org.apache.commons.imaging.formats.tiff.photometricinterpreters.floatingpoint.PaletteEntryForRangeTest.txt
mv target/pit-reports target/org.apache.commons.imaging.formats.tiff.photometricinterpreters.floatingpoint.PaletteEntryForRangeTest
cp -r target/org.apache.commons.imaging.formats.tiff.photometricinterpreters.floatingpoint.PaletteEntryForRangeTest /home/dorma10/mutation-analysis/mutation_results/commons-imaging

rm -rf target/org.apache.commons.imaging.formats.tiff.photometricinterpreters.floatingpoint.PaletteEntryForRangeTest

python3 /home/dorma10/mutation-analysis/effectiveness/mutation/pom_changer.py commons-imaging org.apache.commons.imaging.formats.tiff.photometricinterpreters.floatingpoint.PaletteEntryForValue org.apache.commons.imaging.formats.tiff.photometricinterpreters.floatingpoint.PaletteEntryForValueTest DEFAULT
echo '* Mutating org.apache.commons.imaging.formats.tiff.photometricinterpreters.floatingpoint.PaletteEntryForValue with operator DEFAULT'
timeout 20m mvn org.pitest:pitest-maven:mutationCoverage -X -DoutputFormats=HTML --log-file ../../logs/org.apache.commons.imaging.formats.tiff.photometricinterpreters.floatingpoint.PaletteEntryForValueTest.txt
mv target/pit-reports target/org.apache.commons.imaging.formats.tiff.photometricinterpreters.floatingpoint.PaletteEntryForValueTest
cp -r target/org.apache.commons.imaging.formats.tiff.photometricinterpreters.floatingpoint.PaletteEntryForValueTest /home/dorma10/mutation-analysis/mutation_results/commons-imaging

rm -rf target/org.apache.commons.imaging.formats.tiff.photometricinterpreters.floatingpoint.PaletteEntryForValueTest

python3 /home/dorma10/mutation-analysis/effectiveness/mutation/pom_changer.py commons-imaging org.apache.commons.imaging.formats.tiff.taginfos.TagInfoSShort org.apache.commons.imaging.formats.tiff.taginfos.TagInfoSShortTest DEFAULT
echo '* Mutating org.apache.commons.imaging.formats.tiff.taginfos.TagInfoSShort with operator DEFAULT'
timeout 20m mvn org.pitest:pitest-maven:mutationCoverage -X -DoutputFormats=HTML --log-file ../../logs/org.apache.commons.imaging.formats.tiff.taginfos.TagInfoSShortTest.txt
mv target/pit-reports target/org.apache.commons.imaging.formats.tiff.taginfos.TagInfoSShortTest
cp -r target/org.apache.commons.imaging.formats.tiff.taginfos.TagInfoSShortTest /home/dorma10/mutation-analysis/mutation_results/commons-imaging

rm -rf target/org.apache.commons.imaging.formats.tiff.taginfos.TagInfoSShortTest

python3 /home/dorma10/mutation-analysis/effectiveness/mutation/pom_changer.py commons-imaging org.apache.commons.imaging.formats.tiff.taginfos.TagInfoUnknown org.apache.commons.imaging.formats.tiff.taginfos.TagInfoUnknownTest DEFAULT
echo '* Mutating org.apache.commons.imaging.formats.tiff.taginfos.TagInfoUnknown with operator DEFAULT'
timeout 20m mvn org.pitest:pitest-maven:mutationCoverage -X -DoutputFormats=HTML --log-file ../../logs/org.apache.commons.imaging.formats.tiff.taginfos.TagInfoUnknownTest.txt
mv target/pit-reports target/org.apache.commons.imaging.formats.tiff.taginfos.TagInfoUnknownTest
cp -r target/org.apache.commons.imaging.formats.tiff.taginfos.TagInfoUnknownTest /home/dorma10/mutation-analysis/mutation_results/commons-imaging

rm -rf target/org.apache.commons.imaging.formats.tiff.taginfos.TagInfoUnknownTest

python3 /home/dorma10/mutation-analysis/effectiveness/mutation/pom_changer.py commons-imaging org.apache.commons.imaging.formats.tiff.taginfos.TagInfoByteOrShort org.apache.commons.imaging.formats.tiff.taginfos.TagInfoByteOrShortTest DEFAULT
echo '* Mutating org.apache.commons.imaging.formats.tiff.taginfos.TagInfoByteOrShort with operator DEFAULT'
timeout 20m mvn org.pitest:pitest-maven:mutationCoverage -X -DoutputFormats=HTML --log-file ../../logs/org.apache.commons.imaging.formats.tiff.taginfos.TagInfoByteOrShortTest.txt
mv target/pit-reports target/org.apache.commons.imaging.formats.tiff.taginfos.TagInfoByteOrShortTest
cp -r target/org.apache.commons.imaging.formats.tiff.taginfos.TagInfoByteOrShortTest /home/dorma10/mutation-analysis/mutation_results/commons-imaging

rm -rf target/org.apache.commons.imaging.formats.tiff.taginfos.TagInfoByteOrShortTest

python3 /home/dorma10/mutation-analysis/effectiveness/mutation/pom_changer.py commons-imaging org.apache.commons.imaging.formats.tiff.taginfos.TagInfoSLong org.apache.commons.imaging.formats.tiff.taginfos.TagInfoSLongTest DEFAULT
echo '* Mutating org.apache.commons.imaging.formats.tiff.taginfos.TagInfoSLong with operator DEFAULT'
timeout 20m mvn org.pitest:pitest-maven:mutationCoverage -X -DoutputFormats=HTML --log-file ../../logs/org.apache.commons.imaging.formats.tiff.taginfos.TagInfoSLongTest.txt
mv target/pit-reports target/org.apache.commons.imaging.formats.tiff.taginfos.TagInfoSLongTest
cp -r target/org.apache.commons.imaging.formats.tiff.taginfos.TagInfoSLongTest /home/dorma10/mutation-analysis/mutation_results/commons-imaging

rm -rf target/org.apache.commons.imaging.formats.tiff.taginfos.TagInfoSLongTest

python3 /home/dorma10/mutation-analysis/effectiveness/mutation/pom_changer.py commons-imaging org.apache.commons.imaging.formats.tiff.taginfos.TagInfoByte org.apache.commons.imaging.formats.tiff.taginfos.TagInfoByteTest DEFAULT
echo '* Mutating org.apache.commons.imaging.formats.tiff.taginfos.TagInfoByte with operator DEFAULT'
timeout 20m mvn org.pitest:pitest-maven:mutationCoverage -X -DoutputFormats=HTML --log-file ../../logs/org.apache.commons.imaging.formats.tiff.taginfos.TagInfoByteTest.txt
mv target/pit-reports target/org.apache.commons.imaging.formats.tiff.taginfos.TagInfoByteTest
cp -r target/org.apache.commons.imaging.formats.tiff.taginfos.TagInfoByteTest /home/dorma10/mutation-analysis/mutation_results/commons-imaging

rm -rf target/org.apache.commons.imaging.formats.tiff.taginfos.TagInfoByteTest

python3 /home/dorma10/mutation-analysis/effectiveness/mutation/pom_changer.py commons-imaging org.apache.commons.imaging.formats.tiff.taginfos.TagInfoSBytes org.apache.commons.imaging.formats.tiff.taginfos.TagInfoSBytesTest DEFAULT
echo '* Mutating org.apache.commons.imaging.formats.tiff.taginfos.TagInfoSBytes with operator DEFAULT'
timeout 20m mvn org.pitest:pitest-maven:mutationCoverage -X -DoutputFormats=HTML --log-file ../../logs/org.apache.commons.imaging.formats.tiff.taginfos.TagInfoSBytesTest.txt
mv target/pit-reports target/org.apache.commons.imaging.formats.tiff.taginfos.TagInfoSBytesTest
cp -r target/org.apache.commons.imaging.formats.tiff.taginfos.TagInfoSBytesTest /home/dorma10/mutation-analysis/mutation_results/commons-imaging

rm -rf target/org.apache.commons.imaging.formats.tiff.taginfos.TagInfoSBytesTest

python3 /home/dorma10/mutation-analysis/effectiveness/mutation/pom_changer.py commons-imaging org.apache.commons.imaging.formats.tiff.taginfos.TagInfoSByte org.apache.commons.imaging.formats.tiff.taginfos.TagInfoSByteTest DEFAULT
echo '* Mutating org.apache.commons.imaging.formats.tiff.taginfos.TagInfoSByte with operator DEFAULT'
timeout 20m mvn org.pitest:pitest-maven:mutationCoverage -X -DoutputFormats=HTML --log-file ../../logs/org.apache.commons.imaging.formats.tiff.taginfos.TagInfoSByteTest.txt
mv target/pit-reports target/org.apache.commons.imaging.formats.tiff.taginfos.TagInfoSByteTest
cp -r target/org.apache.commons.imaging.formats.tiff.taginfos.TagInfoSByteTest /home/dorma10/mutation-analysis/mutation_results/commons-imaging

rm -rf target/org.apache.commons.imaging.formats.tiff.taginfos.TagInfoSByteTest

python3 /home/dorma10/mutation-analysis/effectiveness/mutation/pom_changer.py commons-imaging org.apache.commons.imaging.formats.tiff.taginfos.TagInfoSShorts org.apache.commons.imaging.formats.tiff.taginfos.TagInfoSShortsTest DEFAULT
echo '* Mutating org.apache.commons.imaging.formats.tiff.taginfos.TagInfoSShorts with operator DEFAULT'
timeout 20m mvn org.pitest:pitest-maven:mutationCoverage -X -DoutputFormats=HTML --log-file ../../logs/org.apache.commons.imaging.formats.tiff.taginfos.TagInfoSShortsTest.txt
mv target/pit-reports target/org.apache.commons.imaging.formats.tiff.taginfos.TagInfoSShortsTest
cp -r target/org.apache.commons.imaging.formats.tiff.taginfos.TagInfoSShortsTest /home/dorma10/mutation-analysis/mutation_results/commons-imaging

rm -rf target/org.apache.commons.imaging.formats.tiff.taginfos.TagInfoSShortsTest

python3 /home/dorma10/mutation-analysis/effectiveness/mutation/pom_changer.py commons-imaging org.apache.commons.imaging.formats.pcx.RleReader org.apache.commons.imaging.formats.pcx.RleReaderTest DEFAULT
echo '* Mutating org.apache.commons.imaging.formats.pcx.RleReader with operator DEFAULT'
timeout 20m mvn org.pitest:pitest-maven:mutationCoverage -X -DoutputFormats=HTML --log-file ../../logs/org.apache.commons.imaging.formats.pcx.RleReaderTest.txt
mv target/pit-reports target/org.apache.commons.imaging.formats.pcx.RleReaderTest
cp -r target/org.apache.commons.imaging.formats.pcx.RleReaderTest /home/dorma10/mutation-analysis/mutation_results/commons-imaging

rm -rf target/org.apache.commons.imaging.formats.pcx.RleReaderTest

python3 /home/dorma10/mutation-analysis/effectiveness/mutation/pom_changer.py commons-imaging org.apache.commons.imaging.formats.png.PngCrc org.apache.commons.imaging.formats.png.PngCrcTest DEFAULT
echo '* Mutating org.apache.commons.imaging.formats.png.PngCrc with operator DEFAULT'
timeout 20m mvn org.pitest:pitest-maven:mutationCoverage -X -DoutputFormats=HTML --log-file ../../logs/org.apache.commons.imaging.formats.png.PngCrcTest.txt
mv target/pit-reports target/org.apache.commons.imaging.formats.png.PngCrcTest
cp -r target/org.apache.commons.imaging.formats.png.PngCrcTest /home/dorma10/mutation-analysis/mutation_results/commons-imaging

rm -rf target/org.apache.commons.imaging.formats.png.PngCrcTest

python3 /home/dorma10/mutation-analysis/effectiveness/mutation/pom_changer.py commons-imaging org.apache.commons.imaging.formats.png.PngText org.apache.commons.imaging.formats.png.PngTextTest DEFAULT
echo '* Mutating org.apache.commons.imaging.formats.png.PngText with operator DEFAULT'
timeout 20m mvn org.pitest:pitest-maven:mutationCoverage -X -DoutputFormats=HTML --log-file ../../logs/org.apache.commons.imaging.formats.png.PngTextTest.txt
mv target/pit-reports target/org.apache.commons.imaging.formats.png.PngTextTest
cp -r target/org.apache.commons.imaging.formats.png.PngTextTest /home/dorma10/mutation-analysis/mutation_results/commons-imaging

rm -rf target/org.apache.commons.imaging.formats.png.PngTextTest

python3 /home/dorma10/mutation-analysis/effectiveness/mutation/pom_changer.py commons-imaging org.apache.commons.imaging.formats.png.PhysicalScale org.apache.commons.imaging.formats.png.PhysicalScaleTest DEFAULT
echo '* Mutating org.apache.commons.imaging.formats.png.PhysicalScale with operator DEFAULT'
timeout 20m mvn org.pitest:pitest-maven:mutationCoverage -X -DoutputFormats=HTML --log-file ../../logs/org.apache.commons.imaging.formats.png.PhysicalScaleTest.txt
mv target/pit-reports target/org.apache.commons.imaging.formats.png.PhysicalScaleTest
cp -r target/org.apache.commons.imaging.formats.png.PhysicalScaleTest /home/dorma10/mutation-analysis/mutation_results/commons-imaging

rm -rf target/org.apache.commons.imaging.formats.png.PhysicalScaleTest

python3 /home/dorma10/mutation-analysis/effectiveness/mutation/pom_changer.py commons-imaging org.apache.commons.imaging.formats.png.chunks.PngChunkIccp org.apache.commons.imaging.formats.png.chunks.PngChunkIccpTest DEFAULT
echo '* Mutating org.apache.commons.imaging.formats.png.chunks.PngChunkIccp with operator DEFAULT'
timeout 20m mvn org.pitest:pitest-maven:mutationCoverage -X -DoutputFormats=HTML --log-file ../../logs/org.apache.commons.imaging.formats.png.chunks.PngChunkIccpTest.txt
mv target/pit-reports target/org.apache.commons.imaging.formats.png.chunks.PngChunkIccpTest
cp -r target/org.apache.commons.imaging.formats.png.chunks.PngChunkIccpTest /home/dorma10/mutation-analysis/mutation_results/commons-imaging

rm -rf target/org.apache.commons.imaging.formats.png.chunks.PngChunkIccpTest

python3 /home/dorma10/mutation-analysis/effectiveness/mutation/pom_changer.py commons-imaging org.apache.commons.imaging.formats.png.chunks.PngChunkText org.apache.commons.imaging.formats.png.chunks.PngChunkTextTest DEFAULT
echo '* Mutating org.apache.commons.imaging.formats.png.chunks.PngChunkText with operator DEFAULT'
timeout 20m mvn org.pitest:pitest-maven:mutationCoverage -X -DoutputFormats=HTML --log-file ../../logs/org.apache.commons.imaging.formats.png.chunks.PngChunkTextTest.txt
mv target/pit-reports target/org.apache.commons.imaging.formats.png.chunks.PngChunkTextTest
cp -r target/org.apache.commons.imaging.formats.png.chunks.PngChunkTextTest /home/dorma10/mutation-analysis/mutation_results/commons-imaging

rm -rf target/org.apache.commons.imaging.formats.png.chunks.PngChunkTextTest

python3 /home/dorma10/mutation-analysis/effectiveness/mutation/pom_changer.py commons-imaging org.apache.commons.imaging.formats.png.chunks.PngChunkScal org.apache.commons.imaging.formats.png.chunks.PngChunkScalTest DEFAULT
echo '* Mutating org.apache.commons.imaging.formats.png.chunks.PngChunkScal with operator DEFAULT'
timeout 20m mvn org.pitest:pitest-maven:mutationCoverage -X -DoutputFormats=HTML --log-file ../../logs/org.apache.commons.imaging.formats.png.chunks.PngChunkScalTest.txt
mv target/pit-reports target/org.apache.commons.imaging.formats.png.chunks.PngChunkScalTest
cp -r target/org.apache.commons.imaging.formats.png.chunks.PngChunkScalTest /home/dorma10/mutation-analysis/mutation_results/commons-imaging

rm -rf target/org.apache.commons.imaging.formats.png.chunks.PngChunkScalTest

python3 /home/dorma10/mutation-analysis/effectiveness/mutation/pom_changer.py commons-imaging org.apache.commons.imaging.formats.png.transparencyfilters.TransparencyFilterIndexedColor org.apache.commons.imaging.formats.png.transparencyfilters.TransparencyFilterIndexedColorTest DEFAULT
echo '* Mutating org.apache.commons.imaging.formats.png.transparencyfilters.TransparencyFilterIndexedColor with operator DEFAULT'
timeout 20m mvn org.pitest:pitest-maven:mutationCoverage -X -DoutputFormats=HTML --log-file ../../logs/org.apache.commons.imaging.formats.png.transparencyfilters.TransparencyFilterIndexedColorTest.txt
mv target/pit-reports target/org.apache.commons.imaging.formats.png.transparencyfilters.TransparencyFilterIndexedColorTest
cp -r target/org.apache.commons.imaging.formats.png.transparencyfilters.TransparencyFilterIndexedColorTest /home/dorma10/mutation-analysis/mutation_results/commons-imaging

rm -rf target/org.apache.commons.imaging.formats.png.transparencyfilters.TransparencyFilterIndexedColorTest

python3 /home/dorma10/mutation-analysis/effectiveness/mutation/pom_changer.py commons-imaging org.apache.commons.imaging.formats.png.scanlinefilters.ScanlineFilterUp org.apache.commons.imaging.formats.png.scanlinefilters.ScanlineFilterUpTest DEFAULT
echo '* Mutating org.apache.commons.imaging.formats.png.scanlinefilters.ScanlineFilterUp with operator DEFAULT'
timeout 20m mvn org.pitest:pitest-maven:mutationCoverage -X -DoutputFormats=HTML --log-file ../../logs/org.apache.commons.imaging.formats.png.scanlinefilters.ScanlineFilterUpTest.txt
mv target/pit-reports target/org.apache.commons.imaging.formats.png.scanlinefilters.ScanlineFilterUpTest
cp -r target/org.apache.commons.imaging.formats.png.scanlinefilters.ScanlineFilterUpTest /home/dorma10/mutation-analysis/mutation_results/commons-imaging

rm -rf target/org.apache.commons.imaging.formats.png.scanlinefilters.ScanlineFilterUpTest

python3 /home/dorma10/mutation-analysis/effectiveness/mutation/pom_changer.py commons-imaging org.apache.commons.imaging.formats.png.scanlinefilters.ScanlineFilterPaeth org.apache.commons.imaging.formats.png.scanlinefilters.ScanlineFilterPaethTest DEFAULT
echo '* Mutating org.apache.commons.imaging.formats.png.scanlinefilters.ScanlineFilterPaeth with operator DEFAULT'
timeout 20m mvn org.pitest:pitest-maven:mutationCoverage -X -DoutputFormats=HTML --log-file ../../logs/org.apache.commons.imaging.formats.png.scanlinefilters.ScanlineFilterPaethTest.txt
mv target/pit-reports target/org.apache.commons.imaging.formats.png.scanlinefilters.ScanlineFilterPaethTest
cp -r target/org.apache.commons.imaging.formats.png.scanlinefilters.ScanlineFilterPaethTest /home/dorma10/mutation-analysis/mutation_results/commons-imaging

rm -rf target/org.apache.commons.imaging.formats.png.scanlinefilters.ScanlineFilterPaethTest

python3 /home/dorma10/mutation-analysis/effectiveness/mutation/pom_changer.py commons-imaging org.apache.commons.imaging.formats.png.scanlinefilters.ScanlineFilterAverage org.apache.commons.imaging.formats.png.scanlinefilters.ScanlineFilterAverageTest DEFAULT
echo '* Mutating org.apache.commons.imaging.formats.png.scanlinefilters.ScanlineFilterAverage with operator DEFAULT'
timeout 20m mvn org.pitest:pitest-maven:mutationCoverage -X -DoutputFormats=HTML --log-file ../../logs/org.apache.commons.imaging.formats.png.scanlinefilters.ScanlineFilterAverageTest.txt
mv target/pit-reports target/org.apache.commons.imaging.formats.png.scanlinefilters.ScanlineFilterAverageTest
cp -r target/org.apache.commons.imaging.formats.png.scanlinefilters.ScanlineFilterAverageTest /home/dorma10/mutation-analysis/mutation_results/commons-imaging

rm -rf target/org.apache.commons.imaging.formats.png.scanlinefilters.ScanlineFilterAverageTest

python3 /home/dorma10/mutation-analysis/effectiveness/mutation/pom_changer.py commons-imaging org.apache.commons.imaging.formats.psd.ImageResourceType org.apache.commons.imaging.formats.psd.ImageResourceTypeTest DEFAULT
echo '* Mutating org.apache.commons.imaging.formats.psd.ImageResourceType with operator DEFAULT'
timeout 20m mvn org.pitest:pitest-maven:mutationCoverage -X -DoutputFormats=HTML --log-file ../../logs/org.apache.commons.imaging.formats.psd.ImageResourceTypeTest.txt
mv target/pit-reports target/org.apache.commons.imaging.formats.psd.ImageResourceTypeTest
cp -r target/org.apache.commons.imaging.formats.psd.ImageResourceTypeTest /home/dorma10/mutation-analysis/mutation_results/commons-imaging

rm -rf target/org.apache.commons.imaging.formats.psd.ImageResourceTypeTest

python3 /home/dorma10/mutation-analysis/effectiveness/mutation/pom_changer.py commons-imaging org.apache.commons.imaging.formats.psd.ImageResourceBlock org.apache.commons.imaging.formats.psd.ImageResourceBlockTest DEFAULT
echo '* Mutating org.apache.commons.imaging.formats.psd.ImageResourceBlock with operator DEFAULT'
timeout 20m mvn org.pitest:pitest-maven:mutationCoverage -X -DoutputFormats=HTML --log-file ../../logs/org.apache.commons.imaging.formats.psd.ImageResourceBlockTest.txt
mv target/pit-reports target/org.apache.commons.imaging.formats.psd.ImageResourceBlockTest
cp -r target/org.apache.commons.imaging.formats.psd.ImageResourceBlockTest /home/dorma10/mutation-analysis/mutation_results/commons-imaging

rm -rf target/org.apache.commons.imaging.formats.psd.ImageResourceBlockTest

python3 /home/dorma10/mutation-analysis/effectiveness/mutation/pom_changer.py commons-imaging org.apache.commons.imaging.formats.psd.dataparsers.DataParserIndexed org.apache.commons.imaging.formats.psd.dataparsers.DataParserIndexedTest DEFAULT
echo '* Mutating org.apache.commons.imaging.formats.psd.dataparsers.DataParserIndexed with operator DEFAULT'
timeout 20m mvn org.pitest:pitest-maven:mutationCoverage -X -DoutputFormats=HTML --log-file ../../logs/org.apache.commons.imaging.formats.psd.dataparsers.DataParserIndexedTest.txt
mv target/pit-reports target/org.apache.commons.imaging.formats.psd.dataparsers.DataParserIndexedTest
cp -r target/org.apache.commons.imaging.formats.psd.dataparsers.DataParserIndexedTest /home/dorma10/mutation-analysis/mutation_results/commons-imaging

rm -rf target/org.apache.commons.imaging.formats.psd.dataparsers.DataParserIndexedTest

python3 /home/dorma10/mutation-analysis/effectiveness/mutation/pom_changer.py commons-imaging org.apache.commons.imaging.formats.psd.dataparsers.DataParserLab org.apache.commons.imaging.formats.psd.dataparsers.DataParserLabTest DEFAULT
echo '* Mutating org.apache.commons.imaging.formats.psd.dataparsers.DataParserLab with operator DEFAULT'
timeout 20m mvn org.pitest:pitest-maven:mutationCoverage -X -DoutputFormats=HTML --log-file ../../logs/org.apache.commons.imaging.formats.psd.dataparsers.DataParserLabTest.txt
mv target/pit-reports target/org.apache.commons.imaging.formats.psd.dataparsers.DataParserLabTest
cp -r target/org.apache.commons.imaging.formats.psd.dataparsers.DataParserLabTest /home/dorma10/mutation-analysis/mutation_results/commons-imaging

rm -rf target/org.apache.commons.imaging.formats.psd.dataparsers.DataParserLabTest

python3 /home/dorma10/mutation-analysis/effectiveness/mutation/pom_changer.py commons-imaging org.apache.commons.imaging.formats.psd.dataparsers.DataParserCmyk org.apache.commons.imaging.formats.psd.dataparsers.DataParserCmykTest DEFAULT
echo '* Mutating org.apache.commons.imaging.formats.psd.dataparsers.DataParserCmyk with operator DEFAULT'
timeout 20m mvn org.pitest:pitest-maven:mutationCoverage -X -DoutputFormats=HTML --log-file ../../logs/org.apache.commons.imaging.formats.psd.dataparsers.DataParserCmykTest.txt
mv target/pit-reports target/org.apache.commons.imaging.formats.psd.dataparsers.DataParserCmykTest
cp -r target/org.apache.commons.imaging.formats.psd.dataparsers.DataParserCmykTest /home/dorma10/mutation-analysis/mutation_results/commons-imaging

rm -rf target/org.apache.commons.imaging.formats.psd.dataparsers.DataParserCmykTest

python3 /home/dorma10/mutation-analysis/effectiveness/mutation/pom_changer.py commons-imaging org.apache.commons.imaging.formats.psd.dataparsers.DataParserGrayscale org.apache.commons.imaging.formats.psd.dataparsers.DataParserGrayscaleTest DEFAULT
echo '* Mutating org.apache.commons.imaging.formats.psd.dataparsers.DataParserGrayscale with operator DEFAULT'
timeout 20m mvn org.pitest:pitest-maven:mutationCoverage -X -DoutputFormats=HTML --log-file ../../logs/org.apache.commons.imaging.formats.psd.dataparsers.DataParserGrayscaleTest.txt
mv target/pit-reports target/org.apache.commons.imaging.formats.psd.dataparsers.DataParserGrayscaleTest
cp -r target/org.apache.commons.imaging.formats.psd.dataparsers.DataParserGrayscaleTest /home/dorma10/mutation-analysis/mutation_results/commons-imaging

rm -rf target/org.apache.commons.imaging.formats.psd.dataparsers.DataParserGrayscaleTest

python3 /home/dorma10/mutation-analysis/effectiveness/mutation/pom_changer.py commons-imaging org.apache.commons.imaging.formats.pnm.WhiteSpaceReader org.apache.commons.imaging.formats.pnm.WhiteSpaceReaderTest DEFAULT
echo '* Mutating org.apache.commons.imaging.formats.pnm.WhiteSpaceReader with operator DEFAULT'
timeout 20m mvn org.pitest:pitest-maven:mutationCoverage -X -DoutputFormats=HTML --log-file ../../logs/org.apache.commons.imaging.formats.pnm.WhiteSpaceReaderTest.txt
mv target/pit-reports target/org.apache.commons.imaging.formats.pnm.WhiteSpaceReaderTest
cp -r target/org.apache.commons.imaging.formats.pnm.WhiteSpaceReaderTest /home/dorma10/mutation-analysis/mutation_results/commons-imaging

rm -rf target/org.apache.commons.imaging.formats.pnm.WhiteSpaceReaderTest

python3 /home/dorma10/mutation-analysis/effectiveness/mutation/pom_changer.py commons-imaging org.apache.commons.imaging.formats.pnm.PbmFileInfo org.apache.commons.imaging.formats.pnm.PbmFileInfoTest DEFAULT
echo '* Mutating org.apache.commons.imaging.formats.pnm.PbmFileInfo with operator DEFAULT'
timeout 20m mvn org.pitest:pitest-maven:mutationCoverage -X -DoutputFormats=HTML --log-file ../../logs/org.apache.commons.imaging.formats.pnm.PbmFileInfoTest.txt
mv target/pit-reports target/org.apache.commons.imaging.formats.pnm.PbmFileInfoTest
cp -r target/org.apache.commons.imaging.formats.pnm.PbmFileInfoTest /home/dorma10/mutation-analysis/mutation_results/commons-imaging

rm -rf target/org.apache.commons.imaging.formats.pnm.PbmFileInfoTest

python3 /home/dorma10/mutation-analysis/effectiveness/mutation/pom_changer.py commons-imaging org.apache.commons.imaging.formats.pnm.PgmFileInfo org.apache.commons.imaging.formats.pnm.PgmFileInfoTest DEFAULT
echo '* Mutating org.apache.commons.imaging.formats.pnm.PgmFileInfo with operator DEFAULT'
timeout 20m mvn org.pitest:pitest-maven:mutationCoverage -X -DoutputFormats=HTML --log-file ../../logs/org.apache.commons.imaging.formats.pnm.PgmFileInfoTest.txt
mv target/pit-reports target/org.apache.commons.imaging.formats.pnm.PgmFileInfoTest
cp -r target/org.apache.commons.imaging.formats.pnm.PgmFileInfoTest /home/dorma10/mutation-analysis/mutation_results/commons-imaging

rm -rf target/org.apache.commons.imaging.formats.pnm.PgmFileInfoTest

python3 /home/dorma10/mutation-analysis/effectiveness/mutation/pom_changer.py commons-imaging org.apache.commons.imaging.formats.pnm.PnmImageParser org.apache.commons.imaging.formats.pnm.PnmImageParserTest DEFAULT
echo '* Mutating org.apache.commons.imaging.formats.pnm.PnmImageParser with operator DEFAULT'
timeout 20m mvn org.pitest:pitest-maven:mutationCoverage -X -DoutputFormats=HTML --log-file ../../logs/org.apache.commons.imaging.formats.pnm.PnmImageParserTest.txt
mv target/pit-reports target/org.apache.commons.imaging.formats.pnm.PnmImageParserTest
cp -r target/org.apache.commons.imaging.formats.pnm.PnmImageParserTest /home/dorma10/mutation-analysis/mutation_results/commons-imaging

rm -rf target/org.apache.commons.imaging.formats.pnm.PnmImageParserTest

python3 /home/dorma10/mutation-analysis/effectiveness/mutation/pom_changer.py commons-imaging org.apache.commons.imaging.formats.pnm.PpmFileInfo org.apache.commons.imaging.formats.pnm.PpmFileInfoTest DEFAULT
echo '* Mutating org.apache.commons.imaging.formats.pnm.PpmFileInfo with operator DEFAULT'
timeout 20m mvn org.pitest:pitest-maven:mutationCoverage -X -DoutputFormats=HTML --log-file ../../logs/org.apache.commons.imaging.formats.pnm.PpmFileInfoTest.txt
mv target/pit-reports target/org.apache.commons.imaging.formats.pnm.PpmFileInfoTest
cp -r target/org.apache.commons.imaging.formats.pnm.PpmFileInfoTest /home/dorma10/mutation-analysis/mutation_results/commons-imaging

rm -rf target/org.apache.commons.imaging.formats.pnm.PpmFileInfoTest

python3 /home/dorma10/mutation-analysis/effectiveness/mutation/pom_changer.py commons-imaging org.apache.commons.imaging.formats.jpeg.iptc.IptcTypeLookup org.apache.commons.imaging.formats.jpeg.iptc.IptcTypeLookupTest DEFAULT
echo '* Mutating org.apache.commons.imaging.formats.jpeg.iptc.IptcTypeLookup with operator DEFAULT'
timeout 20m mvn org.pitest:pitest-maven:mutationCoverage -X -DoutputFormats=HTML --log-file ../../logs/org.apache.commons.imaging.formats.jpeg.iptc.IptcTypeLookupTest.txt
mv target/pit-reports target/org.apache.commons.imaging.formats.jpeg.iptc.IptcTypeLookupTest
cp -r target/org.apache.commons.imaging.formats.jpeg.iptc.IptcTypeLookupTest /home/dorma10/mutation-analysis/mutation_results/commons-imaging

rm -rf target/org.apache.commons.imaging.formats.jpeg.iptc.IptcTypeLookupTest

python3 /home/dorma10/mutation-analysis/effectiveness/mutation/pom_changer.py commons-imaging org.apache.commons.imaging.formats.jpeg.iptc.IptcParser org.apache.commons.imaging.formats.jpeg.iptc.IptcParserTest DEFAULT
echo '* Mutating org.apache.commons.imaging.formats.jpeg.iptc.IptcParser with operator DEFAULT'
timeout 20m mvn org.pitest:pitest-maven:mutationCoverage -X -DoutputFormats=HTML --log-file ../../logs/org.apache.commons.imaging.formats.jpeg.iptc.IptcParserTest.txt
mv target/pit-reports target/org.apache.commons.imaging.formats.jpeg.iptc.IptcParserTest
cp -r target/org.apache.commons.imaging.formats.jpeg.iptc.IptcParserTest /home/dorma10/mutation-analysis/mutation_results/commons-imaging

rm -rf target/org.apache.commons.imaging.formats.jpeg.iptc.IptcParserTest

python3 /home/dorma10/mutation-analysis/effectiveness/mutation/pom_changer.py commons-imaging org.apache.commons.imaging.formats.jpeg.xmp.JpegXmpParser org.apache.commons.imaging.formats.jpeg.xmp.JpegXmpParserTest DEFAULT
echo '* Mutating org.apache.commons.imaging.formats.jpeg.xmp.JpegXmpParser with operator DEFAULT'
timeout 20m mvn org.pitest:pitest-maven:mutationCoverage -X -DoutputFormats=HTML --log-file ../../logs/org.apache.commons.imaging.formats.jpeg.xmp.JpegXmpParserTest.txt
mv target/pit-reports target/org.apache.commons.imaging.formats.jpeg.xmp.JpegXmpParserTest
cp -r target/org.apache.commons.imaging.formats.jpeg.xmp.JpegXmpParserTest /home/dorma10/mutation-analysis/mutation_results/commons-imaging

rm -rf target/org.apache.commons.imaging.formats.jpeg.xmp.JpegXmpParserTest

python3 /home/dorma10/mutation-analysis/effectiveness/mutation/pom_changer.py commons-imaging org.apache.commons.imaging.formats.jpeg.decoder.JpegDecoder org.apache.commons.imaging.formats.jpeg.decoder.JpegDecoderTest DEFAULT
echo '* Mutating org.apache.commons.imaging.formats.jpeg.decoder.JpegDecoder with operator DEFAULT'
timeout 20m mvn org.pitest:pitest-maven:mutationCoverage -X -DoutputFormats=HTML --log-file ../../logs/org.apache.commons.imaging.formats.jpeg.decoder.JpegDecoderTest.txt
mv target/pit-reports target/org.apache.commons.imaging.formats.jpeg.decoder.JpegDecoderTest
cp -r target/org.apache.commons.imaging.formats.jpeg.decoder.JpegDecoderTest /home/dorma10/mutation-analysis/mutation_results/commons-imaging

rm -rf target/org.apache.commons.imaging.formats.jpeg.decoder.JpegDecoderTest

python3 /home/dorma10/mutation-analysis/effectiveness/mutation/pom_changer.py commons-imaging org.apache.commons.imaging.formats.jpeg.decoder.JpegInputStream org.apache.commons.imaging.formats.jpeg.decoder.JpegInputStreamTest DEFAULT
echo '* Mutating org.apache.commons.imaging.formats.jpeg.decoder.JpegInputStream with operator DEFAULT'
timeout 20m mvn org.pitest:pitest-maven:mutationCoverage -X -DoutputFormats=HTML --log-file ../../logs/org.apache.commons.imaging.formats.jpeg.decoder.JpegInputStreamTest.txt
mv target/pit-reports target/org.apache.commons.imaging.formats.jpeg.decoder.JpegInputStreamTest
cp -r target/org.apache.commons.imaging.formats.jpeg.decoder.JpegInputStreamTest /home/dorma10/mutation-analysis/mutation_results/commons-imaging

rm -rf target/org.apache.commons.imaging.formats.jpeg.decoder.JpegInputStreamTest

python3 /home/dorma10/mutation-analysis/effectiveness/mutation/pom_changer.py commons-imaging org.apache.commons.imaging.formats.jpeg.decoder.Dct org.apache.commons.imaging.formats.jpeg.decoder.DctTest DEFAULT
echo '* Mutating org.apache.commons.imaging.formats.jpeg.decoder.Dct with operator DEFAULT'
timeout 20m mvn org.pitest:pitest-maven:mutationCoverage -X -DoutputFormats=HTML --log-file ../../logs/org.apache.commons.imaging.formats.jpeg.decoder.DctTest.txt
mv target/pit-reports target/org.apache.commons.imaging.formats.jpeg.decoder.DctTest
cp -r target/org.apache.commons.imaging.formats.jpeg.decoder.DctTest /home/dorma10/mutation-analysis/mutation_results/commons-imaging

rm -rf target/org.apache.commons.imaging.formats.jpeg.decoder.DctTest

python3 /home/dorma10/mutation-analysis/effectiveness/mutation/pom_changer.py commons-imaging org.apache.commons.imaging.formats.jpeg.JpegImageParser org.apache.commons.imaging.formats.jpeg.specific.JpegImageParserTest DEFAULT
echo '* Mutating org.apache.commons.imaging.formats.jpeg.JpegImageParser with operator DEFAULT'
timeout 20m mvn org.pitest:pitest-maven:mutationCoverage -X -DoutputFormats=HTML --log-file ../../logs/org.apache.commons.imaging.formats.jpeg.specific.JpegImageParserTest.txt
mv target/pit-reports target/org.apache.commons.imaging.formats.jpeg.specific.JpegImageParserTest
cp -r target/org.apache.commons.imaging.formats.jpeg.specific.JpegImageParserTest /home/dorma10/mutation-analysis/mutation_results/commons-imaging

rm -rf target/org.apache.commons.imaging.formats.jpeg.specific.JpegImageParserTest

python3 /home/dorma10/mutation-analysis/effectiveness/mutation/pom_changer.py commons-imaging org.apache.commons.imaging.formats.jpeg.segments.App2Segment org.apache.commons.imaging.formats.jpeg.segments.App2SegmentTest DEFAULT
echo '* Mutating org.apache.commons.imaging.formats.jpeg.segments.App2Segment with operator DEFAULT'
timeout 20m mvn org.pitest:pitest-maven:mutationCoverage -X -DoutputFormats=HTML --log-file ../../logs/org.apache.commons.imaging.formats.jpeg.segments.App2SegmentTest.txt
mv target/pit-reports target/org.apache.commons.imaging.formats.jpeg.segments.App2SegmentTest
cp -r target/org.apache.commons.imaging.formats.jpeg.segments.App2SegmentTest /home/dorma10/mutation-analysis/mutation_results/commons-imaging

rm -rf target/org.apache.commons.imaging.formats.jpeg.segments.App2SegmentTest

python3 /home/dorma10/mutation-analysis/effectiveness/mutation/pom_changer.py commons-imaging org.apache.commons.imaging.formats.jpeg.segments.JfifSegment org.apache.commons.imaging.formats.jpeg.segments.JfifSegmentTest DEFAULT
echo '* Mutating org.apache.commons.imaging.formats.jpeg.segments.JfifSegment with operator DEFAULT'
timeout 20m mvn org.pitest:pitest-maven:mutationCoverage -X -DoutputFormats=HTML --log-file ../../logs/org.apache.commons.imaging.formats.jpeg.segments.JfifSegmentTest.txt
mv target/pit-reports target/org.apache.commons.imaging.formats.jpeg.segments.JfifSegmentTest
cp -r target/org.apache.commons.imaging.formats.jpeg.segments.JfifSegmentTest /home/dorma10/mutation-analysis/mutation_results/commons-imaging

rm -rf target/org.apache.commons.imaging.formats.jpeg.segments.JfifSegmentTest

python3 /home/dorma10/mutation-analysis/effectiveness/mutation/pom_changer.py commons-imaging org.apache.commons.imaging.formats.jpeg.segments.AppnSegment org.apache.commons.imaging.formats.jpeg.segments.AppnSegmentTest DEFAULT
echo '* Mutating org.apache.commons.imaging.formats.jpeg.segments.AppnSegment with operator DEFAULT'
timeout 20m mvn org.pitest:pitest-maven:mutationCoverage -X -DoutputFormats=HTML --log-file ../../logs/org.apache.commons.imaging.formats.jpeg.segments.AppnSegmentTest.txt
mv target/pit-reports target/org.apache.commons.imaging.formats.jpeg.segments.AppnSegmentTest
cp -r target/org.apache.commons.imaging.formats.jpeg.segments.AppnSegmentTest /home/dorma10/mutation-analysis/mutation_results/commons-imaging

rm -rf target/org.apache.commons.imaging.formats.jpeg.segments.AppnSegmentTest

python3 /home/dorma10/mutation-analysis/effectiveness/mutation/pom_changer.py commons-imaging org.apache.commons.imaging.formats.jpeg.segments.SosSegment org.apache.commons.imaging.formats.jpeg.segments.SosSegmentTest DEFAULT
echo '* Mutating org.apache.commons.imaging.formats.jpeg.segments.SosSegment with operator DEFAULT'
timeout 20m mvn org.pitest:pitest-maven:mutationCoverage -X -DoutputFormats=HTML --log-file ../../logs/org.apache.commons.imaging.formats.jpeg.segments.SosSegmentTest.txt
mv target/pit-reports target/org.apache.commons.imaging.formats.jpeg.segments.SosSegmentTest
cp -r target/org.apache.commons.imaging.formats.jpeg.segments.SosSegmentTest /home/dorma10/mutation-analysis/mutation_results/commons-imaging

rm -rf target/org.apache.commons.imaging.formats.jpeg.segments.SosSegmentTest
echo '* Restoring original pom'
rm -rf pom.xml
mv cached_pom.xml pom.xml
cd ../..

echo '* 7 out of 9 -> commons-text'
mkdir /home/dorma10/mutation-analysis/mutation_results/commons-text


echo '* Compiling commons-text'
cd /home/dorma10/mutation-analysis/projects/commons-text

echo '* Caching original pom'
cp pom.xml cached_pom.xml

python3 /home/dorma10/mutation-analysis/effectiveness/mutation/pom_changer.py commons-text org.apache.commons.text.StrLookup org.apache.commons.text.StrLookupTest DEFAULT
echo '* Mutating org.apache.commons.text.StrLookup with operator DEFAULT'
timeout 20m mvn org.pitest:pitest-maven:mutationCoverage -X -DoutputFormats=HTML --log-file ../../logs/org.apache.commons.text.StrLookupTest.txt
mv target/pit-reports target/org.apache.commons.text.StrLookupTest
cp -r target/org.apache.commons.text.StrLookupTest /home/dorma10/mutation-analysis/mutation_results/commons-text

rm -rf target/org.apache.commons.text.StrLookupTest

python3 /home/dorma10/mutation-analysis/effectiveness/mutation/pom_changer.py commons-text org.apache.commons.text.StringTokenizer org.apache.commons.text.StringTokenizerTest DEFAULT
echo '* Mutating org.apache.commons.text.StringTokenizer with operator DEFAULT'
timeout 20m mvn org.pitest:pitest-maven:mutationCoverage -X -DoutputFormats=HTML --log-file ../../logs/org.apache.commons.text.StringTokenizerTest.txt
mv target/pit-reports target/org.apache.commons.text.StringTokenizerTest
cp -r target/org.apache.commons.text.StringTokenizerTest /home/dorma10/mutation-analysis/mutation_results/commons-text

rm -rf target/org.apache.commons.text.StringTokenizerTest

python3 /home/dorma10/mutation-analysis/effectiveness/mutation/pom_changer.py commons-text org.apache.commons.text.WordUtils org.apache.commons.text.WordUtilsTest DEFAULT
echo '* Mutating org.apache.commons.text.WordUtils with operator DEFAULT'
timeout 20m mvn org.pitest:pitest-maven:mutationCoverage -X -DoutputFormats=HTML --log-file ../../logs/org.apache.commons.text.WordUtilsTest.txt
mv target/pit-reports target/org.apache.commons.text.WordUtilsTest
cp -r target/org.apache.commons.text.WordUtilsTest /home/dorma10/mutation-analysis/mutation_results/commons-text

rm -rf target/org.apache.commons.text.WordUtilsTest

python3 /home/dorma10/mutation-analysis/effectiveness/mutation/pom_changer.py commons-text org.apache.commons.text.ExtendedMessageFormat org.apache.commons.text.ExtendedMessageFormatTest DEFAULT
echo '* Mutating org.apache.commons.text.ExtendedMessageFormat with operator DEFAULT'
timeout 20m mvn org.pitest:pitest-maven:mutationCoverage -X -DoutputFormats=HTML --log-file ../../logs/org.apache.commons.text.ExtendedMessageFormatTest.txt
mv target/pit-reports target/org.apache.commons.text.ExtendedMessageFormatTest
cp -r target/org.apache.commons.text.ExtendedMessageFormatTest /home/dorma10/mutation-analysis/mutation_results/commons-text

rm -rf target/org.apache.commons.text.ExtendedMessageFormatTest

python3 /home/dorma10/mutation-analysis/effectiveness/mutation/pom_changer.py commons-text org.apache.commons.text.StrSubstitutor org.apache.commons.text.StrSubstitutorTest DEFAULT
echo '* Mutating org.apache.commons.text.StrSubstitutor with operator DEFAULT'
timeout 20m mvn org.pitest:pitest-maven:mutationCoverage -X -DoutputFormats=HTML --log-file ../../logs/org.apache.commons.text.StrSubstitutorTest.txt
mv target/pit-reports target/org.apache.commons.text.StrSubstitutorTest
cp -r target/org.apache.commons.text.StrSubstitutorTest /home/dorma10/mutation-analysis/mutation_results/commons-text

rm -rf target/org.apache.commons.text.StrSubstitutorTest

python3 /home/dorma10/mutation-analysis/effectiveness/mutation/pom_changer.py commons-text org.apache.commons.text.RandomStringGenerator org.apache.commons.text.RandomStringGeneratorTest DEFAULT
echo '* Mutating org.apache.commons.text.RandomStringGenerator with operator DEFAULT'
timeout 20m mvn org.pitest:pitest-maven:mutationCoverage -X -DoutputFormats=HTML --log-file ../../logs/org.apache.commons.text.RandomStringGeneratorTest.txt
mv target/pit-reports target/org.apache.commons.text.RandomStringGeneratorTest
cp -r target/org.apache.commons.text.RandomStringGeneratorTest /home/dorma10/mutation-analysis/mutation_results/commons-text

rm -rf target/org.apache.commons.text.RandomStringGeneratorTest

python3 /home/dorma10/mutation-analysis/effectiveness/mutation/pom_changer.py commons-text org.apache.commons.text.FormattableUtils org.apache.commons.text.FormattableUtilsTest DEFAULT
echo '* Mutating org.apache.commons.text.FormattableUtils with operator DEFAULT'
timeout 20m mvn org.pitest:pitest-maven:mutationCoverage -X -DoutputFormats=HTML --log-file ../../logs/org.apache.commons.text.FormattableUtilsTest.txt
mv target/pit-reports target/org.apache.commons.text.FormattableUtilsTest
cp -r target/org.apache.commons.text.FormattableUtilsTest /home/dorma10/mutation-analysis/mutation_results/commons-text

rm -rf target/org.apache.commons.text.FormattableUtilsTest

python3 /home/dorma10/mutation-analysis/effectiveness/mutation/pom_changer.py commons-text org.apache.commons.text.TextStringBuilder org.apache.commons.text.TextStringBuilderTest DEFAULT
echo '* Mutating org.apache.commons.text.TextStringBuilder with operator DEFAULT'
timeout 20m mvn org.pitest:pitest-maven:mutationCoverage -X -DoutputFormats=HTML --log-file ../../logs/org.apache.commons.text.TextStringBuilderTest.txt
mv target/pit-reports target/org.apache.commons.text.TextStringBuilderTest
cp -r target/org.apache.commons.text.TextStringBuilderTest /home/dorma10/mutation-analysis/mutation_results/commons-text

rm -rf target/org.apache.commons.text.TextStringBuilderTest

python3 /home/dorma10/mutation-analysis/effectiveness/mutation/pom_changer.py commons-text org.apache.commons.text.StrBuilder org.apache.commons.text.StrBuilderTest DEFAULT
echo '* Mutating org.apache.commons.text.StrBuilder with operator DEFAULT'
timeout 20m mvn org.pitest:pitest-maven:mutationCoverage -X -DoutputFormats=HTML --log-file ../../logs/org.apache.commons.text.StrBuilderTest.txt
mv target/pit-reports target/org.apache.commons.text.StrBuilderTest
cp -r target/org.apache.commons.text.StrBuilderTest /home/dorma10/mutation-analysis/mutation_results/commons-text

rm -rf target/org.apache.commons.text.StrBuilderTest

python3 /home/dorma10/mutation-analysis/effectiveness/mutation/pom_changer.py commons-text org.apache.commons.text.StrTokenizer org.apache.commons.text.StrTokenizerTest DEFAULT
echo '* Mutating org.apache.commons.text.StrTokenizer with operator DEFAULT'
timeout 20m mvn org.pitest:pitest-maven:mutationCoverage -X -DoutputFormats=HTML --log-file ../../logs/org.apache.commons.text.StrTokenizerTest.txt
mv target/pit-reports target/org.apache.commons.text.StrTokenizerTest
cp -r target/org.apache.commons.text.StrTokenizerTest /home/dorma10/mutation-analysis/mutation_results/commons-text

rm -rf target/org.apache.commons.text.StrTokenizerTest

python3 /home/dorma10/mutation-analysis/effectiveness/mutation/pom_changer.py commons-text org.apache.commons.text.StringSubstitutor org.apache.commons.text.StringSubstitutorTest DEFAULT
echo '* Mutating org.apache.commons.text.StringSubstitutor with operator DEFAULT'
timeout 20m mvn org.pitest:pitest-maven:mutationCoverage -X -DoutputFormats=HTML --log-file ../../logs/org.apache.commons.text.StringSubstitutorTest.txt
mv target/pit-reports target/org.apache.commons.text.StringSubstitutorTest
cp -r target/org.apache.commons.text.StringSubstitutorTest /home/dorma10/mutation-analysis/mutation_results/commons-text

rm -rf target/org.apache.commons.text.StringSubstitutorTest

python3 /home/dorma10/mutation-analysis/effectiveness/mutation/pom_changer.py commons-text org.apache.commons.text.CharacterPredicates org.apache.commons.text.CharacterPredicatesTest DEFAULT
echo '* Mutating org.apache.commons.text.CharacterPredicates with operator DEFAULT'
timeout 20m mvn org.pitest:pitest-maven:mutationCoverage -X -DoutputFormats=HTML --log-file ../../logs/org.apache.commons.text.CharacterPredicatesTest.txt
mv target/pit-reports target/org.apache.commons.text.CharacterPredicatesTest
cp -r target/org.apache.commons.text.CharacterPredicatesTest /home/dorma10/mutation-analysis/mutation_results/commons-text

rm -rf target/org.apache.commons.text.CharacterPredicatesTest

python3 /home/dorma10/mutation-analysis/effectiveness/mutation/pom_changer.py commons-text org.apache.commons.text.StringEscapeUtils org.apache.commons.text.StringEscapeUtilsTest DEFAULT
echo '* Mutating org.apache.commons.text.StringEscapeUtils with operator DEFAULT'
timeout 20m mvn org.pitest:pitest-maven:mutationCoverage -X -DoutputFormats=HTML --log-file ../../logs/org.apache.commons.text.StringEscapeUtilsTest.txt
mv target/pit-reports target/org.apache.commons.text.StringEscapeUtilsTest
cp -r target/org.apache.commons.text.StringEscapeUtilsTest /home/dorma10/mutation-analysis/mutation_results/commons-text

rm -rf target/org.apache.commons.text.StringEscapeUtilsTest

python3 /home/dorma10/mutation-analysis/effectiveness/mutation/pom_changer.py commons-text org.apache.commons.text.CaseUtils org.apache.commons.text.CaseUtilsTest DEFAULT
echo '* Mutating org.apache.commons.text.CaseUtils with operator DEFAULT'
timeout 20m mvn org.pitest:pitest-maven:mutationCoverage -X -DoutputFormats=HTML --log-file ../../logs/org.apache.commons.text.CaseUtilsTest.txt
mv target/pit-reports target/org.apache.commons.text.CaseUtilsTest
cp -r target/org.apache.commons.text.CaseUtilsTest /home/dorma10/mutation-analysis/mutation_results/commons-text

rm -rf target/org.apache.commons.text.CaseUtilsTest

python3 /home/dorma10/mutation-analysis/effectiveness/mutation/pom_changer.py commons-text org.apache.commons.text.AlphabetConverter org.apache.commons.text.AlphabetConverterTest DEFAULT
echo '* Mutating org.apache.commons.text.AlphabetConverter with operator DEFAULT'
timeout 20m mvn org.pitest:pitest-maven:mutationCoverage -X -DoutputFormats=HTML --log-file ../../logs/org.apache.commons.text.AlphabetConverterTest.txt
mv target/pit-reports target/org.apache.commons.text.AlphabetConverterTest
cp -r target/org.apache.commons.text.AlphabetConverterTest /home/dorma10/mutation-analysis/mutation_results/commons-text

rm -rf target/org.apache.commons.text.AlphabetConverterTest

python3 /home/dorma10/mutation-analysis/effectiveness/mutation/pom_changer.py commons-text org.apache.commons.text.StrMatcher org.apache.commons.text.StrMatcherTest DEFAULT
echo '* Mutating org.apache.commons.text.StrMatcher with operator DEFAULT'
timeout 20m mvn org.pitest:pitest-maven:mutationCoverage -X -DoutputFormats=HTML --log-file ../../logs/org.apache.commons.text.StrMatcherTest.txt
mv target/pit-reports target/org.apache.commons.text.StrMatcherTest
cp -r target/org.apache.commons.text.StrMatcherTest /home/dorma10/mutation-analysis/mutation_results/commons-text

rm -rf target/org.apache.commons.text.StrMatcherTest

python3 /home/dorma10/mutation-analysis/effectiveness/mutation/pom_changer.py commons-text org.apache.commons.text.CompositeFormat org.apache.commons.text.CompositeFormatTest DEFAULT
echo '* Mutating org.apache.commons.text.CompositeFormat with operator DEFAULT'
timeout 20m mvn org.pitest:pitest-maven:mutationCoverage -X -DoutputFormats=HTML --log-file ../../logs/org.apache.commons.text.CompositeFormatTest.txt
mv target/pit-reports target/org.apache.commons.text.CompositeFormatTest
cp -r target/org.apache.commons.text.CompositeFormatTest /home/dorma10/mutation-analysis/mutation_results/commons-text

rm -rf target/org.apache.commons.text.CompositeFormatTest

python3 /home/dorma10/mutation-analysis/effectiveness/mutation/pom_changer.py commons-text org.apache.commons.text.translate.UnicodeUnpairedSurrogateRemover org.apache.commons.text.translate.UnicodeUnpairedSurrogateRemoverTest DEFAULT
echo '* Mutating org.apache.commons.text.translate.UnicodeUnpairedSurrogateRemover with operator DEFAULT'
timeout 20m mvn org.pitest:pitest-maven:mutationCoverage -X -DoutputFormats=HTML --log-file ../../logs/org.apache.commons.text.translate.UnicodeUnpairedSurrogateRemoverTest.txt
mv target/pit-reports target/org.apache.commons.text.translate.UnicodeUnpairedSurrogateRemoverTest
cp -r target/org.apache.commons.text.translate.UnicodeUnpairedSurrogateRemoverTest /home/dorma10/mutation-analysis/mutation_results/commons-text

rm -rf target/org.apache.commons.text.translate.UnicodeUnpairedSurrogateRemoverTest

python3 /home/dorma10/mutation-analysis/effectiveness/mutation/pom_changer.py commons-text org.apache.commons.text.translate.NumericEntityEscaper org.apache.commons.text.translate.NumericEntityEscaperTest DEFAULT
echo '* Mutating org.apache.commons.text.translate.NumericEntityEscaper with operator DEFAULT'
timeout 20m mvn org.pitest:pitest-maven:mutationCoverage -X -DoutputFormats=HTML --log-file ../../logs/org.apache.commons.text.translate.NumericEntityEscaperTest.txt
mv target/pit-reports target/org.apache.commons.text.translate.NumericEntityEscaperTest
cp -r target/org.apache.commons.text.translate.NumericEntityEscaperTest /home/dorma10/mutation-analysis/mutation_results/commons-text

rm -rf target/org.apache.commons.text.translate.NumericEntityEscaperTest

python3 /home/dorma10/mutation-analysis/effectiveness/mutation/pom_changer.py commons-text org.apache.commons.text.translate.LookupTranslator org.apache.commons.text.translate.LookupTranslatorTest DEFAULT
echo '* Mutating org.apache.commons.text.translate.LookupTranslator with operator DEFAULT'
timeout 20m mvn org.pitest:pitest-maven:mutationCoverage -X -DoutputFormats=HTML --log-file ../../logs/org.apache.commons.text.translate.LookupTranslatorTest.txt
mv target/pit-reports target/org.apache.commons.text.translate.LookupTranslatorTest
cp -r target/org.apache.commons.text.translate.LookupTranslatorTest /home/dorma10/mutation-analysis/mutation_results/commons-text

rm -rf target/org.apache.commons.text.translate.LookupTranslatorTest

python3 /home/dorma10/mutation-analysis/effectiveness/mutation/pom_changer.py commons-text org.apache.commons.text.translate.CodePointTranslator org.apache.commons.text.translate.CodePointTranslatorTest DEFAULT
echo '* Mutating org.apache.commons.text.translate.CodePointTranslator with operator DEFAULT'
timeout 20m mvn org.pitest:pitest-maven:mutationCoverage -X -DoutputFormats=HTML --log-file ../../logs/org.apache.commons.text.translate.CodePointTranslatorTest.txt
mv target/pit-reports target/org.apache.commons.text.translate.CodePointTranslatorTest
cp -r target/org.apache.commons.text.translate.CodePointTranslatorTest /home/dorma10/mutation-analysis/mutation_results/commons-text

rm -rf target/org.apache.commons.text.translate.CodePointTranslatorTest

python3 /home/dorma10/mutation-analysis/effectiveness/mutation/pom_changer.py commons-text org.apache.commons.text.translate.CsvTranslators org.apache.commons.text.translate.CsvTranslatorsTest DEFAULT
echo '* Mutating org.apache.commons.text.translate.CsvTranslators with operator DEFAULT'
timeout 20m mvn org.pitest:pitest-maven:mutationCoverage -X -DoutputFormats=HTML --log-file ../../logs/org.apache.commons.text.translate.CsvTranslatorsTest.txt
mv target/pit-reports target/org.apache.commons.text.translate.CsvTranslatorsTest
cp -r target/org.apache.commons.text.translate.CsvTranslatorsTest /home/dorma10/mutation-analysis/mutation_results/commons-text

rm -rf target/org.apache.commons.text.translate.CsvTranslatorsTest

python3 /home/dorma10/mutation-analysis/effectiveness/mutation/pom_changer.py commons-text org.apache.commons.text.translate.UnicodeEscaper org.apache.commons.text.translate.UnicodeEscaperTest DEFAULT
echo '* Mutating org.apache.commons.text.translate.UnicodeEscaper with operator DEFAULT'
timeout 20m mvn org.pitest:pitest-maven:mutationCoverage -X -DoutputFormats=HTML --log-file ../../logs/org.apache.commons.text.translate.UnicodeEscaperTest.txt
mv target/pit-reports target/org.apache.commons.text.translate.UnicodeEscaperTest
cp -r target/org.apache.commons.text.translate.UnicodeEscaperTest /home/dorma10/mutation-analysis/mutation_results/commons-text

rm -rf target/org.apache.commons.text.translate.UnicodeEscaperTest

python3 /home/dorma10/mutation-analysis/effectiveness/mutation/pom_changer.py commons-text org.apache.commons.text.translate.EntityArrays org.apache.commons.text.translate.EntityArraysTest DEFAULT
echo '* Mutating org.apache.commons.text.translate.EntityArrays with operator DEFAULT'
timeout 20m mvn org.pitest:pitest-maven:mutationCoverage -X -DoutputFormats=HTML --log-file ../../logs/org.apache.commons.text.translate.EntityArraysTest.txt
mv target/pit-reports target/org.apache.commons.text.translate.EntityArraysTest
cp -r target/org.apache.commons.text.translate.EntityArraysTest /home/dorma10/mutation-analysis/mutation_results/commons-text

rm -rf target/org.apache.commons.text.translate.EntityArraysTest

python3 /home/dorma10/mutation-analysis/effectiveness/mutation/pom_changer.py commons-text org.apache.commons.text.translate.OctalUnescaper org.apache.commons.text.translate.OctalUnescaperTest DEFAULT
echo '* Mutating org.apache.commons.text.translate.OctalUnescaper with operator DEFAULT'
timeout 20m mvn org.pitest:pitest-maven:mutationCoverage -X -DoutputFormats=HTML --log-file ../../logs/org.apache.commons.text.translate.OctalUnescaperTest.txt
mv target/pit-reports target/org.apache.commons.text.translate.OctalUnescaperTest
cp -r target/org.apache.commons.text.translate.OctalUnescaperTest /home/dorma10/mutation-analysis/mutation_results/commons-text

rm -rf target/org.apache.commons.text.translate.OctalUnescaperTest

python3 /home/dorma10/mutation-analysis/effectiveness/mutation/pom_changer.py commons-text org.apache.commons.text.translate.JavaUnicodeEscaper org.apache.commons.text.translate.JavaUnicodeEscaperTest DEFAULT
echo '* Mutating org.apache.commons.text.translate.JavaUnicodeEscaper with operator DEFAULT'
timeout 20m mvn org.pitest:pitest-maven:mutationCoverage -X -DoutputFormats=HTML --log-file ../../logs/org.apache.commons.text.translate.JavaUnicodeEscaperTest.txt
mv target/pit-reports target/org.apache.commons.text.translate.JavaUnicodeEscaperTest
cp -r target/org.apache.commons.text.translate.JavaUnicodeEscaperTest /home/dorma10/mutation-analysis/mutation_results/commons-text

rm -rf target/org.apache.commons.text.translate.JavaUnicodeEscaperTest

python3 /home/dorma10/mutation-analysis/effectiveness/mutation/pom_changer.py commons-text org.apache.commons.text.translate.AggregateTranslator org.apache.commons.text.translate.AggregateTranslatorTest DEFAULT
echo '* Mutating org.apache.commons.text.translate.AggregateTranslator with operator DEFAULT'
timeout 20m mvn org.pitest:pitest-maven:mutationCoverage -X -DoutputFormats=HTML --log-file ../../logs/org.apache.commons.text.translate.AggregateTranslatorTest.txt
mv target/pit-reports target/org.apache.commons.text.translate.AggregateTranslatorTest
cp -r target/org.apache.commons.text.translate.AggregateTranslatorTest /home/dorma10/mutation-analysis/mutation_results/commons-text

rm -rf target/org.apache.commons.text.translate.AggregateTranslatorTest

python3 /home/dorma10/mutation-analysis/effectiveness/mutation/pom_changer.py commons-text org.apache.commons.text.translate.SinglePassTranslator org.apache.commons.text.translate.SinglePassTranslatorTest DEFAULT
echo '* Mutating org.apache.commons.text.translate.SinglePassTranslator with operator DEFAULT'
timeout 20m mvn org.pitest:pitest-maven:mutationCoverage -X -DoutputFormats=HTML --log-file ../../logs/org.apache.commons.text.translate.SinglePassTranslatorTest.txt
mv target/pit-reports target/org.apache.commons.text.translate.SinglePassTranslatorTest
cp -r target/org.apache.commons.text.translate.SinglePassTranslatorTest /home/dorma10/mutation-analysis/mutation_results/commons-text

rm -rf target/org.apache.commons.text.translate.SinglePassTranslatorTest

python3 /home/dorma10/mutation-analysis/effectiveness/mutation/pom_changer.py commons-text org.apache.commons.text.translate.NumericEntityUnescaper org.apache.commons.text.translate.NumericEntityUnescaperTest DEFAULT
echo '* Mutating org.apache.commons.text.translate.NumericEntityUnescaper with operator DEFAULT'
timeout 20m mvn org.pitest:pitest-maven:mutationCoverage -X -DoutputFormats=HTML --log-file ../../logs/org.apache.commons.text.translate.NumericEntityUnescaperTest.txt
mv target/pit-reports target/org.apache.commons.text.translate.NumericEntityUnescaperTest
cp -r target/org.apache.commons.text.translate.NumericEntityUnescaperTest /home/dorma10/mutation-analysis/mutation_results/commons-text

rm -rf target/org.apache.commons.text.translate.NumericEntityUnescaperTest

python3 /home/dorma10/mutation-analysis/effectiveness/mutation/pom_changer.py commons-text org.apache.commons.text.translate.UnicodeUnescaper org.apache.commons.text.translate.UnicodeUnescaperTest DEFAULT
echo '* Mutating org.apache.commons.text.translate.UnicodeUnescaper with operator DEFAULT'
timeout 20m mvn org.pitest:pitest-maven:mutationCoverage -X -DoutputFormats=HTML --log-file ../../logs/org.apache.commons.text.translate.UnicodeUnescaperTest.txt
mv target/pit-reports target/org.apache.commons.text.translate.UnicodeUnescaperTest
cp -r target/org.apache.commons.text.translate.UnicodeUnescaperTest /home/dorma10/mutation-analysis/mutation_results/commons-text

rm -rf target/org.apache.commons.text.translate.UnicodeUnescaperTest

python3 /home/dorma10/mutation-analysis/effectiveness/mutation/pom_changer.py commons-text org.apache.commons.text.lookup.FileStringLookup org.apache.commons.text.lookup.FileStringLookupTest DEFAULT
echo '* Mutating org.apache.commons.text.lookup.FileStringLookup with operator DEFAULT'
timeout 20m mvn org.pitest:pitest-maven:mutationCoverage -X -DoutputFormats=HTML --log-file ../../logs/org.apache.commons.text.lookup.FileStringLookupTest.txt
mv target/pit-reports target/org.apache.commons.text.lookup.FileStringLookupTest
cp -r target/org.apache.commons.text.lookup.FileStringLookupTest /home/dorma10/mutation-analysis/mutation_results/commons-text

rm -rf target/org.apache.commons.text.lookup.FileStringLookupTest

python3 /home/dorma10/mutation-analysis/effectiveness/mutation/pom_changer.py commons-text org.apache.commons.text.lookup.ConstantStringLookup org.apache.commons.text.lookup.ConstantStringLookupTest DEFAULT
echo '* Mutating org.apache.commons.text.lookup.ConstantStringLookup with operator DEFAULT'
timeout 20m mvn org.pitest:pitest-maven:mutationCoverage -X -DoutputFormats=HTML --log-file ../../logs/org.apache.commons.text.lookup.ConstantStringLookupTest.txt
mv target/pit-reports target/org.apache.commons.text.lookup.ConstantStringLookupTest
cp -r target/org.apache.commons.text.lookup.ConstantStringLookupTest /home/dorma10/mutation-analysis/mutation_results/commons-text

rm -rf target/org.apache.commons.text.lookup.ConstantStringLookupTest

python3 /home/dorma10/mutation-analysis/effectiveness/mutation/pom_changer.py commons-text org.apache.commons.text.lookup.InterpolatorStringLookup org.apache.commons.text.lookup.InterpolatorStringLookupTest DEFAULT
echo '* Mutating org.apache.commons.text.lookup.InterpolatorStringLookup with operator DEFAULT'
timeout 20m mvn org.pitest:pitest-maven:mutationCoverage -X -DoutputFormats=HTML --log-file ../../logs/org.apache.commons.text.lookup.InterpolatorStringLookupTest.txt
mv target/pit-reports target/org.apache.commons.text.lookup.InterpolatorStringLookupTest
cp -r target/org.apache.commons.text.lookup.InterpolatorStringLookupTest /home/dorma10/mutation-analysis/mutation_results/commons-text

rm -rf target/org.apache.commons.text.lookup.InterpolatorStringLookupTest

python3 /home/dorma10/mutation-analysis/effectiveness/mutation/pom_changer.py commons-text org.apache.commons.text.lookup.UrlEncoderStringLookup org.apache.commons.text.lookup.UrlEncoderStringLookupTest DEFAULT
echo '* Mutating org.apache.commons.text.lookup.UrlEncoderStringLookup with operator DEFAULT'
timeout 20m mvn org.pitest:pitest-maven:mutationCoverage -X -DoutputFormats=HTML --log-file ../../logs/org.apache.commons.text.lookup.UrlEncoderStringLookupTest.txt
mv target/pit-reports target/org.apache.commons.text.lookup.UrlEncoderStringLookupTest
cp -r target/org.apache.commons.text.lookup.UrlEncoderStringLookupTest /home/dorma10/mutation-analysis/mutation_results/commons-text

rm -rf target/org.apache.commons.text.lookup.UrlEncoderStringLookupTest

python3 /home/dorma10/mutation-analysis/effectiveness/mutation/pom_changer.py commons-text org.apache.commons.text.lookup.DnsStringLookup org.apache.commons.text.lookup.DnsStringLookupTest DEFAULT
echo '* Mutating org.apache.commons.text.lookup.DnsStringLookup with operator DEFAULT'
timeout 20m mvn org.pitest:pitest-maven:mutationCoverage -X -DoutputFormats=HTML --log-file ../../logs/org.apache.commons.text.lookup.DnsStringLookupTest.txt
mv target/pit-reports target/org.apache.commons.text.lookup.DnsStringLookupTest
cp -r target/org.apache.commons.text.lookup.DnsStringLookupTest /home/dorma10/mutation-analysis/mutation_results/commons-text

rm -rf target/org.apache.commons.text.lookup.DnsStringLookupTest

python3 /home/dorma10/mutation-analysis/effectiveness/mutation/pom_changer.py commons-text org.apache.commons.text.lookup.ScriptStringLookup org.apache.commons.text.lookup.ScriptStringLookupTest DEFAULT
echo '* Mutating org.apache.commons.text.lookup.ScriptStringLookup with operator DEFAULT'
timeout 20m mvn org.pitest:pitest-maven:mutationCoverage -X -DoutputFormats=HTML --log-file ../../logs/org.apache.commons.text.lookup.ScriptStringLookupTest.txt
mv target/pit-reports target/org.apache.commons.text.lookup.ScriptStringLookupTest
cp -r target/org.apache.commons.text.lookup.ScriptStringLookupTest /home/dorma10/mutation-analysis/mutation_results/commons-text

rm -rf target/org.apache.commons.text.lookup.ScriptStringLookupTest

python3 /home/dorma10/mutation-analysis/effectiveness/mutation/pom_changer.py commons-text org.apache.commons.text.lookup.DateStringLookup org.apache.commons.text.lookup.DateStringLookupTest DEFAULT
echo '* Mutating org.apache.commons.text.lookup.DateStringLookup with operator DEFAULT'
timeout 20m mvn org.pitest:pitest-maven:mutationCoverage -X -DoutputFormats=HTML --log-file ../../logs/org.apache.commons.text.lookup.DateStringLookupTest.txt
mv target/pit-reports target/org.apache.commons.text.lookup.DateStringLookupTest
cp -r target/org.apache.commons.text.lookup.DateStringLookupTest /home/dorma10/mutation-analysis/mutation_results/commons-text

rm -rf target/org.apache.commons.text.lookup.DateStringLookupTest

python3 /home/dorma10/mutation-analysis/effectiveness/mutation/pom_changer.py commons-text org.apache.commons.text.lookup.PropertiesStringLookup org.apache.commons.text.lookup.PropertiesStringLookupTest DEFAULT
echo '* Mutating org.apache.commons.text.lookup.PropertiesStringLookup with operator DEFAULT'
timeout 20m mvn org.pitest:pitest-maven:mutationCoverage -X -DoutputFormats=HTML --log-file ../../logs/org.apache.commons.text.lookup.PropertiesStringLookupTest.txt
mv target/pit-reports target/org.apache.commons.text.lookup.PropertiesStringLookupTest
cp -r target/org.apache.commons.text.lookup.PropertiesStringLookupTest /home/dorma10/mutation-analysis/mutation_results/commons-text

rm -rf target/org.apache.commons.text.lookup.PropertiesStringLookupTest

python3 /home/dorma10/mutation-analysis/effectiveness/mutation/pom_changer.py commons-text org.apache.commons.text.lookup.JavaPlatformStringLookup org.apache.commons.text.lookup.JavaPlatformStringLookupTest DEFAULT
echo '* Mutating org.apache.commons.text.lookup.JavaPlatformStringLookup with operator DEFAULT'
timeout 20m mvn org.pitest:pitest-maven:mutationCoverage -X -DoutputFormats=HTML --log-file ../../logs/org.apache.commons.text.lookup.JavaPlatformStringLookupTest.txt
mv target/pit-reports target/org.apache.commons.text.lookup.JavaPlatformStringLookupTest
cp -r target/org.apache.commons.text.lookup.JavaPlatformStringLookupTest /home/dorma10/mutation-analysis/mutation_results/commons-text

rm -rf target/org.apache.commons.text.lookup.JavaPlatformStringLookupTest

python3 /home/dorma10/mutation-analysis/effectiveness/mutation/pom_changer.py commons-text org.apache.commons.text.lookup.XmlStringLookup org.apache.commons.text.lookup.XmlStringLookupTest DEFAULT
echo '* Mutating org.apache.commons.text.lookup.XmlStringLookup with operator DEFAULT'
timeout 20m mvn org.pitest:pitest-maven:mutationCoverage -X -DoutputFormats=HTML --log-file ../../logs/org.apache.commons.text.lookup.XmlStringLookupTest.txt
mv target/pit-reports target/org.apache.commons.text.lookup.XmlStringLookupTest
cp -r target/org.apache.commons.text.lookup.XmlStringLookupTest /home/dorma10/mutation-analysis/mutation_results/commons-text

rm -rf target/org.apache.commons.text.lookup.XmlStringLookupTest

python3 /home/dorma10/mutation-analysis/effectiveness/mutation/pom_changer.py commons-text org.apache.commons.text.lookup.BiFunctionStringLookup org.apache.commons.text.lookup.BiFunctionStringLookupTest DEFAULT
echo '* Mutating org.apache.commons.text.lookup.BiFunctionStringLookup with operator DEFAULT'
timeout 20m mvn org.pitest:pitest-maven:mutationCoverage -X -DoutputFormats=HTML --log-file ../../logs/org.apache.commons.text.lookup.BiFunctionStringLookupTest.txt
mv target/pit-reports target/org.apache.commons.text.lookup.BiFunctionStringLookupTest
cp -r target/org.apache.commons.text.lookup.BiFunctionStringLookupTest /home/dorma10/mutation-analysis/mutation_results/commons-text

rm -rf target/org.apache.commons.text.lookup.BiFunctionStringLookupTest

python3 /home/dorma10/mutation-analysis/effectiveness/mutation/pom_changer.py commons-text org.apache.commons.text.lookup.LocalHostStringLookup org.apache.commons.text.lookup.LocalHostStringLookupTest DEFAULT
echo '* Mutating org.apache.commons.text.lookup.LocalHostStringLookup with operator DEFAULT'
timeout 20m mvn org.pitest:pitest-maven:mutationCoverage -X -DoutputFormats=HTML --log-file ../../logs/org.apache.commons.text.lookup.LocalHostStringLookupTest.txt
mv target/pit-reports target/org.apache.commons.text.lookup.LocalHostStringLookupTest
cp -r target/org.apache.commons.text.lookup.LocalHostStringLookupTest /home/dorma10/mutation-analysis/mutation_results/commons-text

rm -rf target/org.apache.commons.text.lookup.LocalHostStringLookupTest

python3 /home/dorma10/mutation-analysis/effectiveness/mutation/pom_changer.py commons-text org.apache.commons.text.lookup.FunctionStringLookup org.apache.commons.text.lookup.FunctionStringLookupTest DEFAULT
echo '* Mutating org.apache.commons.text.lookup.FunctionStringLookup with operator DEFAULT'
timeout 20m mvn org.pitest:pitest-maven:mutationCoverage -X -DoutputFormats=HTML --log-file ../../logs/org.apache.commons.text.lookup.FunctionStringLookupTest.txt
mv target/pit-reports target/org.apache.commons.text.lookup.FunctionStringLookupTest
cp -r target/org.apache.commons.text.lookup.FunctionStringLookupTest /home/dorma10/mutation-analysis/mutation_results/commons-text

rm -rf target/org.apache.commons.text.lookup.FunctionStringLookupTest

python3 /home/dorma10/mutation-analysis/effectiveness/mutation/pom_changer.py commons-text org.apache.commons.text.lookup.DefaultStringLookup org.apache.commons.text.lookup.DefaultStringLookupTest DEFAULT
echo '* Mutating org.apache.commons.text.lookup.DefaultStringLookup with operator DEFAULT'
timeout 20m mvn org.pitest:pitest-maven:mutationCoverage -X -DoutputFormats=HTML --log-file ../../logs/org.apache.commons.text.lookup.DefaultStringLookupTest.txt
mv target/pit-reports target/org.apache.commons.text.lookup.DefaultStringLookupTest
cp -r target/org.apache.commons.text.lookup.DefaultStringLookupTest /home/dorma10/mutation-analysis/mutation_results/commons-text

rm -rf target/org.apache.commons.text.lookup.DefaultStringLookupTest

python3 /home/dorma10/mutation-analysis/effectiveness/mutation/pom_changer.py commons-text org.apache.commons.text.lookup.ResourceBundleStringLookup org.apache.commons.text.lookup.ResourceBundleStringLookupTest DEFAULT
echo '* Mutating org.apache.commons.text.lookup.ResourceBundleStringLookup with operator DEFAULT'
timeout 20m mvn org.pitest:pitest-maven:mutationCoverage -X -DoutputFormats=HTML --log-file ../../logs/org.apache.commons.text.lookup.ResourceBundleStringLookupTest.txt
mv target/pit-reports target/org.apache.commons.text.lookup.ResourceBundleStringLookupTest
cp -r target/org.apache.commons.text.lookup.ResourceBundleStringLookupTest /home/dorma10/mutation-analysis/mutation_results/commons-text

rm -rf target/org.apache.commons.text.lookup.ResourceBundleStringLookupTest

python3 /home/dorma10/mutation-analysis/effectiveness/mutation/pom_changer.py commons-text org.apache.commons.text.lookup.UrlStringLookup org.apache.commons.text.lookup.UrlStringLookupTest DEFAULT
echo '* Mutating org.apache.commons.text.lookup.UrlStringLookup with operator DEFAULT'
timeout 20m mvn org.pitest:pitest-maven:mutationCoverage -X -DoutputFormats=HTML --log-file ../../logs/org.apache.commons.text.lookup.UrlStringLookupTest.txt
mv target/pit-reports target/org.apache.commons.text.lookup.UrlStringLookupTest
cp -r target/org.apache.commons.text.lookup.UrlStringLookupTest /home/dorma10/mutation-analysis/mutation_results/commons-text

rm -rf target/org.apache.commons.text.lookup.UrlStringLookupTest

python3 /home/dorma10/mutation-analysis/effectiveness/mutation/pom_changer.py commons-text org.apache.commons.text.lookup.BiStringLookup org.apache.commons.text.lookup.BiStringLookupTest DEFAULT
echo '* Mutating org.apache.commons.text.lookup.BiStringLookup with operator DEFAULT'
timeout 20m mvn org.pitest:pitest-maven:mutationCoverage -X -DoutputFormats=HTML --log-file ../../logs/org.apache.commons.text.lookup.BiStringLookupTest.txt
mv target/pit-reports target/org.apache.commons.text.lookup.BiStringLookupTest
cp -r target/org.apache.commons.text.lookup.BiStringLookupTest /home/dorma10/mutation-analysis/mutation_results/commons-text

rm -rf target/org.apache.commons.text.lookup.BiStringLookupTest

python3 /home/dorma10/mutation-analysis/effectiveness/mutation/pom_changer.py commons-text org.apache.commons.text.lookup.StringLookupFactory org.apache.commons.text.lookup.StringLookupFactoryTest DEFAULT
echo '* Mutating org.apache.commons.text.lookup.StringLookupFactory with operator DEFAULT'
timeout 20m mvn org.pitest:pitest-maven:mutationCoverage -X -DoutputFormats=HTML --log-file ../../logs/org.apache.commons.text.lookup.StringLookupFactoryTest.txt
mv target/pit-reports target/org.apache.commons.text.lookup.StringLookupFactoryTest
cp -r target/org.apache.commons.text.lookup.StringLookupFactoryTest /home/dorma10/mutation-analysis/mutation_results/commons-text

rm -rf target/org.apache.commons.text.lookup.StringLookupFactoryTest

python3 /home/dorma10/mutation-analysis/effectiveness/mutation/pom_changer.py commons-text org.apache.commons.text.lookup.AbstractStringLookup org.apache.commons.text.lookup.AbstractStringLookupTest DEFAULT
echo '* Mutating org.apache.commons.text.lookup.AbstractStringLookup with operator DEFAULT'
timeout 20m mvn org.pitest:pitest-maven:mutationCoverage -X -DoutputFormats=HTML --log-file ../../logs/org.apache.commons.text.lookup.AbstractStringLookupTest.txt
mv target/pit-reports target/org.apache.commons.text.lookup.AbstractStringLookupTest
cp -r target/org.apache.commons.text.lookup.AbstractStringLookupTest /home/dorma10/mutation-analysis/mutation_results/commons-text

rm -rf target/org.apache.commons.text.lookup.AbstractStringLookupTest

python3 /home/dorma10/mutation-analysis/effectiveness/mutation/pom_changer.py commons-text org.apache.commons.text.lookup.UrlDecoderStringLookup org.apache.commons.text.lookup.UrlDecoderStringLookupTest DEFAULT
echo '* Mutating org.apache.commons.text.lookup.UrlDecoderStringLookup with operator DEFAULT'
timeout 20m mvn org.pitest:pitest-maven:mutationCoverage -X -DoutputFormats=HTML --log-file ../../logs/org.apache.commons.text.lookup.UrlDecoderStringLookupTest.txt
mv target/pit-reports target/org.apache.commons.text.lookup.UrlDecoderStringLookupTest
cp -r target/org.apache.commons.text.lookup.UrlDecoderStringLookupTest /home/dorma10/mutation-analysis/mutation_results/commons-text

rm -rf target/org.apache.commons.text.lookup.UrlDecoderStringLookupTest

python3 /home/dorma10/mutation-analysis/effectiveness/mutation/pom_changer.py commons-text org.apache.commons.text.matcher.StringMatcherFactory org.apache.commons.text.matcher.StringMatcherFactoryTest DEFAULT
echo '* Mutating org.apache.commons.text.matcher.StringMatcherFactory with operator DEFAULT'
timeout 20m mvn org.pitest:pitest-maven:mutationCoverage -X -DoutputFormats=HTML --log-file ../../logs/org.apache.commons.text.matcher.StringMatcherFactoryTest.txt
mv target/pit-reports target/org.apache.commons.text.matcher.StringMatcherFactoryTest
cp -r target/org.apache.commons.text.matcher.StringMatcherFactoryTest /home/dorma10/mutation-analysis/mutation_results/commons-text

rm -rf target/org.apache.commons.text.matcher.StringMatcherFactoryTest

python3 /home/dorma10/mutation-analysis/effectiveness/mutation/pom_changer.py commons-text org.apache.commons.text.similarity.LevenshteinDetailedDistance org.apache.commons.text.similarity.LevenshteinDetailedDistanceTest DEFAULT
echo '* Mutating org.apache.commons.text.similarity.LevenshteinDetailedDistance with operator DEFAULT'
timeout 20m mvn org.pitest:pitest-maven:mutationCoverage -X -DoutputFormats=HTML --log-file ../../logs/org.apache.commons.text.similarity.LevenshteinDetailedDistanceTest.txt
mv target/pit-reports target/org.apache.commons.text.similarity.LevenshteinDetailedDistanceTest
cp -r target/org.apache.commons.text.similarity.LevenshteinDetailedDistanceTest /home/dorma10/mutation-analysis/mutation_results/commons-text

rm -rf target/org.apache.commons.text.similarity.LevenshteinDetailedDistanceTest

python3 /home/dorma10/mutation-analysis/effectiveness/mutation/pom_changer.py commons-text org.apache.commons.text.similarity.LevenshteinResults org.apache.commons.text.similarity.LevenshteinResultsTest DEFAULT
echo '* Mutating org.apache.commons.text.similarity.LevenshteinResults with operator DEFAULT'
timeout 20m mvn org.pitest:pitest-maven:mutationCoverage -X -DoutputFormats=HTML --log-file ../../logs/org.apache.commons.text.similarity.LevenshteinResultsTest.txt
mv target/pit-reports target/org.apache.commons.text.similarity.LevenshteinResultsTest
cp -r target/org.apache.commons.text.similarity.LevenshteinResultsTest /home/dorma10/mutation-analysis/mutation_results/commons-text

rm -rf target/org.apache.commons.text.similarity.LevenshteinResultsTest

python3 /home/dorma10/mutation-analysis/effectiveness/mutation/pom_changer.py commons-text org.apache.commons.text.similarity.HammingDistance org.apache.commons.text.similarity.HammingDistanceTest DEFAULT
echo '* Mutating org.apache.commons.text.similarity.HammingDistance with operator DEFAULT'
timeout 20m mvn org.pitest:pitest-maven:mutationCoverage -X -DoutputFormats=HTML --log-file ../../logs/org.apache.commons.text.similarity.HammingDistanceTest.txt
mv target/pit-reports target/org.apache.commons.text.similarity.HammingDistanceTest
cp -r target/org.apache.commons.text.similarity.HammingDistanceTest /home/dorma10/mutation-analysis/mutation_results/commons-text

rm -rf target/org.apache.commons.text.similarity.HammingDistanceTest

python3 /home/dorma10/mutation-analysis/effectiveness/mutation/pom_changer.py commons-text org.apache.commons.text.similarity.IntersectionResult org.apache.commons.text.similarity.IntersectionResultTest DEFAULT
echo '* Mutating org.apache.commons.text.similarity.IntersectionResult with operator DEFAULT'
timeout 20m mvn org.pitest:pitest-maven:mutationCoverage -X -DoutputFormats=HTML --log-file ../../logs/org.apache.commons.text.similarity.IntersectionResultTest.txt
mv target/pit-reports target/org.apache.commons.text.similarity.IntersectionResultTest
cp -r target/org.apache.commons.text.similarity.IntersectionResultTest /home/dorma10/mutation-analysis/mutation_results/commons-text

rm -rf target/org.apache.commons.text.similarity.IntersectionResultTest

python3 /home/dorma10/mutation-analysis/effectiveness/mutation/pom_changer.py commons-text org.apache.commons.text.similarity.LongestCommonSubsequence org.apache.commons.text.similarity.LongestCommonSubsequenceTest DEFAULT
echo '* Mutating org.apache.commons.text.similarity.LongestCommonSubsequence with operator DEFAULT'
timeout 20m mvn org.pitest:pitest-maven:mutationCoverage -X -DoutputFormats=HTML --log-file ../../logs/org.apache.commons.text.similarity.LongestCommonSubsequenceTest.txt
mv target/pit-reports target/org.apache.commons.text.similarity.LongestCommonSubsequenceTest
cp -r target/org.apache.commons.text.similarity.LongestCommonSubsequenceTest /home/dorma10/mutation-analysis/mutation_results/commons-text

rm -rf target/org.apache.commons.text.similarity.LongestCommonSubsequenceTest

python3 /home/dorma10/mutation-analysis/effectiveness/mutation/pom_changer.py commons-text org.apache.commons.text.similarity.CosineDistance org.apache.commons.text.similarity.CosineDistanceTest DEFAULT
echo '* Mutating org.apache.commons.text.similarity.CosineDistance with operator DEFAULT'
timeout 20m mvn org.pitest:pitest-maven:mutationCoverage -X -DoutputFormats=HTML --log-file ../../logs/org.apache.commons.text.similarity.CosineDistanceTest.txt
mv target/pit-reports target/org.apache.commons.text.similarity.CosineDistanceTest
cp -r target/org.apache.commons.text.similarity.CosineDistanceTest /home/dorma10/mutation-analysis/mutation_results/commons-text

rm -rf target/org.apache.commons.text.similarity.CosineDistanceTest

python3 /home/dorma10/mutation-analysis/effectiveness/mutation/pom_changer.py commons-text org.apache.commons.text.similarity.LevenshteinDistance org.apache.commons.text.similarity.LevenshteinDistanceTest DEFAULT
echo '* Mutating org.apache.commons.text.similarity.LevenshteinDistance with operator DEFAULT'
timeout 20m mvn org.pitest:pitest-maven:mutationCoverage -X -DoutputFormats=HTML --log-file ../../logs/org.apache.commons.text.similarity.LevenshteinDistanceTest.txt
mv target/pit-reports target/org.apache.commons.text.similarity.LevenshteinDistanceTest
cp -r target/org.apache.commons.text.similarity.LevenshteinDistanceTest /home/dorma10/mutation-analysis/mutation_results/commons-text

rm -rf target/org.apache.commons.text.similarity.LevenshteinDistanceTest

python3 /home/dorma10/mutation-analysis/effectiveness/mutation/pom_changer.py commons-text org.apache.commons.text.similarity.SimilarityScoreFrom org.apache.commons.text.similarity.SimilarityScoreFromTest DEFAULT
echo '* Mutating org.apache.commons.text.similarity.SimilarityScoreFrom with operator DEFAULT'
timeout 20m mvn org.pitest:pitest-maven:mutationCoverage -X -DoutputFormats=HTML --log-file ../../logs/org.apache.commons.text.similarity.SimilarityScoreFromTest.txt
mv target/pit-reports target/org.apache.commons.text.similarity.SimilarityScoreFromTest
cp -r target/org.apache.commons.text.similarity.SimilarityScoreFromTest /home/dorma10/mutation-analysis/mutation_results/commons-text

rm -rf target/org.apache.commons.text.similarity.SimilarityScoreFromTest

python3 /home/dorma10/mutation-analysis/effectiveness/mutation/pom_changer.py commons-text org.apache.commons.text.similarity.IntersectionSimilarity org.apache.commons.text.similarity.IntersectionSimilarityTest DEFAULT
echo '* Mutating org.apache.commons.text.similarity.IntersectionSimilarity with operator DEFAULT'
timeout 20m mvn org.pitest:pitest-maven:mutationCoverage -X -DoutputFormats=HTML --log-file ../../logs/org.apache.commons.text.similarity.IntersectionSimilarityTest.txt
mv target/pit-reports target/org.apache.commons.text.similarity.IntersectionSimilarityTest
cp -r target/org.apache.commons.text.similarity.IntersectionSimilarityTest /home/dorma10/mutation-analysis/mutation_results/commons-text

rm -rf target/org.apache.commons.text.similarity.IntersectionSimilarityTest

python3 /home/dorma10/mutation-analysis/effectiveness/mutation/pom_changer.py commons-text org.apache.commons.text.similarity.LongestCommonSubsequenceDistance org.apache.commons.text.similarity.LongestCommonSubsequenceDistanceTest DEFAULT
echo '* Mutating org.apache.commons.text.similarity.LongestCommonSubsequenceDistance with operator DEFAULT'
timeout 20m mvn org.pitest:pitest-maven:mutationCoverage -X -DoutputFormats=HTML --log-file ../../logs/org.apache.commons.text.similarity.LongestCommonSubsequenceDistanceTest.txt
mv target/pit-reports target/org.apache.commons.text.similarity.LongestCommonSubsequenceDistanceTest
cp -r target/org.apache.commons.text.similarity.LongestCommonSubsequenceDistanceTest /home/dorma10/mutation-analysis/mutation_results/commons-text

rm -rf target/org.apache.commons.text.similarity.LongestCommonSubsequenceDistanceTest

python3 /home/dorma10/mutation-analysis/effectiveness/mutation/pom_changer.py commons-text org.apache.commons.text.similarity.JaccardDistance org.apache.commons.text.similarity.JaccardDistanceTest DEFAULT
echo '* Mutating org.apache.commons.text.similarity.JaccardDistance with operator DEFAULT'
timeout 20m mvn org.pitest:pitest-maven:mutationCoverage -X -DoutputFormats=HTML --log-file ../../logs/org.apache.commons.text.similarity.JaccardDistanceTest.txt
mv target/pit-reports target/org.apache.commons.text.similarity.JaccardDistanceTest
cp -r target/org.apache.commons.text.similarity.JaccardDistanceTest /home/dorma10/mutation-analysis/mutation_results/commons-text

rm -rf target/org.apache.commons.text.similarity.JaccardDistanceTest

python3 /home/dorma10/mutation-analysis/effectiveness/mutation/pom_changer.py commons-text org.apache.commons.text.similarity.JaroWinklerSimilarity org.apache.commons.text.similarity.JaroWinklerSimilarityTest DEFAULT
echo '* Mutating org.apache.commons.text.similarity.JaroWinklerSimilarity with operator DEFAULT'
timeout 20m mvn org.pitest:pitest-maven:mutationCoverage -X -DoutputFormats=HTML --log-file ../../logs/org.apache.commons.text.similarity.JaroWinklerSimilarityTest.txt
mv target/pit-reports target/org.apache.commons.text.similarity.JaroWinklerSimilarityTest
cp -r target/org.apache.commons.text.similarity.JaroWinklerSimilarityTest /home/dorma10/mutation-analysis/mutation_results/commons-text

rm -rf target/org.apache.commons.text.similarity.JaroWinklerSimilarityTest

python3 /home/dorma10/mutation-analysis/effectiveness/mutation/pom_changer.py commons-text org.apache.commons.text.similarity.FuzzyScore org.apache.commons.text.similarity.FuzzyScoreTest DEFAULT
echo '* Mutating org.apache.commons.text.similarity.FuzzyScore with operator DEFAULT'
timeout 20m mvn org.pitest:pitest-maven:mutationCoverage -X -DoutputFormats=HTML --log-file ../../logs/org.apache.commons.text.similarity.FuzzyScoreTest.txt
mv target/pit-reports target/org.apache.commons.text.similarity.FuzzyScoreTest
cp -r target/org.apache.commons.text.similarity.FuzzyScoreTest /home/dorma10/mutation-analysis/mutation_results/commons-text

rm -rf target/org.apache.commons.text.similarity.FuzzyScoreTest

python3 /home/dorma10/mutation-analysis/effectiveness/mutation/pom_changer.py commons-text org.apache.commons.text.similarity.JaccardSimilarity org.apache.commons.text.similarity.JaccardSimilarityTest DEFAULT
echo '* Mutating org.apache.commons.text.similarity.JaccardSimilarity with operator DEFAULT'
timeout 20m mvn org.pitest:pitest-maven:mutationCoverage -X -DoutputFormats=HTML --log-file ../../logs/org.apache.commons.text.similarity.JaccardSimilarityTest.txt
mv target/pit-reports target/org.apache.commons.text.similarity.JaccardSimilarityTest
cp -r target/org.apache.commons.text.similarity.JaccardSimilarityTest /home/dorma10/mutation-analysis/mutation_results/commons-text

rm -rf target/org.apache.commons.text.similarity.JaccardSimilarityTest

python3 /home/dorma10/mutation-analysis/effectiveness/mutation/pom_changer.py commons-text org.apache.commons.text.similarity.JaroWinklerDistance org.apache.commons.text.similarity.JaroWinklerDistanceTest DEFAULT
echo '* Mutating org.apache.commons.text.similarity.JaroWinklerDistance with operator DEFAULT'
timeout 20m mvn org.pitest:pitest-maven:mutationCoverage -X -DoutputFormats=HTML --log-file ../../logs/org.apache.commons.text.similarity.JaroWinklerDistanceTest.txt
mv target/pit-reports target/org.apache.commons.text.similarity.JaroWinklerDistanceTest
cp -r target/org.apache.commons.text.similarity.JaroWinklerDistanceTest /home/dorma10/mutation-analysis/mutation_results/commons-text

rm -rf target/org.apache.commons.text.similarity.JaroWinklerDistanceTest

python3 /home/dorma10/mutation-analysis/effectiveness/mutation/pom_changer.py commons-text org.apache.commons.text.similarity.CosineSimilarity org.apache.commons.text.similarity.CosineSimilarityTest DEFAULT
echo '* Mutating org.apache.commons.text.similarity.CosineSimilarity with operator DEFAULT'
timeout 20m mvn org.pitest:pitest-maven:mutationCoverage -X -DoutputFormats=HTML --log-file ../../logs/org.apache.commons.text.similarity.CosineSimilarityTest.txt
mv target/pit-reports target/org.apache.commons.text.similarity.CosineSimilarityTest
cp -r target/org.apache.commons.text.similarity.CosineSimilarityTest /home/dorma10/mutation-analysis/mutation_results/commons-text

rm -rf target/org.apache.commons.text.similarity.CosineSimilarityTest

python3 /home/dorma10/mutation-analysis/effectiveness/mutation/pom_changer.py commons-text org.apache.commons.text.diff.ReplacementsFinder org.apache.commons.text.diff.ReplacementsFinderTest DEFAULT
echo '* Mutating org.apache.commons.text.diff.ReplacementsFinder with operator DEFAULT'
timeout 20m mvn org.pitest:pitest-maven:mutationCoverage -X -DoutputFormats=HTML --log-file ../../logs/org.apache.commons.text.diff.ReplacementsFinderTest.txt
mv target/pit-reports target/org.apache.commons.text.diff.ReplacementsFinderTest
cp -r target/org.apache.commons.text.diff.ReplacementsFinderTest /home/dorma10/mutation-analysis/mutation_results/commons-text

rm -rf target/org.apache.commons.text.diff.ReplacementsFinderTest

python3 /home/dorma10/mutation-analysis/effectiveness/mutation/pom_changer.py commons-text org.apache.commons.text.diff.StringsComparator org.apache.commons.text.diff.StringsComparatorTest DEFAULT
echo '* Mutating org.apache.commons.text.diff.StringsComparator with operator DEFAULT'
timeout 20m mvn org.pitest:pitest-maven:mutationCoverage -X -DoutputFormats=HTML --log-file ../../logs/org.apache.commons.text.diff.StringsComparatorTest.txt
mv target/pit-reports target/org.apache.commons.text.diff.StringsComparatorTest
cp -r target/org.apache.commons.text.diff.StringsComparatorTest /home/dorma10/mutation-analysis/mutation_results/commons-text

rm -rf target/org.apache.commons.text.diff.StringsComparatorTest
echo '* Restoring original pom'
rm -rf pom.xml
mv cached_pom.xml pom.xml
cd ../..

echo '* 8 out of 9 -> commons-configuration'
mkdir /home/dorma10/mutation-analysis/mutation_results/commons-configuration


echo '* Compiling commons-configuration'
cd /home/dorma10/mutation-analysis/projects/commons-configuration

echo '* Caching original pom'
cp pom.xml cached_pom.xml

python3 /home/dorma10/mutation-analysis/effectiveness/mutation/pom_changer.py commons-configuration org.apache.commons.configuration2.tree.AbstractImmutableNodeHandler org.apache.commons.configuration2.tree.AbstractImmutableNodeHandlerTest DEFAULT
echo '* Mutating org.apache.commons.configuration2.tree.AbstractImmutableNodeHandler with operator DEFAULT'
timeout 20m mvn org.pitest:pitest-maven:mutationCoverage -X -DoutputFormats=HTML --log-file ../../logs/org.apache.commons.configuration2.tree.AbstractImmutableNodeHandlerTest.txt
mv target/pit-reports target/org.apache.commons.configuration2.tree.AbstractImmutableNodeHandlerTest
cp -r target/org.apache.commons.configuration2.tree.AbstractImmutableNodeHandlerTest /home/dorma10/mutation-analysis/mutation_results/commons-configuration

rm -rf target/org.apache.commons.configuration2.tree.AbstractImmutableNodeHandlerTest
echo '* Restoring original pom'
rm -rf pom.xml
mv cached_pom.xml pom.xml
cd ../..

echo '* 9 out of 9 -> joda-time'
mkdir /home/dorma10/mutation-analysis/mutation_results/joda-time


echo '* Compiling joda-time'
cd /home/dorma10/mutation-analysis/projects/joda-time

echo '* Caching original pom'
cp pom.xml cached_pom.xml

python3 /home/dorma10/mutation-analysis/effectiveness/mutation/pom_changer.py joda-time org.joda.time.Minutes org.joda.time.TestMinutes DEFAULT
echo '* Mutating org.joda.time.Minutes with operator DEFAULT'
timeout 20m mvn org.pitest:pitest-maven:mutationCoverage -X -DoutputFormats=HTML --log-file ../../logs/org.joda.time.TestMinutes.txt
mv target/pit-reports target/org.joda.time.TestMinutes
cp -r target/org.joda.time.TestMinutes /home/dorma10/mutation-analysis/mutation_results/joda-time

rm -rf target/org.joda.time.TestMinutes

python3 /home/dorma10/mutation-analysis/effectiveness/mutation/pom_changer.py joda-time org.joda.time.Months org.joda.time.TestMonths DEFAULT
echo '* Mutating org.joda.time.Months with operator DEFAULT'
timeout 20m mvn org.pitest:pitest-maven:mutationCoverage -X -DoutputFormats=HTML --log-file ../../logs/org.joda.time.TestMonths.txt
mv target/pit-reports target/org.joda.time.TestMonths
cp -r target/org.joda.time.TestMonths /home/dorma10/mutation-analysis/mutation_results/joda-time

rm -rf target/org.joda.time.TestMonths

python3 /home/dorma10/mutation-analysis/effectiveness/mutation/pom_changer.py joda-time org.joda.time.DateTimeComparator org.joda.time.TestDateTimeComparator DEFAULT
echo '* Mutating org.joda.time.DateTimeComparator with operator DEFAULT'
timeout 20m mvn org.pitest:pitest-maven:mutationCoverage -X -DoutputFormats=HTML --log-file ../../logs/org.joda.time.TestDateTimeComparator.txt
mv target/pit-reports target/org.joda.time.TestDateTimeComparator
cp -r target/org.joda.time.TestDateTimeComparator /home/dorma10/mutation-analysis/mutation_results/joda-time

rm -rf target/org.joda.time.TestDateTimeComparator

python3 /home/dorma10/mutation-analysis/effectiveness/mutation/pom_changer.py joda-time org.joda.time.base.AbstractPartial org.joda.time.TestAbstractPartial DEFAULT
echo '* Mutating org.joda.time.base.AbstractPartial with operator DEFAULT'
timeout 20m mvn org.pitest:pitest-maven:mutationCoverage -X -DoutputFormats=HTML --log-file ../../logs/org.joda.time.TestAbstractPartial.txt
mv target/pit-reports target/org.joda.time.TestAbstractPartial
cp -r target/org.joda.time.TestAbstractPartial /home/dorma10/mutation-analysis/mutation_results/joda-time

rm -rf target/org.joda.time.TestAbstractPartial

python3 /home/dorma10/mutation-analysis/effectiveness/mutation/pom_changer.py joda-time org.joda.time.DurationField org.joda.time.TestDurationField DEFAULT
echo '* Mutating org.joda.time.DurationField with operator DEFAULT'
timeout 20m mvn org.pitest:pitest-maven:mutationCoverage -X -DoutputFormats=HTML --log-file ../../logs/org.joda.time.TestDurationField.txt
mv target/pit-reports target/org.joda.time.TestDurationField
cp -r target/org.joda.time.TestDurationField /home/dorma10/mutation-analysis/mutation_results/joda-time

rm -rf target/org.joda.time.TestDurationField

python3 /home/dorma10/mutation-analysis/effectiveness/mutation/pom_changer.py joda-time org.joda.time.base.BaseSingleFieldPeriod org.joda.time.TestBaseSingleFieldPeriod DEFAULT
echo '* Mutating org.joda.time.base.BaseSingleFieldPeriod with operator DEFAULT'
timeout 20m mvn org.pitest:pitest-maven:mutationCoverage -X -DoutputFormats=HTML --log-file ../../logs/org.joda.time.TestBaseSingleFieldPeriod.txt
mv target/pit-reports target/org.joda.time.TestBaseSingleFieldPeriod
cp -r target/org.joda.time.TestBaseSingleFieldPeriod /home/dorma10/mutation-analysis/mutation_results/joda-time

rm -rf target/org.joda.time.TestBaseSingleFieldPeriod

python3 /home/dorma10/mutation-analysis/effectiveness/mutation/pom_changer.py joda-time org.joda.time.Chronology org.joda.time.TestChronology DEFAULT
echo '* Mutating org.joda.time.Chronology with operator DEFAULT'
timeout 20m mvn org.pitest:pitest-maven:mutationCoverage -X -DoutputFormats=HTML --log-file ../../logs/org.joda.time.TestChronology.txt
mv target/pit-reports target/org.joda.time.TestChronology
cp -r target/org.joda.time.TestChronology /home/dorma10/mutation-analysis/mutation_results/joda-time

rm -rf target/org.joda.time.TestChronology

python3 /home/dorma10/mutation-analysis/effectiveness/mutation/pom_changer.py joda-time org.joda.time.PeriodType org.joda.time.TestPeriodType DEFAULT
echo '* Mutating org.joda.time.PeriodType with operator DEFAULT'
timeout 20m mvn org.pitest:pitest-maven:mutationCoverage -X -DoutputFormats=HTML --log-file ../../logs/org.joda.time.TestPeriodType.txt
mv target/pit-reports target/org.joda.time.TestPeriodType
cp -r target/org.joda.time.TestPeriodType /home/dorma10/mutation-analysis/mutation_results/joda-time

rm -rf target/org.joda.time.TestPeriodType

python3 /home/dorma10/mutation-analysis/effectiveness/mutation/pom_changer.py joda-time org.joda.time.Years org.joda.time.TestYears DEFAULT
echo '* Mutating org.joda.time.Years with operator DEFAULT'
timeout 20m mvn org.pitest:pitest-maven:mutationCoverage -X -DoutputFormats=HTML --log-file ../../logs/org.joda.time.TestYears.txt
mv target/pit-reports target/org.joda.time.TestYears
cp -r target/org.joda.time.TestYears /home/dorma10/mutation-analysis/mutation_results/joda-time

rm -rf target/org.joda.time.TestYears

python3 /home/dorma10/mutation-analysis/effectiveness/mutation/pom_changer.py joda-time org.joda.time.DateTimeUtils org.joda.time.TestDateTimeUtils DEFAULT
echo '* Mutating org.joda.time.DateTimeUtils with operator DEFAULT'
timeout 20m mvn org.pitest:pitest-maven:mutationCoverage -X -DoutputFormats=HTML --log-file ../../logs/org.joda.time.TestDateTimeUtils.txt
mv target/pit-reports target/org.joda.time.TestDateTimeUtils
cp -r target/org.joda.time.TestDateTimeUtils /home/dorma10/mutation-analysis/mutation_results/joda-time

rm -rf target/org.joda.time.TestDateTimeUtils

python3 /home/dorma10/mutation-analysis/effectiveness/mutation/pom_changer.py joda-time org.joda.time.Days org.joda.time.TestDays DEFAULT
echo '* Mutating org.joda.time.Days with operator DEFAULT'
timeout 20m mvn org.pitest:pitest-maven:mutationCoverage -X -DoutputFormats=HTML --log-file ../../logs/org.joda.time.TestDays.txt
mv target/pit-reports target/org.joda.time.TestDays
cp -r target/org.joda.time.TestDays /home/dorma10/mutation-analysis/mutation_results/joda-time

rm -rf target/org.joda.time.TestDays

python3 /home/dorma10/mutation-analysis/effectiveness/mutation/pom_changer.py joda-time org.joda.time.DateTimeFieldType org.joda.time.TestDateTimeFieldType DEFAULT
echo '* Mutating org.joda.time.DateTimeFieldType with operator DEFAULT'
timeout 20m mvn org.pitest:pitest-maven:mutationCoverage -X -DoutputFormats=HTML --log-file ../../logs/org.joda.time.TestDateTimeFieldType.txt
mv target/pit-reports target/org.joda.time.TestDateTimeFieldType
cp -r target/org.joda.time.TestDateTimeFieldType /home/dorma10/mutation-analysis/mutation_results/joda-time

rm -rf target/org.joda.time.TestDateTimeFieldType

python3 /home/dorma10/mutation-analysis/effectiveness/mutation/pom_changer.py joda-time org.joda.time.DateTimeZone org.joda.time.TestDateTimeZone DEFAULT
echo '* Mutating org.joda.time.DateTimeZone with operator DEFAULT'
timeout 20m mvn org.pitest:pitest-maven:mutationCoverage -X -DoutputFormats=HTML --log-file ../../logs/org.joda.time.TestDateTimeZone.txt
mv target/pit-reports target/org.joda.time.TestDateTimeZone
cp -r target/org.joda.time.TestDateTimeZone /home/dorma10/mutation-analysis/mutation_results/joda-time

rm -rf target/org.joda.time.TestDateTimeZone

python3 /home/dorma10/mutation-analysis/effectiveness/mutation/pom_changer.py joda-time org.joda.time.base.BasePartial org.joda.time.TestBasePartial DEFAULT
echo '* Mutating org.joda.time.base.BasePartial with operator DEFAULT'
timeout 20m mvn org.pitest:pitest-maven:mutationCoverage -X -DoutputFormats=HTML --log-file ../../logs/org.joda.time.TestBasePartial.txt
mv target/pit-reports target/org.joda.time.TestBasePartial
cp -r target/org.joda.time.TestBasePartial /home/dorma10/mutation-analysis/mutation_results/joda-time

rm -rf target/org.joda.time.TestBasePartial

python3 /home/dorma10/mutation-analysis/effectiveness/mutation/pom_changer.py joda-time org.joda.time.DateTimeConstants org.joda.time.TestDateTimeConstants DEFAULT
echo '* Mutating org.joda.time.DateTimeConstants with operator DEFAULT'
timeout 20m mvn org.pitest:pitest-maven:mutationCoverage -X -DoutputFormats=HTML --log-file ../../logs/org.joda.time.TestDateTimeConstants.txt
mv target/pit-reports target/org.joda.time.TestDateTimeConstants
cp -r target/org.joda.time.TestDateTimeConstants /home/dorma10/mutation-analysis/mutation_results/joda-time

rm -rf target/org.joda.time.TestDateTimeConstants

python3 /home/dorma10/mutation-analysis/effectiveness/mutation/pom_changer.py joda-time org.joda.time.Seconds org.joda.time.TestSeconds DEFAULT
echo '* Mutating org.joda.time.Seconds with operator DEFAULT'
timeout 20m mvn org.pitest:pitest-maven:mutationCoverage -X -DoutputFormats=HTML --log-file ../../logs/org.joda.time.TestSeconds.txt
mv target/pit-reports target/org.joda.time.TestSeconds
cp -r target/org.joda.time.TestSeconds /home/dorma10/mutation-analysis/mutation_results/joda-time

rm -rf target/org.joda.time.TestSeconds

python3 /home/dorma10/mutation-analysis/effectiveness/mutation/pom_changer.py joda-time org.joda.time.IllegalFieldValueException org.joda.time.TestIllegalFieldValueException DEFAULT
echo '* Mutating org.joda.time.IllegalFieldValueException with operator DEFAULT'
timeout 20m mvn org.pitest:pitest-maven:mutationCoverage -X -DoutputFormats=HTML --log-file ../../logs/org.joda.time.TestIllegalFieldValueException.txt
mv target/pit-reports target/org.joda.time.TestIllegalFieldValueException
cp -r target/org.joda.time.TestIllegalFieldValueException /home/dorma10/mutation-analysis/mutation_results/joda-time

rm -rf target/org.joda.time.TestIllegalFieldValueException

python3 /home/dorma10/mutation-analysis/effectiveness/mutation/pom_changer.py joda-time org.joda.time.Weeks org.joda.time.TestWeeks DEFAULT
echo '* Mutating org.joda.time.Weeks with operator DEFAULT'
timeout 20m mvn org.pitest:pitest-maven:mutationCoverage -X -DoutputFormats=HTML --log-file ../../logs/org.joda.time.TestWeeks.txt
mv target/pit-reports target/org.joda.time.TestWeeks
cp -r target/org.joda.time.TestWeeks /home/dorma10/mutation-analysis/mutation_results/joda-time

rm -rf target/org.joda.time.TestWeeks

python3 /home/dorma10/mutation-analysis/effectiveness/mutation/pom_changer.py joda-time org.joda.time.Hours org.joda.time.TestHours DEFAULT
echo '* Mutating org.joda.time.Hours with operator DEFAULT'
timeout 20m mvn org.pitest:pitest-maven:mutationCoverage -X -DoutputFormats=HTML --log-file ../../logs/org.joda.time.TestHours.txt
mv target/pit-reports target/org.joda.time.TestHours
cp -r target/org.joda.time.TestHours /home/dorma10/mutation-analysis/mutation_results/joda-time

rm -rf target/org.joda.time.TestHours

python3 /home/dorma10/mutation-analysis/effectiveness/mutation/pom_changer.py joda-time org.joda.time.DurationFieldType org.joda.time.TestDurationFieldType DEFAULT
echo '* Mutating org.joda.time.DurationFieldType with operator DEFAULT'
timeout 20m mvn org.pitest:pitest-maven:mutationCoverage -X -DoutputFormats=HTML --log-file ../../logs/org.joda.time.TestDurationFieldType.txt
mv target/pit-reports target/org.joda.time.TestDurationFieldType
cp -r target/org.joda.time.TestDurationFieldType /home/dorma10/mutation-analysis/mutation_results/joda-time

rm -rf target/org.joda.time.TestDurationFieldType

python3 /home/dorma10/mutation-analysis/effectiveness/mutation/pom_changer.py joda-time org.joda.time.tz.CachedDateTimeZone org.joda.time.tz.TestCachedDateTimeZone DEFAULT
echo '* Mutating org.joda.time.tz.CachedDateTimeZone with operator DEFAULT'
timeout 20m mvn org.pitest:pitest-maven:mutationCoverage -X -DoutputFormats=HTML --log-file ../../logs/org.joda.time.tz.TestCachedDateTimeZone.txt
mv target/pit-reports target/org.joda.time.tz.TestCachedDateTimeZone
cp -r target/org.joda.time.tz.TestCachedDateTimeZone /home/dorma10/mutation-analysis/mutation_results/joda-time

rm -rf target/org.joda.time.tz.TestCachedDateTimeZone

python3 /home/dorma10/mutation-analysis/effectiveness/mutation/pom_changer.py joda-time org.joda.time.tz.ZoneInfoCompiler org.joda.time.tz.TestZoneInfoCompiler DEFAULT
echo '* Mutating org.joda.time.tz.ZoneInfoCompiler with operator DEFAULT'
timeout 20m mvn org.pitest:pitest-maven:mutationCoverage -X -DoutputFormats=HTML --log-file ../../logs/org.joda.time.tz.TestZoneInfoCompiler.txt
mv target/pit-reports target/org.joda.time.tz.TestZoneInfoCompiler
cp -r target/org.joda.time.tz.TestZoneInfoCompiler /home/dorma10/mutation-analysis/mutation_results/joda-time

rm -rf target/org.joda.time.tz.TestZoneInfoCompiler

python3 /home/dorma10/mutation-analysis/effectiveness/mutation/pom_changer.py joda-time org.joda.time.tz.UTCProvider org.joda.time.tz.TestUTCProvider DEFAULT
echo '* Mutating org.joda.time.tz.UTCProvider with operator DEFAULT'
timeout 20m mvn org.pitest:pitest-maven:mutationCoverage -X -DoutputFormats=HTML --log-file ../../logs/org.joda.time.tz.TestUTCProvider.txt
mv target/pit-reports target/org.joda.time.tz.TestUTCProvider
cp -r target/org.joda.time.tz.TestUTCProvider /home/dorma10/mutation-analysis/mutation_results/joda-time

rm -rf target/org.joda.time.tz.TestUTCProvider

python3 /home/dorma10/mutation-analysis/effectiveness/mutation/pom_changer.py joda-time org.joda.time.tz.FixedDateTimeZone org.joda.time.tz.TestFixedDateTimeZone DEFAULT
echo '* Mutating org.joda.time.tz.FixedDateTimeZone with operator DEFAULT'
timeout 20m mvn org.pitest:pitest-maven:mutationCoverage -X -DoutputFormats=HTML --log-file ../../logs/org.joda.time.tz.TestFixedDateTimeZone.txt
mv target/pit-reports target/org.joda.time.tz.TestFixedDateTimeZone
cp -r target/org.joda.time.tz.TestFixedDateTimeZone /home/dorma10/mutation-analysis/mutation_results/joda-time

rm -rf target/org.joda.time.tz.TestFixedDateTimeZone

python3 /home/dorma10/mutation-analysis/effectiveness/mutation/pom_changer.py joda-time org.joda.time.chrono.CopticChronology org.joda.time.chrono.TestCopticChronology DEFAULT
echo '* Mutating org.joda.time.chrono.CopticChronology with operator DEFAULT'
timeout 20m mvn org.pitest:pitest-maven:mutationCoverage -X -DoutputFormats=HTML --log-file ../../logs/org.joda.time.chrono.TestCopticChronology.txt
mv target/pit-reports target/org.joda.time.chrono.TestCopticChronology
cp -r target/org.joda.time.chrono.TestCopticChronology /home/dorma10/mutation-analysis/mutation_results/joda-time

rm -rf target/org.joda.time.chrono.TestCopticChronology

python3 /home/dorma10/mutation-analysis/effectiveness/mutation/pom_changer.py joda-time org.joda.time.chrono.BuddhistChronology org.joda.time.chrono.TestBuddhistChronology DEFAULT
echo '* Mutating org.joda.time.chrono.BuddhistChronology with operator DEFAULT'
timeout 20m mvn org.pitest:pitest-maven:mutationCoverage -X -DoutputFormats=HTML --log-file ../../logs/org.joda.time.chrono.TestBuddhistChronology.txt
mv target/pit-reports target/org.joda.time.chrono.TestBuddhistChronology
cp -r target/org.joda.time.chrono.TestBuddhistChronology /home/dorma10/mutation-analysis/mutation_results/joda-time

rm -rf target/org.joda.time.chrono.TestBuddhistChronology

python3 /home/dorma10/mutation-analysis/effectiveness/mutation/pom_changer.py joda-time org.joda.time.chrono.IslamicChronology org.joda.time.chrono.TestIslamicChronology DEFAULT
echo '* Mutating org.joda.time.chrono.IslamicChronology with operator DEFAULT'
timeout 20m mvn org.pitest:pitest-maven:mutationCoverage -X -DoutputFormats=HTML --log-file ../../logs/org.joda.time.chrono.TestIslamicChronology.txt
mv target/pit-reports target/org.joda.time.chrono.TestIslamicChronology
cp -r target/org.joda.time.chrono.TestIslamicChronology /home/dorma10/mutation-analysis/mutation_results/joda-time

rm -rf target/org.joda.time.chrono.TestIslamicChronology

python3 /home/dorma10/mutation-analysis/effectiveness/mutation/pom_changer.py joda-time org.joda.time.chrono.JulianChronology org.joda.time.chrono.TestJulianChronology DEFAULT
echo '* Mutating org.joda.time.chrono.JulianChronology with operator DEFAULT'
timeout 20m mvn org.pitest:pitest-maven:mutationCoverage -X -DoutputFormats=HTML --log-file ../../logs/org.joda.time.chrono.TestJulianChronology.txt
mv target/pit-reports target/org.joda.time.chrono.TestJulianChronology
cp -r target/org.joda.time.chrono.TestJulianChronology /home/dorma10/mutation-analysis/mutation_results/joda-time

rm -rf target/org.joda.time.chrono.TestJulianChronology

python3 /home/dorma10/mutation-analysis/effectiveness/mutation/pom_changer.py joda-time org.joda.time.chrono.GJChronology org.joda.time.chrono.TestGJChronology DEFAULT
echo '* Mutating org.joda.time.chrono.GJChronology with operator DEFAULT'
timeout 20m mvn org.pitest:pitest-maven:mutationCoverage -X -DoutputFormats=HTML --log-file ../../logs/org.joda.time.chrono.TestGJChronology.txt
mv target/pit-reports target/org.joda.time.chrono.TestGJChronology
cp -r target/org.joda.time.chrono.TestGJChronology /home/dorma10/mutation-analysis/mutation_results/joda-time

rm -rf target/org.joda.time.chrono.TestGJChronology

python3 /home/dorma10/mutation-analysis/effectiveness/mutation/pom_changer.py joda-time org.joda.time.chrono.ISOChronology org.joda.time.chrono.TestISOChronology DEFAULT
echo '* Mutating org.joda.time.chrono.ISOChronology with operator DEFAULT'
timeout 20m mvn org.pitest:pitest-maven:mutationCoverage -X -DoutputFormats=HTML --log-file ../../logs/org.joda.time.chrono.TestISOChronology.txt
mv target/pit-reports target/org.joda.time.chrono.TestISOChronology
cp -r target/org.joda.time.chrono.TestISOChronology /home/dorma10/mutation-analysis/mutation_results/joda-time

rm -rf target/org.joda.time.chrono.TestISOChronology

python3 /home/dorma10/mutation-analysis/effectiveness/mutation/pom_changer.py joda-time org.joda.time.chrono.LenientChronology org.joda.time.chrono.TestLenientChronology DEFAULT
echo '* Mutating org.joda.time.chrono.LenientChronology with operator DEFAULT'
timeout 20m mvn org.pitest:pitest-maven:mutationCoverage -X -DoutputFormats=HTML --log-file ../../logs/org.joda.time.chrono.TestLenientChronology.txt
mv target/pit-reports target/org.joda.time.chrono.TestLenientChronology
cp -r target/org.joda.time.chrono.TestLenientChronology /home/dorma10/mutation-analysis/mutation_results/joda-time

rm -rf target/org.joda.time.chrono.TestLenientChronology

python3 /home/dorma10/mutation-analysis/effectiveness/mutation/pom_changer.py joda-time org.joda.time.chrono.GregorianChronology org.joda.time.chrono.TestGregorianChronology DEFAULT
echo '* Mutating org.joda.time.chrono.GregorianChronology with operator DEFAULT'
timeout 20m mvn org.pitest:pitest-maven:mutationCoverage -X -DoutputFormats=HTML --log-file ../../logs/org.joda.time.chrono.TestGregorianChronology.txt
mv target/pit-reports target/org.joda.time.chrono.TestGregorianChronology
cp -r target/org.joda.time.chrono.TestGregorianChronology /home/dorma10/mutation-analysis/mutation_results/joda-time

rm -rf target/org.joda.time.chrono.TestGregorianChronology

python3 /home/dorma10/mutation-analysis/effectiveness/mutation/pom_changer.py joda-time org.joda.time.chrono.EthiopicChronology org.joda.time.chrono.TestEthiopicChronology DEFAULT
echo '* Mutating org.joda.time.chrono.EthiopicChronology with operator DEFAULT'
timeout 20m mvn org.pitest:pitest-maven:mutationCoverage -X -DoutputFormats=HTML --log-file ../../logs/org.joda.time.chrono.TestEthiopicChronology.txt
mv target/pit-reports target/org.joda.time.chrono.TestEthiopicChronology
cp -r target/org.joda.time.chrono.TestEthiopicChronology /home/dorma10/mutation-analysis/mutation_results/joda-time

rm -rf target/org.joda.time.chrono.TestEthiopicChronology

python3 /home/dorma10/mutation-analysis/effectiveness/mutation/pom_changer.py joda-time org.joda.time.chrono.JulianChronology org.joda.time.chrono.gj.TestJulianChronology DEFAULT
echo '* Mutating org.joda.time.chrono.JulianChronology with operator DEFAULT'
timeout 20m mvn org.pitest:pitest-maven:mutationCoverage -X -DoutputFormats=HTML --log-file ../../logs/org.joda.time.chrono.gj.TestJulianChronology.txt
mv target/pit-reports target/org.joda.time.chrono.gj.TestJulianChronology
cp -r target/org.joda.time.chrono.gj.TestJulianChronology /home/dorma10/mutation-analysis/mutation_results/joda-time

rm -rf target/org.joda.time.chrono.gj.TestJulianChronology

python3 /home/dorma10/mutation-analysis/effectiveness/mutation/pom_changer.py joda-time org.joda.time.chrono.GJChronology org.joda.time.chrono.gj.TestGJChronology DEFAULT
echo '* Mutating org.joda.time.chrono.GJChronology with operator DEFAULT'
timeout 20m mvn org.pitest:pitest-maven:mutationCoverage -X -DoutputFormats=HTML --log-file ../../logs/org.joda.time.chrono.gj.TestGJChronology.txt
mv target/pit-reports target/org.joda.time.chrono.gj.TestGJChronology
cp -r target/org.joda.time.chrono.gj.TestGJChronology /home/dorma10/mutation-analysis/mutation_results/joda-time

rm -rf target/org.joda.time.chrono.gj.TestGJChronology

python3 /home/dorma10/mutation-analysis/effectiveness/mutation/pom_changer.py joda-time org.joda.time.chrono.GregorianChronology org.joda.time.chrono.gj.TestGregorianChronology DEFAULT
echo '* Mutating org.joda.time.chrono.GregorianChronology with operator DEFAULT'
timeout 20m mvn org.pitest:pitest-maven:mutationCoverage -X -DoutputFormats=HTML --log-file ../../logs/org.joda.time.chrono.gj.TestGregorianChronology.txt
mv target/pit-reports target/org.joda.time.chrono.gj.TestGregorianChronology
cp -r target/org.joda.time.chrono.gj.TestGregorianChronology /home/dorma10/mutation-analysis/mutation_results/joda-time

rm -rf target/org.joda.time.chrono.gj.TestGregorianChronology

python3 /home/dorma10/mutation-analysis/effectiveness/mutation/pom_changer.py joda-time org.joda.time.field.OffsetDateTimeField org.joda.time.field.TestOffsetDateTimeField DEFAULT
echo '* Mutating org.joda.time.field.OffsetDateTimeField with operator DEFAULT'
timeout 20m mvn org.pitest:pitest-maven:mutationCoverage -X -DoutputFormats=HTML --log-file ../../logs/org.joda.time.field.TestOffsetDateTimeField.txt
mv target/pit-reports target/org.joda.time.field.TestOffsetDateTimeField
cp -r target/org.joda.time.field.TestOffsetDateTimeField /home/dorma10/mutation-analysis/mutation_results/joda-time

rm -rf target/org.joda.time.field.TestOffsetDateTimeField

python3 /home/dorma10/mutation-analysis/effectiveness/mutation/pom_changer.py joda-time org.joda.time.field.PreciseDurationField org.joda.time.field.TestPreciseDurationField DEFAULT
echo '* Mutating org.joda.time.field.PreciseDurationField with operator DEFAULT'
timeout 20m mvn org.pitest:pitest-maven:mutationCoverage -X -DoutputFormats=HTML --log-file ../../logs/org.joda.time.field.TestPreciseDurationField.txt
mv target/pit-reports target/org.joda.time.field.TestPreciseDurationField
cp -r target/org.joda.time.field.TestPreciseDurationField /home/dorma10/mutation-analysis/mutation_results/joda-time

rm -rf target/org.joda.time.field.TestPreciseDurationField

python3 /home/dorma10/mutation-analysis/effectiveness/mutation/pom_changer.py joda-time org.joda.time.field.BaseDateTimeField org.joda.time.field.TestBaseDateTimeField DEFAULT
echo '* Mutating org.joda.time.field.BaseDateTimeField with operator DEFAULT'
timeout 20m mvn org.pitest:pitest-maven:mutationCoverage -X -DoutputFormats=HTML --log-file ../../logs/org.joda.time.field.TestBaseDateTimeField.txt
mv target/pit-reports target/org.joda.time.field.TestBaseDateTimeField
cp -r target/org.joda.time.field.TestBaseDateTimeField /home/dorma10/mutation-analysis/mutation_results/joda-time

rm -rf target/org.joda.time.field.TestBaseDateTimeField

python3 /home/dorma10/mutation-analysis/effectiveness/mutation/pom_changer.py joda-time org.joda.time.field.FieldUtils org.joda.time.field.TestFieldUtils DEFAULT
echo '* Mutating org.joda.time.field.FieldUtils with operator DEFAULT'
timeout 20m mvn org.pitest:pitest-maven:mutationCoverage -X -DoutputFormats=HTML --log-file ../../logs/org.joda.time.field.TestFieldUtils.txt
mv target/pit-reports target/org.joda.time.field.TestFieldUtils
cp -r target/org.joda.time.field.TestFieldUtils /home/dorma10/mutation-analysis/mutation_results/joda-time

rm -rf target/org.joda.time.field.TestFieldUtils

python3 /home/dorma10/mutation-analysis/effectiveness/mutation/pom_changer.py joda-time org.joda.time.field.PreciseDurationDateTimeField org.joda.time.field.TestPreciseDurationDateTimeField DEFAULT
echo '* Mutating org.joda.time.field.PreciseDurationDateTimeField with operator DEFAULT'
timeout 20m mvn org.pitest:pitest-maven:mutationCoverage -X -DoutputFormats=HTML --log-file ../../logs/org.joda.time.field.TestPreciseDurationDateTimeField.txt
mv target/pit-reports target/org.joda.time.field.TestPreciseDurationDateTimeField
cp -r target/org.joda.time.field.TestPreciseDurationDateTimeField /home/dorma10/mutation-analysis/mutation_results/joda-time

rm -rf target/org.joda.time.field.TestPreciseDurationDateTimeField

python3 /home/dorma10/mutation-analysis/effectiveness/mutation/pom_changer.py joda-time org.joda.time.field.PreciseDateTimeField org.joda.time.field.TestPreciseDateTimeField DEFAULT
echo '* Mutating org.joda.time.field.PreciseDateTimeField with operator DEFAULT'
timeout 20m mvn org.pitest:pitest-maven:mutationCoverage -X -DoutputFormats=HTML --log-file ../../logs/org.joda.time.field.TestPreciseDateTimeField.txt
mv target/pit-reports target/org.joda.time.field.TestPreciseDateTimeField
cp -r target/org.joda.time.field.TestPreciseDateTimeField /home/dorma10/mutation-analysis/mutation_results/joda-time

rm -rf target/org.joda.time.field.TestPreciseDateTimeField

python3 /home/dorma10/mutation-analysis/effectiveness/mutation/pom_changer.py joda-time org.joda.time.field.MillisDurationField org.joda.time.field.TestMillisDurationField DEFAULT
echo '* Mutating org.joda.time.field.MillisDurationField with operator DEFAULT'
timeout 20m mvn org.pitest:pitest-maven:mutationCoverage -X -DoutputFormats=HTML --log-file ../../logs/org.joda.time.field.TestMillisDurationField.txt
mv target/pit-reports target/org.joda.time.field.TestMillisDurationField
cp -r target/org.joda.time.field.TestMillisDurationField /home/dorma10/mutation-analysis/mutation_results/joda-time

rm -rf target/org.joda.time.field.TestMillisDurationField

python3 /home/dorma10/mutation-analysis/effectiveness/mutation/pom_changer.py joda-time org.joda.time.field.UnsupportedDateTimeField org.joda.time.field.TestUnsupportedDateTimeField DEFAULT
echo '* Mutating org.joda.time.field.UnsupportedDateTimeField with operator DEFAULT'
timeout 20m mvn org.pitest:pitest-maven:mutationCoverage -X -DoutputFormats=HTML --log-file ../../logs/org.joda.time.field.TestUnsupportedDateTimeField.txt
mv target/pit-reports target/org.joda.time.field.TestUnsupportedDateTimeField
cp -r target/org.joda.time.field.TestUnsupportedDateTimeField /home/dorma10/mutation-analysis/mutation_results/joda-time

rm -rf target/org.joda.time.field.TestUnsupportedDateTimeField

python3 /home/dorma10/mutation-analysis/effectiveness/mutation/pom_changer.py joda-time org.joda.time.field.ScaledDurationField org.joda.time.field.TestScaledDurationField DEFAULT
echo '* Mutating org.joda.time.field.ScaledDurationField with operator DEFAULT'
timeout 20m mvn org.pitest:pitest-maven:mutationCoverage -X -DoutputFormats=HTML --log-file ../../logs/org.joda.time.field.TestScaledDurationField.txt
mv target/pit-reports target/org.joda.time.field.TestScaledDurationField
cp -r target/org.joda.time.field.TestScaledDurationField /home/dorma10/mutation-analysis/mutation_results/joda-time

rm -rf target/org.joda.time.field.TestScaledDurationField

python3 /home/dorma10/mutation-analysis/effectiveness/mutation/pom_changer.py joda-time org.joda.time.format.DateTimeFormat org.joda.time.format.TestDateTimeFormat DEFAULT
echo '* Mutating org.joda.time.format.DateTimeFormat with operator DEFAULT'
timeout 20m mvn org.pitest:pitest-maven:mutationCoverage -X -DoutputFormats=HTML --log-file ../../logs/org.joda.time.format.TestDateTimeFormat.txt
mv target/pit-reports target/org.joda.time.format.TestDateTimeFormat
cp -r target/org.joda.time.format.TestDateTimeFormat /home/dorma10/mutation-analysis/mutation_results/joda-time

rm -rf target/org.joda.time.format.TestDateTimeFormat

python3 /home/dorma10/mutation-analysis/effectiveness/mutation/pom_changer.py joda-time org.joda.time.format.PeriodFormat org.joda.time.format.TestPeriodFormat DEFAULT
echo '* Mutating org.joda.time.format.PeriodFormat with operator DEFAULT'
timeout 20m mvn org.pitest:pitest-maven:mutationCoverage -X -DoutputFormats=HTML --log-file ../../logs/org.joda.time.format.TestPeriodFormat.txt
mv target/pit-reports target/org.joda.time.format.TestPeriodFormat
cp -r target/org.joda.time.format.TestPeriodFormat /home/dorma10/mutation-analysis/mutation_results/joda-time

rm -rf target/org.joda.time.format.TestPeriodFormat

python3 /home/dorma10/mutation-analysis/effectiveness/mutation/pom_changer.py joda-time org.joda.time.format.ISOPeriodFormat org.joda.time.format.TestISOPeriodFormat DEFAULT
echo '* Mutating org.joda.time.format.ISOPeriodFormat with operator DEFAULT'
timeout 20m mvn org.pitest:pitest-maven:mutationCoverage -X -DoutputFormats=HTML --log-file ../../logs/org.joda.time.format.TestISOPeriodFormat.txt
mv target/pit-reports target/org.joda.time.format.TestISOPeriodFormat
cp -r target/org.joda.time.format.TestISOPeriodFormat /home/dorma10/mutation-analysis/mutation_results/joda-time

rm -rf target/org.joda.time.format.TestISOPeriodFormat

python3 /home/dorma10/mutation-analysis/effectiveness/mutation/pom_changer.py joda-time org.joda.time.format.PeriodFormatter org.joda.time.format.TestPeriodFormatter DEFAULT
echo '* Mutating org.joda.time.format.PeriodFormatter with operator DEFAULT'
timeout 20m mvn org.pitest:pitest-maven:mutationCoverage -X -DoutputFormats=HTML --log-file ../../logs/org.joda.time.format.TestPeriodFormatter.txt
mv target/pit-reports target/org.joda.time.format.TestPeriodFormatter
cp -r target/org.joda.time.format.TestPeriodFormatter /home/dorma10/mutation-analysis/mutation_results/joda-time

rm -rf target/org.joda.time.format.TestPeriodFormatter

python3 /home/dorma10/mutation-analysis/effectiveness/mutation/pom_changer.py joda-time org.joda.time.format.PeriodFormatterBuilder org.joda.time.format.TestPeriodFormatterBuilder DEFAULT
echo '* Mutating org.joda.time.format.PeriodFormatterBuilder with operator DEFAULT'
timeout 20m mvn org.pitest:pitest-maven:mutationCoverage -X -DoutputFormats=HTML --log-file ../../logs/org.joda.time.format.TestPeriodFormatterBuilder.txt
mv target/pit-reports target/org.joda.time.format.TestPeriodFormatterBuilder
cp -r target/org.joda.time.format.TestPeriodFormatterBuilder /home/dorma10/mutation-analysis/mutation_results/joda-time

rm -rf target/org.joda.time.format.TestPeriodFormatterBuilder

python3 /home/dorma10/mutation-analysis/effectiveness/mutation/pom_changer.py joda-time org.joda.time.format.DateTimeFormatterBuilder org.joda.time.format.TestDateTimeFormatterBuilder DEFAULT
echo '* Mutating org.joda.time.format.DateTimeFormatterBuilder with operator DEFAULT'
timeout 20m mvn org.pitest:pitest-maven:mutationCoverage -X -DoutputFormats=HTML --log-file ../../logs/org.joda.time.format.TestDateTimeFormatterBuilder.txt
mv target/pit-reports target/org.joda.time.format.TestDateTimeFormatterBuilder
cp -r target/org.joda.time.format.TestDateTimeFormatterBuilder /home/dorma10/mutation-analysis/mutation_results/joda-time

rm -rf target/org.joda.time.format.TestDateTimeFormatterBuilder

python3 /home/dorma10/mutation-analysis/effectiveness/mutation/pom_changer.py joda-time org.joda.time.format.DateTimeFormatter org.joda.time.format.TestDateTimeFormatter DEFAULT
echo '* Mutating org.joda.time.format.DateTimeFormatter with operator DEFAULT'
timeout 20m mvn org.pitest:pitest-maven:mutationCoverage -X -DoutputFormats=HTML --log-file ../../logs/org.joda.time.format.TestDateTimeFormatter.txt
mv target/pit-reports target/org.joda.time.format.TestDateTimeFormatter
cp -r target/org.joda.time.format.TestDateTimeFormatter /home/dorma10/mutation-analysis/mutation_results/joda-time

rm -rf target/org.joda.time.format.TestDateTimeFormatter

python3 /home/dorma10/mutation-analysis/effectiveness/mutation/pom_changer.py joda-time org.joda.time.format.DateTimeParserBucket org.joda.time.format.TestDateTimeParserBucket DEFAULT
echo '* Mutating org.joda.time.format.DateTimeParserBucket with operator DEFAULT'
timeout 20m mvn org.pitest:pitest-maven:mutationCoverage -X -DoutputFormats=HTML --log-file ../../logs/org.joda.time.format.TestDateTimeParserBucket.txt
mv target/pit-reports target/org.joda.time.format.TestDateTimeParserBucket
cp -r target/org.joda.time.format.TestDateTimeParserBucket /home/dorma10/mutation-analysis/mutation_results/joda-time

rm -rf target/org.joda.time.format.TestDateTimeParserBucket

python3 /home/dorma10/mutation-analysis/effectiveness/mutation/pom_changer.py joda-time org.joda.time.format.ISODateTimeFormat org.joda.time.format.TestISODateTimeFormat DEFAULT
echo '* Mutating org.joda.time.format.ISODateTimeFormat with operator DEFAULT'
timeout 20m mvn org.pitest:pitest-maven:mutationCoverage -X -DoutputFormats=HTML --log-file ../../logs/org.joda.time.format.TestISODateTimeFormat.txt
mv target/pit-reports target/org.joda.time.format.TestISODateTimeFormat
cp -r target/org.joda.time.format.TestISODateTimeFormat /home/dorma10/mutation-analysis/mutation_results/joda-time

rm -rf target/org.joda.time.format.TestISODateTimeFormat

python3 /home/dorma10/mutation-analysis/effectiveness/mutation/pom_changer.py joda-time org.joda.time.convert.ReadablePartialConverter org.joda.time.convert.TestReadablePartialConverter DEFAULT
echo '* Mutating org.joda.time.convert.ReadablePartialConverter with operator DEFAULT'
timeout 20m mvn org.pitest:pitest-maven:mutationCoverage -X -DoutputFormats=HTML --log-file ../../logs/org.joda.time.convert.TestReadablePartialConverter.txt
mv target/pit-reports target/org.joda.time.convert.TestReadablePartialConverter
cp -r target/org.joda.time.convert.TestReadablePartialConverter /home/dorma10/mutation-analysis/mutation_results/joda-time

rm -rf target/org.joda.time.convert.TestReadablePartialConverter

python3 /home/dorma10/mutation-analysis/effectiveness/mutation/pom_changer.py joda-time org.joda.time.convert.CalendarConverter org.joda.time.convert.TestCalendarConverter DEFAULT
echo '* Mutating org.joda.time.convert.CalendarConverter with operator DEFAULT'
timeout 20m mvn org.pitest:pitest-maven:mutationCoverage -X -DoutputFormats=HTML --log-file ../../logs/org.joda.time.convert.TestCalendarConverter.txt
mv target/pit-reports target/org.joda.time.convert.TestCalendarConverter
cp -r target/org.joda.time.convert.TestCalendarConverter /home/dorma10/mutation-analysis/mutation_results/joda-time

rm -rf target/org.joda.time.convert.TestCalendarConverter

python3 /home/dorma10/mutation-analysis/effectiveness/mutation/pom_changer.py joda-time org.joda.time.convert.ReadableInstantConverter org.joda.time.convert.TestReadableInstantConverter DEFAULT
echo '* Mutating org.joda.time.convert.ReadableInstantConverter with operator DEFAULT'
timeout 20m mvn org.pitest:pitest-maven:mutationCoverage -X -DoutputFormats=HTML --log-file ../../logs/org.joda.time.convert.TestReadableInstantConverter.txt
mv target/pit-reports target/org.joda.time.convert.TestReadableInstantConverter
cp -r target/org.joda.time.convert.TestReadableInstantConverter /home/dorma10/mutation-analysis/mutation_results/joda-time

rm -rf target/org.joda.time.convert.TestReadableInstantConverter

python3 /home/dorma10/mutation-analysis/effectiveness/mutation/pom_changer.py joda-time org.joda.time.convert.NullConverter org.joda.time.convert.TestNullConverter DEFAULT
echo '* Mutating org.joda.time.convert.NullConverter with operator DEFAULT'
timeout 20m mvn org.pitest:pitest-maven:mutationCoverage -X -DoutputFormats=HTML --log-file ../../logs/org.joda.time.convert.TestNullConverter.txt
mv target/pit-reports target/org.joda.time.convert.TestNullConverter
cp -r target/org.joda.time.convert.TestNullConverter /home/dorma10/mutation-analysis/mutation_results/joda-time

rm -rf target/org.joda.time.convert.TestNullConverter

python3 /home/dorma10/mutation-analysis/effectiveness/mutation/pom_changer.py joda-time org.joda.time.convert.ReadableDurationConverter org.joda.time.convert.TestReadableDurationConverter DEFAULT
echo '* Mutating org.joda.time.convert.ReadableDurationConverter with operator DEFAULT'
timeout 20m mvn org.pitest:pitest-maven:mutationCoverage -X -DoutputFormats=HTML --log-file ../../logs/org.joda.time.convert.TestReadableDurationConverter.txt
mv target/pit-reports target/org.joda.time.convert.TestReadableDurationConverter
cp -r target/org.joda.time.convert.TestReadableDurationConverter /home/dorma10/mutation-analysis/mutation_results/joda-time

rm -rf target/org.joda.time.convert.TestReadableDurationConverter

python3 /home/dorma10/mutation-analysis/effectiveness/mutation/pom_changer.py joda-time org.joda.time.convert.StringConverter org.joda.time.convert.TestStringConverter DEFAULT
echo '* Mutating org.joda.time.convert.StringConverter with operator DEFAULT'
timeout 20m mvn org.pitest:pitest-maven:mutationCoverage -X -DoutputFormats=HTML --log-file ../../logs/org.joda.time.convert.TestStringConverter.txt
mv target/pit-reports target/org.joda.time.convert.TestStringConverter
cp -r target/org.joda.time.convert.TestStringConverter /home/dorma10/mutation-analysis/mutation_results/joda-time

rm -rf target/org.joda.time.convert.TestStringConverter

python3 /home/dorma10/mutation-analysis/effectiveness/mutation/pom_changer.py joda-time org.joda.time.convert.ReadablePeriodConverter org.joda.time.convert.TestReadablePeriodConverter DEFAULT
echo '* Mutating org.joda.time.convert.ReadablePeriodConverter with operator DEFAULT'
timeout 20m mvn org.pitest:pitest-maven:mutationCoverage -X -DoutputFormats=HTML --log-file ../../logs/org.joda.time.convert.TestReadablePeriodConverter.txt
mv target/pit-reports target/org.joda.time.convert.TestReadablePeriodConverter
cp -r target/org.joda.time.convert.TestReadablePeriodConverter /home/dorma10/mutation-analysis/mutation_results/joda-time

rm -rf target/org.joda.time.convert.TestReadablePeriodConverter

python3 /home/dorma10/mutation-analysis/effectiveness/mutation/pom_changer.py joda-time org.joda.time.convert.ConverterSet org.joda.time.convert.TestConverterSet DEFAULT
echo '* Mutating org.joda.time.convert.ConverterSet with operator DEFAULT'
timeout 20m mvn org.pitest:pitest-maven:mutationCoverage -X -DoutputFormats=HTML --log-file ../../logs/org.joda.time.convert.TestConverterSet.txt
mv target/pit-reports target/org.joda.time.convert.TestConverterSet
cp -r target/org.joda.time.convert.TestConverterSet /home/dorma10/mutation-analysis/mutation_results/joda-time

rm -rf target/org.joda.time.convert.TestConverterSet

python3 /home/dorma10/mutation-analysis/effectiveness/mutation/pom_changer.py joda-time org.joda.time.convert.DateConverter org.joda.time.convert.TestDateConverter DEFAULT
echo '* Mutating org.joda.time.convert.DateConverter with operator DEFAULT'
timeout 20m mvn org.pitest:pitest-maven:mutationCoverage -X -DoutputFormats=HTML --log-file ../../logs/org.joda.time.convert.TestDateConverter.txt
mv target/pit-reports target/org.joda.time.convert.TestDateConverter
cp -r target/org.joda.time.convert.TestDateConverter /home/dorma10/mutation-analysis/mutation_results/joda-time

rm -rf target/org.joda.time.convert.TestDateConverter

python3 /home/dorma10/mutation-analysis/effectiveness/mutation/pom_changer.py joda-time org.joda.time.convert.ReadableIntervalConverter org.joda.time.convert.TestReadableIntervalConverter DEFAULT
echo '* Mutating org.joda.time.convert.ReadableIntervalConverter with operator DEFAULT'
timeout 20m mvn org.pitest:pitest-maven:mutationCoverage -X -DoutputFormats=HTML --log-file ../../logs/org.joda.time.convert.TestReadableIntervalConverter.txt
mv target/pit-reports target/org.joda.time.convert.TestReadableIntervalConverter
cp -r target/org.joda.time.convert.TestReadableIntervalConverter /home/dorma10/mutation-analysis/mutation_results/joda-time

rm -rf target/org.joda.time.convert.TestReadableIntervalConverter

python3 /home/dorma10/mutation-analysis/effectiveness/mutation/pom_changer.py joda-time org.joda.time.convert.ConverterManager org.joda.time.convert.TestConverterManager DEFAULT
echo '* Mutating org.joda.time.convert.ConverterManager with operator DEFAULT'
timeout 20m mvn org.pitest:pitest-maven:mutationCoverage -X -DoutputFormats=HTML --log-file ../../logs/org.joda.time.convert.TestConverterManager.txt
mv target/pit-reports target/org.joda.time.convert.TestConverterManager
cp -r target/org.joda.time.convert.TestConverterManager /home/dorma10/mutation-analysis/mutation_results/joda-time

rm -rf target/org.joda.time.convert.TestConverterManager

python3 /home/dorma10/mutation-analysis/effectiveness/mutation/pom_changer.py joda-time org.joda.time.convert.LongConverter org.joda.time.convert.TestLongConverter DEFAULT
echo '* Mutating org.joda.time.convert.LongConverter with operator DEFAULT'
timeout 20m mvn org.pitest:pitest-maven:mutationCoverage -X -DoutputFormats=HTML --log-file ../../logs/org.joda.time.convert.TestLongConverter.txt
mv target/pit-reports target/org.joda.time.convert.TestLongConverter
cp -r target/org.joda.time.convert.TestLongConverter /home/dorma10/mutation-analysis/mutation_results/joda-time

rm -rf target/org.joda.time.convert.TestLongConverter
echo '* Restoring original pom'
rm -rf pom.xml
mv cached_pom.xml pom.xml
cd ../..

mv /home/dorma10/mutation-analysis/mutation_results /home/dorma10/mutation-analysis/mutation_results-DEFAULT
