.class Lnet/fortuna/ical4j/data/CalendarParserImpl$ComponentParser;
.super Ljava/lang/Object;
.source "CalendarParserImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/fortuna/ical4j/data/CalendarParserImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ComponentParser"
.end annotation


# instance fields
.field final synthetic this$0:Lnet/fortuna/ical4j/data/CalendarParserImpl;


# direct methods
.method private constructor <init>(Lnet/fortuna/ical4j/data/CalendarParserImpl;)V
    .locals 0

    .prologue
    .line 374
    iput-object p1, p0, Lnet/fortuna/ical4j/data/CalendarParserImpl$ComponentParser;->this$0:Lnet/fortuna/ical4j/data/CalendarParserImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lnet/fortuna/ical4j/data/CalendarParserImpl;Lnet/fortuna/ical4j/data/CalendarParserImpl$1;)V
    .locals 0

    .prologue
    .line 374
    invoke-direct {p0, p1}, Lnet/fortuna/ical4j/data/CalendarParserImpl$ComponentParser;-><init>(Lnet/fortuna/ical4j/data/CalendarParserImpl;)V

    return-void
.end method

.method static synthetic access$900(Lnet/fortuna/ical4j/data/CalendarParserImpl$ComponentParser;Ljava/io/StreamTokenizer;Ljava/io/Reader;Lnet/fortuna/ical4j/data/ContentHandler;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/text/ParseException;,
            Ljava/net/URISyntaxException;,
            Lnet/fortuna/ical4j/data/ParserException;
        }
    .end annotation

    .prologue
    .line 374
    invoke-direct {p0, p1, p2, p3}, Lnet/fortuna/ical4j/data/CalendarParserImpl$ComponentParser;->parse(Ljava/io/StreamTokenizer;Ljava/io/Reader;Lnet/fortuna/ical4j/data/ContentHandler;)V

    return-void
.end method

.method private parse(Ljava/io/StreamTokenizer;Ljava/io/Reader;Lnet/fortuna/ical4j/data/ContentHandler;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/text/ParseException;,
            Ljava/net/URISyntaxException;,
            Lnet/fortuna/ical4j/data/ParserException;
        }
    .end annotation

    .prologue
    const/16 v3, 0x3a

    const/16 v2, 0xa

    .line 380
    iget-object v0, p0, Lnet/fortuna/ical4j/data/CalendarParserImpl$ComponentParser;->this$0:Lnet/fortuna/ical4j/data/CalendarParserImpl;

    # invokes: Lnet/fortuna/ical4j/data/CalendarParserImpl;->assertToken(Ljava/io/StreamTokenizer;Ljava/io/Reader;I)V
    invoke-static {v0, p1, p2, v3}, Lnet/fortuna/ical4j/data/CalendarParserImpl;->access$700(Lnet/fortuna/ical4j/data/CalendarParserImpl;Ljava/io/StreamTokenizer;Ljava/io/Reader;I)V

    .line 382
    iget-object v0, p0, Lnet/fortuna/ical4j/data/CalendarParserImpl$ComponentParser;->this$0:Lnet/fortuna/ical4j/data/CalendarParserImpl;

    const/4 v1, -0x3

    # invokes: Lnet/fortuna/ical4j/data/CalendarParserImpl;->assertToken(Ljava/io/StreamTokenizer;Ljava/io/Reader;I)V
    invoke-static {v0, p1, p2, v1}, Lnet/fortuna/ical4j/data/CalendarParserImpl;->access$700(Lnet/fortuna/ical4j/data/CalendarParserImpl;Ljava/io/StreamTokenizer;Ljava/io/Reader;I)V

    .line 384
    iget-object v0, p1, Ljava/io/StreamTokenizer;->sval:Ljava/lang/String;

    .line 386
    invoke-interface {p3, v0}, Lnet/fortuna/ical4j/data/ContentHandler;->startComponent(Ljava/lang/String;)V

    .line 388
    iget-object v1, p0, Lnet/fortuna/ical4j/data/CalendarParserImpl$ComponentParser;->this$0:Lnet/fortuna/ical4j/data/CalendarParserImpl;

    # invokes: Lnet/fortuna/ical4j/data/CalendarParserImpl;->assertToken(Ljava/io/StreamTokenizer;Ljava/io/Reader;I)V
    invoke-static {v1, p1, p2, v2}, Lnet/fortuna/ical4j/data/CalendarParserImpl;->access$700(Lnet/fortuna/ical4j/data/CalendarParserImpl;Ljava/io/StreamTokenizer;Ljava/io/Reader;I)V

    .line 390
    iget-object v1, p0, Lnet/fortuna/ical4j/data/CalendarParserImpl$ComponentParser;->this$0:Lnet/fortuna/ical4j/data/CalendarParserImpl;

    # getter for: Lnet/fortuna/ical4j/data/CalendarParserImpl;->propertyListParser:Lnet/fortuna/ical4j/data/CalendarParserImpl$PropertyListParser;
    invoke-static {v1}, Lnet/fortuna/ical4j/data/CalendarParserImpl;->access$1900(Lnet/fortuna/ical4j/data/CalendarParserImpl;)Lnet/fortuna/ical4j/data/CalendarParserImpl$PropertyListParser;

    move-result-object v1

    invoke-virtual {v1, p1, p2, p3}, Lnet/fortuna/ical4j/data/CalendarParserImpl$PropertyListParser;->parse(Ljava/io/StreamTokenizer;Ljava/io/Reader;Lnet/fortuna/ical4j/data/ContentHandler;)V

    .line 406
    iget-object v1, p0, Lnet/fortuna/ical4j/data/CalendarParserImpl$ComponentParser;->this$0:Lnet/fortuna/ical4j/data/CalendarParserImpl;

    # invokes: Lnet/fortuna/ical4j/data/CalendarParserImpl;->assertToken(Ljava/io/StreamTokenizer;Ljava/io/Reader;I)V
    invoke-static {v1, p1, p2, v3}, Lnet/fortuna/ical4j/data/CalendarParserImpl;->access$700(Lnet/fortuna/ical4j/data/CalendarParserImpl;Ljava/io/StreamTokenizer;Ljava/io/Reader;I)V

    .line 408
    iget-object v1, p0, Lnet/fortuna/ical4j/data/CalendarParserImpl$ComponentParser;->this$0:Lnet/fortuna/ical4j/data/CalendarParserImpl;

    # invokes: Lnet/fortuna/ical4j/data/CalendarParserImpl;->assertToken(Ljava/io/StreamTokenizer;Ljava/io/Reader;Ljava/lang/String;)V
    invoke-static {v1, p1, p2, v0}, Lnet/fortuna/ical4j/data/CalendarParserImpl;->access$2000(Lnet/fortuna/ical4j/data/CalendarParserImpl;Ljava/io/StreamTokenizer;Ljava/io/Reader;Ljava/lang/String;)V

    .line 410
    iget-object v1, p0, Lnet/fortuna/ical4j/data/CalendarParserImpl$ComponentParser;->this$0:Lnet/fortuna/ical4j/data/CalendarParserImpl;

    # invokes: Lnet/fortuna/ical4j/data/CalendarParserImpl;->assertToken(Ljava/io/StreamTokenizer;Ljava/io/Reader;I)V
    invoke-static {v1, p1, p2, v2}, Lnet/fortuna/ical4j/data/CalendarParserImpl;->access$700(Lnet/fortuna/ical4j/data/CalendarParserImpl;Ljava/io/StreamTokenizer;Ljava/io/Reader;I)V

    .line 412
    invoke-interface {p3, v0}, Lnet/fortuna/ical4j/data/ContentHandler;->endComponent(Ljava/lang/String;)V

    .line 413
    return-void
.end method
