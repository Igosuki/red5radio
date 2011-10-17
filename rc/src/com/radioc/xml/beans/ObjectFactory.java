package com.radioc.xml.beans;

import java.math.BigInteger;
import javax.xml.bind.JAXBElement;
import javax.xml.bind.annotation.XmlElementDecl;
import javax.xml.bind.annotation.XmlRegistry;
import javax.xml.bind.annotation.adapters.CollapsedStringAdapter;
import javax.xml.bind.annotation.adapters.XmlJavaTypeAdapter;
import javax.xml.namespace.QName;

@XmlRegistry
public class ObjectFactory
{
  private static final QName _IsClosedCaptioned_QNAME = new QName("http://www.itunes.com/dtds/podcast-1.0.dtd", "isClosedCaptioned");
  private static final QName _Summary_QNAME = new QName("http://www.itunes.com/dtds/podcast-1.0.dtd", "summary");
  private static final QName _Keywords_QNAME = new QName("http://www.itunes.com/dtds/podcast-1.0.dtd", "keywords");
  private static final QName _Block_QNAME = new QName("http://www.itunes.com/dtds/podcast-1.0.dtd", "block");
  private static final QName _Image_QNAME = new QName("http://www.itunes.com/dtds/podcast-1.0.dtd", "image");
  private static final QName _Order_QNAME = new QName("http://www.itunes.com/dtds/podcast-1.0.dtd", "order");
  private static final QName _Explicit_QNAME = new QName("http://www.itunes.com/dtds/podcast-1.0.dtd", "explicit");
  private static final QName _Complete_QNAME = new QName("http://www.itunes.com/dtds/podcast-1.0.dtd", "complete");
  private static final QName _Author_QNAME = new QName("http://www.itunes.com/dtds/podcast-1.0.dtd", "author");
  private static final QName _Category_QNAME = new QName("http://www.itunes.com/dtds/podcast-1.0.dtd", "category");
  private static final QName _Duration_QNAME = new QName("http://www.itunes.com/dtds/podcast-1.0.dtd", "duration");
  private static final QName _Owner_QNAME = new QName("http://www.itunes.com/dtds/podcast-1.0.dtd", "owner");
  private static final QName _Subtitle_QNAME = new QName("http://www.itunes.com/dtds/podcast-1.0.dtd", "subtitle");
  private static final QName _NewFeedUrl_QNAME = new QName("http://www.itunes.com/dtds/podcast-1.0.dtd", "new-feed-url");
  private static final QName _RssItemGuid_QNAME = new QName("", "guid");
  private static final QName _RssItemAuthor_QNAME = new QName("", "author");
  private static final QName _RssItemPubDate_QNAME = new QName("", "pubDate");
  private static final QName _RssItemCategory_QNAME = new QName("", "category");
  private static final QName _RssItemTitle_QNAME = new QName("", "title");
  private static final QName _RssItemSource_QNAME = new QName("", "source");
  private static final QName _RssItemEnclosure_QNAME = new QName("", "enclosure");
  private static final QName _RssItemDescription_QNAME = new QName("", "description");
  private static final QName _RssItemLink_QNAME = new QName("", "link");
  private static final QName _RssItemComments_QNAME = new QName("", "comments");
  private static final QName _RssChannelDocs_QNAME = new QName("", "docs");
  private static final QName _RssChannelTextInput_QNAME = new QName("", "textInput");
  private static final QName _RssChannelImage_QNAME = new QName("", "image");
  private static final QName _RssChannelCopyright_QNAME = new QName("", "copyright");
  private static final QName _RssChannelTtl_QNAME = new QName("", "ttl");
  private static final QName _RssChannelSkipDays_QNAME = new QName("", "skipDays");
  private static final QName _RssChannelWebMaster_QNAME = new QName("", "webMaster");
  private static final QName _RssChannelManagingEditor_QNAME = new QName("", "managingEditor");
  private static final QName _RssChannelLastBuildDate_QNAME = new QName("", "lastBuildDate");
  private static final QName _RssChannelSkipHours_QNAME = new QName("", "skipHours");
  private static final QName _RssChannelCloud_QNAME = new QName("", "cloud");
  private static final QName _RssChannelGenerator_QNAME = new QName("", "generator");
  private static final QName _RssChannelRating_QNAME = new QName("", "rating");
  private static final QName _RssChannelLanguage_QNAME = new QName("", "language");

  public Source createSource()
  {
    return new Source();
  }

  public Category createCategory()
  {
    return new Category();
  }

  public Guid createGuid()
  {
    return new Guid();
  }

  public RssItem createRssItem()
  {
    return new RssItem();
  }

  public Enclosure createEnclosure()
  {
    return new Enclosure();
  }

  public TextInput createTextInput()
  {
    return new TextInput();
  }

  public RssChannel createRssChannel()
  {
    return new RssChannel();
  }

  public Image createImage()
  {
    return new Image();
  }

  public Rss createRss()
  {
    return new Rss();
  }

  public Cloud createCloud()
  {
    return new Cloud();
  }

  public SkipHoursList createSkipHoursList()
  {
    return new SkipHoursList();
  }

  public SkipDaysList createSkipDaysList()
  {
    return new SkipDaysList();
  }

  @XmlElementDecl(namespace="http://www.itunes.com/dtds/podcast-1.0.dtd", name="isClosedCaptioned")
  public JAXBElement<String> createIsClosedCaptioned(String value)
  {
    return new JAXBElement(_IsClosedCaptioned_QNAME, String.class, null, value);
  }

  @XmlElementDecl(namespace="http://www.itunes.com/dtds/podcast-1.0.dtd", name="summary")
  public JAXBElement<String> createSummary(String value)
  {
    return new JAXBElement(_Summary_QNAME, String.class, null, value);
  }

  @XmlElementDecl(namespace="http://www.itunes.com/dtds/podcast-1.0.dtd", name="keywords")
  public JAXBElement<String> createKeywords(String value)
  {
    return new JAXBElement(_Keywords_QNAME, String.class, null, value);
  }

  @XmlElementDecl(namespace="http://www.itunes.com/dtds/podcast-1.0.dtd", name="block")
  public JAXBElement<String> createBlock(String value)
  {
    return new JAXBElement(_Block_QNAME, String.class, null, value);
  }

  @XmlElementDecl(namespace="http://www.itunes.com/dtds/podcast-1.0.dtd", name="image")
  public JAXBElement<String> createImage(String value)
  {
    return new JAXBElement(_Image_QNAME, String.class, null, value);
  }

  @XmlElementDecl(namespace="http://www.itunes.com/dtds/podcast-1.0.dtd", name="order")
  public JAXBElement<String> createOrder(String value)
  {
    return new JAXBElement(_Order_QNAME, String.class, null, value);
  }

  @XmlElementDecl(namespace="http://www.itunes.com/dtds/podcast-1.0.dtd", name="explicit")
  public JAXBElement<String> createExplicit(String value)
  {
    return new JAXBElement(_Explicit_QNAME, String.class, null, value);
  }

  @XmlElementDecl(namespace="http://www.itunes.com/dtds/podcast-1.0.dtd", name="complete")
  public JAXBElement<String> createComplete(String value)
  {
    return new JAXBElement(_Complete_QNAME, String.class, null, value);
  }

  @XmlElementDecl(namespace="http://www.itunes.com/dtds/podcast-1.0.dtd", name="author")
  public JAXBElement<String> createAuthor(String value)
  {
    return new JAXBElement(_Author_QNAME, String.class, null, value);
  }

  @XmlElementDecl(namespace="http://www.itunes.com/dtds/podcast-1.0.dtd", name="category")
  public JAXBElement<String> createCategory(String value)
  {
    return new JAXBElement(_Category_QNAME, String.class, null, value);
  }

  @XmlElementDecl(namespace="http://www.itunes.com/dtds/podcast-1.0.dtd", name="duration")
  public JAXBElement<String> createDuration(String value)
  {
    return new JAXBElement(_Duration_QNAME, String.class, null, value);
  }

  @XmlElementDecl(namespace="http://www.itunes.com/dtds/podcast-1.0.dtd", name="owner")
  public JAXBElement<String> createOwner(String value)
  {
    return new JAXBElement(_Owner_QNAME, String.class, null, value);
  }

  @XmlElementDecl(namespace="http://www.itunes.com/dtds/podcast-1.0.dtd", name="subtitle")
  public JAXBElement<String> createSubtitle(String value)
  {
    return new JAXBElement(_Subtitle_QNAME, String.class, null, value);
  }

  @XmlElementDecl(namespace="http://www.itunes.com/dtds/podcast-1.0.dtd", name="new-feed-url")
  public JAXBElement<String> createNewFeedUrl(String value)
  {
    return new JAXBElement(_NewFeedUrl_QNAME, String.class, null, value);
  }

  @XmlElementDecl(namespace="", name="guid", scope=RssItem.class)
  public JAXBElement<Guid> createRssItemGuid(Guid value)
  {
    return new JAXBElement(_RssItemGuid_QNAME, Guid.class, RssItem.class, value);
  }

  @XmlElementDecl(namespace="", name="author", scope=RssItem.class)
  public JAXBElement<String> createRssItemAuthor(String value)
  {
    return new JAXBElement(_RssItemAuthor_QNAME, String.class, RssItem.class, value);
  }

  @XmlElementDecl(namespace="", name="pubDate", scope=RssItem.class)
  public JAXBElement<String> createRssItemPubDate(String value)
  {
    return new JAXBElement(_RssItemPubDate_QNAME, String.class, RssItem.class, value);
  }

  @XmlElementDecl(namespace="", name="category", scope=RssItem.class)
  public JAXBElement<Category> createRssItemCategory(Category value)
  {
    return new JAXBElement(_RssItemCategory_QNAME, Category.class, RssItem.class, value);
  }

  @XmlElementDecl(namespace="", name="title", scope=RssItem.class)
  public JAXBElement<String> createRssItemTitle(String value)
  {
    return new JAXBElement(_RssItemTitle_QNAME, String.class, RssItem.class, value);
  }

  @XmlElementDecl(namespace="", name="source", scope=RssItem.class)
  public JAXBElement<Source> createRssItemSource(Source value)
  {
    return new JAXBElement(_RssItemSource_QNAME, Source.class, RssItem.class, value);
  }

  @XmlElementDecl(namespace="", name="enclosure", scope=RssItem.class)
  public JAXBElement<Enclosure> createRssItemEnclosure(Enclosure value)
  {
    return new JAXBElement(_RssItemEnclosure_QNAME, Enclosure.class, RssItem.class, value);
  }

  @XmlElementDecl(namespace="", name="description", scope=RssItem.class)
  public JAXBElement<String> createRssItemDescription(String value)
  {
    return new JAXBElement(_RssItemDescription_QNAME, String.class, RssItem.class, value);
  }

  @XmlElementDecl(namespace="", name="link", scope=RssItem.class)
  public JAXBElement<String> createRssItemLink(String value)
  {
    return new JAXBElement(_RssItemLink_QNAME, String.class, RssItem.class, value);
  }

  @XmlElementDecl(namespace="", name="comments", scope=RssItem.class)
  public JAXBElement<String> createRssItemComments(String value)
  {
    return new JAXBElement(_RssItemComments_QNAME, String.class, RssItem.class, value);
  }

  @XmlElementDecl(namespace="", name="pubDate", scope=RssChannel.class)
  public JAXBElement<String> createRssChannelPubDate(String value)
  {
    return new JAXBElement(_RssItemPubDate_QNAME, String.class, RssChannel.class, value);
  }

  @XmlElementDecl(namespace="", name="docs", scope=RssChannel.class)
  public JAXBElement<String> createRssChannelDocs(String value)
  {
    return new JAXBElement(_RssChannelDocs_QNAME, String.class, RssChannel.class, value);
  }

  @XmlElementDecl(namespace="", name="link", scope=RssChannel.class)
  public JAXBElement<String> createRssChannelLink(String value)
  {
    return new JAXBElement(_RssItemLink_QNAME, String.class, RssChannel.class, value);
  }

  @XmlElementDecl(namespace="", name="textInput", scope=RssChannel.class)
  public JAXBElement<TextInput> createRssChannelTextInput(TextInput value)
  {
    return new JAXBElement(_RssChannelTextInput_QNAME, TextInput.class, RssChannel.class, value);
  }

  @XmlElementDecl(namespace="", name="image", scope=RssChannel.class)
  public JAXBElement<Image> createRssChannelImage(Image value)
  {
    return new JAXBElement(_RssChannelImage_QNAME, Image.class, RssChannel.class, value);
  }

  @XmlElementDecl(namespace="", name="copyright", scope=RssChannel.class)
  public JAXBElement<String> createRssChannelCopyright(String value)
  {
    return new JAXBElement(_RssChannelCopyright_QNAME, String.class, RssChannel.class, value);
  }

  @XmlElementDecl(namespace="", name="ttl", scope=RssChannel.class)
  public JAXBElement<BigInteger> createRssChannelTtl(BigInteger value)
  {
    return new JAXBElement(_RssChannelTtl_QNAME, BigInteger.class, RssChannel.class, value);
  }

  @XmlElementDecl(namespace="", name="skipDays", scope=RssChannel.class)
  public JAXBElement<SkipDaysList> createRssChannelSkipDays(SkipDaysList value)
  {
    return new JAXBElement(_RssChannelSkipDays_QNAME, SkipDaysList.class, RssChannel.class, value);
  }

  @XmlElementDecl(namespace="", name="webMaster", scope=RssChannel.class)
  public JAXBElement<String> createRssChannelWebMaster(String value)
  {
    return new JAXBElement(_RssChannelWebMaster_QNAME, String.class, RssChannel.class, value);
  }

  @XmlElementDecl(namespace="", name="title", scope=RssChannel.class)
  public JAXBElement<String> createRssChannelTitle(String value)
  {
    return new JAXBElement(_RssItemTitle_QNAME, String.class, RssChannel.class, value);
  }

  @XmlElementDecl(namespace="", name="managingEditor", scope=RssChannel.class)
  public JAXBElement<String> createRssChannelManagingEditor(String value)
  {
    return new JAXBElement(_RssChannelManagingEditor_QNAME, String.class, RssChannel.class, value);
  }

  @XmlElementDecl(namespace="", name="category", scope=RssChannel.class)
  public JAXBElement<Category> createRssChannelCategory(Category value)
  {
    return new JAXBElement(_RssItemCategory_QNAME, Category.class, RssChannel.class, value);
  }

  @XmlElementDecl(namespace="", name="description", scope=RssChannel.class)
  public JAXBElement<String> createRssChannelDescription(String value)
  {
    return new JAXBElement(_RssItemDescription_QNAME, String.class, RssChannel.class, value);
  }

  @XmlElementDecl(namespace="", name="lastBuildDate", scope=RssChannel.class)
  public JAXBElement<String> createRssChannelLastBuildDate(String value)
  {
    return new JAXBElement(_RssChannelLastBuildDate_QNAME, String.class, RssChannel.class, value);
  }

  @XmlElementDecl(namespace="", name="skipHours", scope=RssChannel.class)
  public JAXBElement<SkipHoursList> createRssChannelSkipHours(SkipHoursList value)
  {
    return new JAXBElement(_RssChannelSkipHours_QNAME, SkipHoursList.class, RssChannel.class, value);
  }

  @XmlElementDecl(namespace="", name="cloud", scope=RssChannel.class)
  public JAXBElement<Cloud> createRssChannelCloud(Cloud value)
  {
    return new JAXBElement(_RssChannelCloud_QNAME, Cloud.class, RssChannel.class, value);
  }

  @XmlElementDecl(namespace="", name="generator", scope=RssChannel.class)
  public JAXBElement<String> createRssChannelGenerator(String value)
  {
    return new JAXBElement(_RssChannelGenerator_QNAME, String.class, RssChannel.class, value);
  }

  @XmlElementDecl(namespace="", name="rating", scope=RssChannel.class)
  public JAXBElement<String> createRssChannelRating(String value)
  {
    return new JAXBElement(_RssChannelRating_QNAME, String.class, RssChannel.class, value);
  }

  @XmlElementDecl(namespace="", name="language", scope=RssChannel.class)
  @XmlJavaTypeAdapter(CollapsedStringAdapter.class)
  public JAXBElement<String> createRssChannelLanguage(String value)
  {
    return new JAXBElement(_RssChannelLanguage_QNAME, String.class, RssChannel.class, value);
  }
}