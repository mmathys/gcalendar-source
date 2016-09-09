.class Lnet/fortuna/ical4j/data/CalendarParserImpl$PropertyParser;
.super Ljava/lang/Object;
.source "CalendarParserImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/fortuna/ical4j/data/CalendarParserImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PropertyParser"
.end annotation


# instance fields
.field final synthetic this$0:Lnet/fortuna/ical4j/data/CalendarParserImpl;


# direct methods
.method private constructor <init>(Lnet/fortuna/ical4j/data/CalendarParserImpl;)V
    .locals 0

    .prologue
    .line 194
    iput-object p1, p0, Lnet/fortuna/ical4j/data/CalendarParserImpl$PropertyParser;->this$0:Lnet/fortuna/ical4j/data/CalendarParserImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lnet/fortuna/ical4j/data/CalendarParserImpl;Lnet/fortuna/ical4j/data/CalendarParserImpl$1;)V
    .locals 0

    .prologue
    .line 194
    invoke-direct {p0, p1}, Lnet/fortuna/ical4j/data/CalendarParserImpl$PropertyParser;-><init>(Lnet/fortuna/ical4j/data/CalendarParserImpl;)V

    return-void
.end method

.method static synthetic access$1100(Lnet/fortuna/ical4j/data/CalendarParserImpl$PropertyParser;Ljava/io/StreamTokenizer;Ljava/io/Reader;Lnet/fortuna/ical4j/data/ContentHandler;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lnet/fortuna/ical4j/data/ParserException;,
            Ljava/net/URISyntaxException;,
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    .line 194
    invoke-direct {p0, p1, p2, p3}, Lnet/fortuna/ical4j/data/CalendarParserImpl$PropertyParser;->parse(Ljava/io/StreamTokenizer;Ljava/io/Reader;Lnet/fortuna/ical4j/data/ContentHandler;)V

    return-void
.end method

.method private parse(Ljava/io/StreamTokenizer;Ljava/io/Reader;Lnet/fortuna/ical4j/data/ContentHandler;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lnet/fortuna/ical4j/data/ParserException;,
            Ljava/net/URISyntaxException;,
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    const/16 v5, 0x22

    .line 204
    iget-object v1, p1, Ljava/io/StreamTokenizer;->sval:Ljava/lang/String;

    .line 207
    iget-object v0, p0, Lnet/fortuna/ical4j/data/CalendarParserImpl$PropertyParser;->this$0:Lnet/fortuna/ical4j/data/CalendarParserImpl;

    # getter for: Lnet/fortuna/ical4j/data/CalendarParserImpl;->log:Lorg/apache/commons/logging/Log;
    invoke-static {v0}, Lnet/fortuna/ical4j/data/CalendarParserImpl;->access$1300(Lnet/fortuna/ical4j/data/CalendarParserImpl;)Lorg/apache/commons/logging/Log;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 208
    iget-object v0, p0, Lnet/fortuna/ical4j/data/CalendarParserImpl$PropertyParser;->this$0:Lnet/fortuna/ical4j/data/CalendarParserImpl;

    # getter for: Lnet/fortuna/ical4j/data/CalendarParserImpl;->log:Lorg/apache/commons/logging/Log;
    invoke-static {v0}, Lnet/fortuna/ical4j/data/CalendarParserImpl;->access$1300(Lnet/fortuna/ical4j/data/CalendarParserImpl;)Lorg/apache/commons/logging/Log;

    move-result-object v0

    const-string v2, "Property [{0}]"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    invoke-static {v2, v3}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 211
    :cond_0
    invoke-interface {p3, v1}, Lnet/fortuna/ical4j/data/ContentHandler;->startProperty(Ljava/lang/String;)V

    .line 213
    iget-object v0, p0, Lnet/fortuna/ical4j/data/CalendarParserImpl$PropertyParser;->this$0:Lnet/fortuna/ical4j/data/CalendarParserImpl;

    # getter for: Lnet/fortuna/ical4j/data/CalendarParserImpl;->paramListParser:Lnet/fortuna/ical4j/data/CalendarParserImpl$ParameterListParser;
    invoke-static {v0}, Lnet/fortuna/ical4j/data/CalendarParserImpl;->access$1400(Lnet/fortuna/ical4j/data/CalendarParserImpl;)Lnet/fortuna/ical4j/data/CalendarParserImpl$ParameterListParser;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lnet/fortuna/ical4j/data/CalendarParserImpl$ParameterListParser;->parse(Ljava/io/StreamTokenizer;Ljava/io/Reader;Lnet/fortuna/ical4j/data/ContentHandler;)V

    .line 222
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 230
    invoke-virtual {p1, v5}, Ljava/io/StreamTokenizer;->ordinaryChar(I)V

    .line 231
    iget-object v0, p0, Lnet/fortuna/ical4j/data/CalendarParserImpl$PropertyParser;->this$0:Lnet/fortuna/ical4j/data/CalendarParserImpl;

    # invokes: Lnet/fortuna/ical4j/data/CalendarParserImpl;->nextToken(Ljava/io/StreamTokenizer;Ljava/io/Reader;)I
    invoke-static {v0, p1, p2}, Lnet/fortuna/ical4j/data/CalendarParserImpl;->access$1500(Lnet/fortuna/ical4j/data/CalendarParserImpl;Ljava/io/StreamTokenizer;Ljava/io/Reader;)I

    move-result v0

    .line 233
    :goto_0
    const/16 v3, 0xa

    if-eq v0, v3, :cond_2

    .line 235
    iget v0, p1, Ljava/io/StreamTokenizer;->ttype:I

    const/4 v3, -0x3

    if-ne v0, v3, :cond_1

    .line 236
    iget-object v0, p1, Ljava/io/StreamTokenizer;->sval:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 242
    :goto_1
    iget-object v0, p0, Lnet/fortuna/ical4j/data/CalendarParserImpl$PropertyParser;->this$0:Lnet/fortuna/ical4j/data/CalendarParserImpl;

    # invokes: Lnet/fortuna/ical4j/data/CalendarParserImpl;->nextToken(Ljava/io/StreamTokenizer;Ljava/io/Reader;)I
    invoke-static {v0, p1, p2}, Lnet/fortuna/ical4j/data/CalendarParserImpl;->access$1500(Lnet/fortuna/ical4j/data/CalendarParserImpl;Ljava/io/StreamTokenizer;Ljava/io/Reader;)I

    move-result v0

    goto :goto_0

    .line 239
    :cond_1
    iget v0, p1, Ljava/io/StreamTokenizer;->ttype:I

    int-to-char v0, v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 246
    :cond_2
    invoke-virtual {p1, v5}, Ljava/io/StreamTokenizer;->quoteChar(I)V

    .line 249
    :try_start_0
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p3, v0}, Lnet/fortuna/ical4j/data/ContentHandler;->propertyValue(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 258
    invoke-interface {p3, v1}, Lnet/fortuna/ical4j/data/ContentHandler;->endProperty(Ljava/lang/String;)V

    .line 260
    return-void

    .line 251
    :catch_0
    move-exception v0

    .line 252
    new-instance v2, Ljava/text/ParseException;

    .line 253
    invoke-virtual {v0}, Ljava/text/ParseException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, 0x3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v5, v6

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v5, "["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "] "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/text/ParseException;->getErrorOffset()I

    move-result v3

    invoke-direct {v2, v1, v3}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    .line 254
    invoke-virtual {v2, v0}, Ljava/text/ParseException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 255
    throw v2
.end method
