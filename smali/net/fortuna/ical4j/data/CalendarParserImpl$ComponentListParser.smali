.class Lnet/fortuna/ical4j/data/CalendarParserImpl$ComponentListParser;
.super Ljava/lang/Object;
.source "CalendarParserImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/fortuna/ical4j/data/CalendarParserImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ComponentListParser"
.end annotation


# instance fields
.field final synthetic this$0:Lnet/fortuna/ical4j/data/CalendarParserImpl;


# direct methods
.method private constructor <init>(Lnet/fortuna/ical4j/data/CalendarParserImpl;)V
    .locals 0

    .prologue
    .line 352
    iput-object p1, p0, Lnet/fortuna/ical4j/data/CalendarParserImpl$ComponentListParser;->this$0:Lnet/fortuna/ical4j/data/CalendarParserImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lnet/fortuna/ical4j/data/CalendarParserImpl;Lnet/fortuna/ical4j/data/CalendarParserImpl$1;)V
    .locals 0

    .prologue
    .line 352
    invoke-direct {p0, p1}, Lnet/fortuna/ical4j/data/CalendarParserImpl$ComponentListParser;-><init>(Lnet/fortuna/ical4j/data/CalendarParserImpl;)V

    return-void
.end method

.method static synthetic access$600(Lnet/fortuna/ical4j/data/CalendarParserImpl$ComponentListParser;Ljava/io/StreamTokenizer;Ljava/io/Reader;Lnet/fortuna/ical4j/data/ContentHandler;)V
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
    .line 352
    invoke-direct {p0, p1, p2, p3}, Lnet/fortuna/ical4j/data/CalendarParserImpl$ComponentListParser;->parse(Ljava/io/StreamTokenizer;Ljava/io/Reader;Lnet/fortuna/ical4j/data/ContentHandler;)V

    return-void
.end method

.method private parse(Ljava/io/StreamTokenizer;Ljava/io/Reader;Lnet/fortuna/ical4j/data/ContentHandler;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/text/ParseException;,
            Ljava/net/URISyntaxException;,
            Lnet/fortuna/ical4j/data/ParserException;
        }
    .end annotation

    .prologue
    .line 358
    :goto_0
    const-string v0, "BEGIN"

    iget-object v1, p1, Ljava/io/StreamTokenizer;->sval:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 359
    iget-object v0, p0, Lnet/fortuna/ical4j/data/CalendarParserImpl$ComponentListParser;->this$0:Lnet/fortuna/ical4j/data/CalendarParserImpl;

    # getter for: Lnet/fortuna/ical4j/data/CalendarParserImpl;->componentParser:Lnet/fortuna/ical4j/data/CalendarParserImpl$ComponentParser;
    invoke-static {v0}, Lnet/fortuna/ical4j/data/CalendarParserImpl;->access$800(Lnet/fortuna/ical4j/data/CalendarParserImpl;)Lnet/fortuna/ical4j/data/CalendarParserImpl$ComponentParser;

    move-result-object v0

    # invokes: Lnet/fortuna/ical4j/data/CalendarParserImpl$ComponentParser;->parse(Ljava/io/StreamTokenizer;Ljava/io/Reader;Lnet/fortuna/ical4j/data/ContentHandler;)V
    invoke-static {v0, p1, p2, p3}, Lnet/fortuna/ical4j/data/CalendarParserImpl$ComponentParser;->access$900(Lnet/fortuna/ical4j/data/CalendarParserImpl$ComponentParser;Ljava/io/StreamTokenizer;Ljava/io/Reader;Lnet/fortuna/ical4j/data/ContentHandler;)V

    .line 360
    iget-object v0, p0, Lnet/fortuna/ical4j/data/CalendarParserImpl$ComponentListParser;->this$0:Lnet/fortuna/ical4j/data/CalendarParserImpl;

    # invokes: Lnet/fortuna/ical4j/data/CalendarParserImpl;->absorbWhitespace(Ljava/io/StreamTokenizer;Ljava/io/Reader;)V
    invoke-static {v0, p1, p2}, Lnet/fortuna/ical4j/data/CalendarParserImpl;->access$1200(Lnet/fortuna/ical4j/data/CalendarParserImpl;Ljava/io/StreamTokenizer;Ljava/io/Reader;)V

    goto :goto_0

    .line 363
    :cond_0
    return-void
.end method
