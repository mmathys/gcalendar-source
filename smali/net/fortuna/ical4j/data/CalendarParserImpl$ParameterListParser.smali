.class Lnet/fortuna/ical4j/data/CalendarParserImpl$ParameterListParser;
.super Ljava/lang/Object;
.source "CalendarParserImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/fortuna/ical4j/data/CalendarParserImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ParameterListParser"
.end annotation


# instance fields
.field final synthetic this$0:Lnet/fortuna/ical4j/data/CalendarParserImpl;


# direct methods
.method private constructor <init>(Lnet/fortuna/ical4j/data/CalendarParserImpl;)V
    .locals 0

    .prologue
    .line 270
    iput-object p1, p0, Lnet/fortuna/ical4j/data/CalendarParserImpl$ParameterListParser;->this$0:Lnet/fortuna/ical4j/data/CalendarParserImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lnet/fortuna/ical4j/data/CalendarParserImpl;Lnet/fortuna/ical4j/data/CalendarParserImpl$1;)V
    .locals 0

    .prologue
    .line 270
    invoke-direct {p0, p1}, Lnet/fortuna/ical4j/data/CalendarParserImpl$ParameterListParser;-><init>(Lnet/fortuna/ical4j/data/CalendarParserImpl;)V

    return-void
.end method


# virtual methods
.method public parse(Ljava/io/StreamTokenizer;Ljava/io/Reader;Lnet/fortuna/ical4j/data/ContentHandler;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lnet/fortuna/ical4j/data/ParserException;,
            Ljava/net/URISyntaxException;
        }
    .end annotation

    .prologue
    .line 276
    :goto_0
    iget-object v0, p0, Lnet/fortuna/ical4j/data/CalendarParserImpl$ParameterListParser;->this$0:Lnet/fortuna/ical4j/data/CalendarParserImpl;

    # invokes: Lnet/fortuna/ical4j/data/CalendarParserImpl;->nextToken(Ljava/io/StreamTokenizer;Ljava/io/Reader;)I
    invoke-static {v0, p1, p2}, Lnet/fortuna/ical4j/data/CalendarParserImpl;->access$1500(Lnet/fortuna/ical4j/data/CalendarParserImpl;Ljava/io/StreamTokenizer;Ljava/io/Reader;)I

    move-result v0

    const/16 v1, 0x3b

    if-ne v0, v1, :cond_0

    .line 277
    iget-object v0, p0, Lnet/fortuna/ical4j/data/CalendarParserImpl$ParameterListParser;->this$0:Lnet/fortuna/ical4j/data/CalendarParserImpl;

    # getter for: Lnet/fortuna/ical4j/data/CalendarParserImpl;->paramParser:Lnet/fortuna/ical4j/data/CalendarParserImpl$ParameterParser;
    invoke-static {v0}, Lnet/fortuna/ical4j/data/CalendarParserImpl;->access$1600(Lnet/fortuna/ical4j/data/CalendarParserImpl;)Lnet/fortuna/ical4j/data/CalendarParserImpl$ParameterParser;

    move-result-object v0

    # invokes: Lnet/fortuna/ical4j/data/CalendarParserImpl$ParameterParser;->parse(Ljava/io/StreamTokenizer;Ljava/io/Reader;Lnet/fortuna/ical4j/data/ContentHandler;)V
    invoke-static {v0, p1, p2, p3}, Lnet/fortuna/ical4j/data/CalendarParserImpl$ParameterParser;->access$1700(Lnet/fortuna/ical4j/data/CalendarParserImpl$ParameterParser;Ljava/io/StreamTokenizer;Ljava/io/Reader;Lnet/fortuna/ical4j/data/ContentHandler;)V

    goto :goto_0

    .line 279
    :cond_0
    return-void
.end method
