package com.radioc.xml.converters;

import com.sun.xml.bind.marshaller.NamespacePrefixMapper;

class NamespacePrefixMapperImpl extends NamespacePrefixMapper
{
  public String getPreferredPrefix(String namespaceUri, String suggestion, boolean requirePrefix)
  {
    if ("http://www.itunes.com/dtds/podcast-1.0.dtd".equals(namespaceUri))
      return "itunes";
    return suggestion;
  }

  public String[] getPreDeclaredNamespaceUris()
  {
    return new String[0];
  }
}