Parser_FILES = \
packages/stinst/parser/ParseTreeSearcher.st packages/stinst/parser/RBFormatter.st packages/stinst/parser/RBParseNodes.st packages/stinst/parser/RBParser.st packages/stinst/parser/RBToken.st packages/stinst/parser/OrderedSet.st packages/stinst/parser/PoolResolutionTests.st packages/stinst/parser/STCompLit.st packages/stinst/parser/STCompiler.st packages/stinst/parser/STDecompiler.st packages/stinst/parser/STLoader.st packages/stinst/parser/STLoaderObjs.st packages/stinst/parser/STSymTable.st packages/stinst/parser/RewriteTests.st packages/stinst/parser/SqueakParser.st packages/stinst/parser/STFileParser.st packages/stinst/parser/SIFParser.st packages/stinst/parser/GSTParser.st packages/stinst/parser/Exporter.st packages/stinst/parser/NewSyntaxExporter.st packages/stinst/parser/OldSyntaxExporter.st packages/stinst/parser/SqueakExporter.st packages/stinst/parser/Extensions.st packages/stinst/parser/ChangeLog 
$(Parser_FILES):
$(srcdir)/packages/stinst/parser/stamp-classes: $(Parser_FILES)
	touch $(srcdir)/packages/stinst/parser/stamp-classes
