.class Lnet/fortuna/ical4j/data/CalendarParserImpl$ParameterParser;
.super Ljava/lang/Object;
.source "CalendarParserImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/fortuna/ical4j/data/CalendarParserImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ParameterParser"
.end annotation


# instance fields
.field final synthetic this$0:Lnet/fortuna/ical4j/data/CalendarParserImpl;


# direct methods
.method private constructor <init>(Lnet/fortuna/ical4j/data/CalendarParserImpl;)V
    .locals 0

    .prologue
    .line 289
    iput-object p1, p0, Lnet/fortuna/ical4j/data/CalendarParserImpl$ParameterParser;->this$0:Lnet/fortuna/ical4j/data/CalendarParserImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lnet/fortuna/ical4j/data/CalendarParserImpl;Lnet/fortuna/ical4j/data/CalendarParserImpl$1;)V
    .locals 0

    .prologue
    .line 289
    invoke-direct {p0, p1}, Lnet/fortuna/ical4j/data/CalendarParserImpl$ParameterParser;-><init>(Lnet/fortuna/ical4j/data/CalendarParserImpl;)V

    return-void
.end method

.method static synthetic access$1700(Lnet/fortuna/ical4j/data/CalendarParserImpl$ParameterParser;Ljava/io/StreamTokenizer;Ljava/io/Reader;Lnet/fortuna/ical4j/data/ContentHandler;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lnet/fortuna/ical4j/data/ParserException;,
            Ljava/net/URISyntaxException;
        }
    .end annotation

    .prologue
    .line 289
    invoke-direct {p0, p1, p2, p3}, Lnet/fortuna/ical4j/data/CalendarParserImpl$ParameterParser;->parse(Ljava/io/StreamTokenizer;Ljava/io/Reader;Lnet/fortuna/ical4j/data/ContentHandler;)V

    return-void
.end method

.method private parse(Ljava/io/StreamTokenizer;Ljava/io/Reader;Lnet/fortuna/ical4j/data/ContentHandler;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lnet/fortuna/ical4j/data/ParserException;,
            Ljava/net/URISyntaxException;
        }
    .end annotation

    .prologue
    const/4 v5, -0x3

    const/16 v4, 0x22

    .line 295
    iget-object v0, p0, Lnet/fortuna/ical4j/data/CalendarParserImpl$ParameterParser;->this$0:Lnet/fortuna/ical4j/data/CalendarParserImpl;

    # invokes: Lnet/fortuna/ical4j/data/CalendarParserImpl;->assertToken(Ljava/io/StreamTokenizer;Ljava/io/Reader;I)V
    invoke-static {v0, p1, p2, v5}, Lnet/fortuna/ical4j/data/CalendarParserImpl;->access$700(Lnet/fortuna/ical4j/data/CalendarParserImpl;Ljava/io/StreamTokenizer;Ljava/io/Reader;I)V

    .line 297
    iget-object v1, p1, Ljava/io/StreamTokenizer;->sval:Ljava/lang/String;

    .line 300
    iget-object v0, p0, Lnet/fortuna/ical4j/data/CalendarParserImpl$ParameterParser;->this$0:Lnet/fortuna/ical4j/data/CalendarParserImpl;

    # getter for: Lnet/fortuna/ical4j/data/CalendarParserImpl;->log:Lorg/apache/commons/logging/Log;
    invoke-static {v0}, Lnet/fortuna/ical4j/data/CalendarParserImpl;->access$1300(Lnet/fortuna/ical4j/data/CalendarParserImpl;)Lorg/apache/commons/logging/Log;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 301
    iget-object v0, p0, Lnet/fortuna/ical4j/data/CalendarParserImpl$ParameterParser;->this$0:Lnet/fortuna/ical4j/data/CalendarParserImpl;

    # getter for: Lnet/fortuna/ical4j/data/CalendarParserImpl;->log:Lorg/apache/commons/logging/Log;
    invoke-static {v0}, Lnet/fortuna/ical4j/data/CalendarParserImpl;->access$1300(Lnet/fortuna/ical4j/data/CalendarParserImpl;)Lorg/apache/commons/logging/Log;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0xc

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Parameter ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 304
    :cond_0
    iget-object v0, p0, Lnet/fortuna/ical4j/data/CalendarParserImpl$ParameterParser;->this$0:Lnet/fortuna/ical4j/data/CalendarParserImpl;

    const/16 v2, 0x3d

    # invokes: Lnet/fortuna/ical4j/data/CalendarParserImpl;->assertToken(Ljava/io/StreamTokenizer;Ljava/io/Reader;I)V
    invoke-static {v0, p1, p2, v2}, Lnet/fortuna/ical4j/data/CalendarParserImpl;->access$700(Lnet/fortuna/ical4j/data/CalendarParserImpl;Ljava/io/StreamTokenizer;Ljava/io/Reader;I)V

    .line 306
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 309
    iget-object v0, p0, Lnet/fortuna/ical4j/data/CalendarParserImpl$ParameterParser;->this$0:Lnet/fortuna/ical4j/data/CalendarParserImpl;

    # invokes: Lnet/fortuna/ical4j/data/CalendarParserImpl;->nextToken(Ljava/io/StreamTokenizer;Ljava/io/Reader;)I
    invoke-static {v0, p1, p2}, Lnet/fortuna/ical4j/data/CalendarParserImpl;->access$1500(Lnet/fortuna/ical4j/data/CalendarParserImpl;Ljava/io/StreamTokenizer;Ljava/io/Reader;)I

    move-result v0

    if-ne v0, v4, :cond_2

    .line 310
    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 311
    iget-object v0, p1, Ljava/io/StreamTokenizer;->sval:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 312
    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 336
    :cond_1
    :goto_0
    :try_start_0
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p3, v1, v0}, Lnet/fortuna/ical4j/data/ContentHandler;->parameter(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 341
    return-void

    .line 314
    :cond_2
    iget-object v0, p1, Ljava/io/StreamTokenizer;->sval:Ljava/lang/String;

    if-eqz v0, :cond_5

    .line 315
    iget-object v0, p1, Ljava/io/StreamTokenizer;->sval:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 317
    iget-object v0, p0, Lnet/fortuna/ical4j/data/CalendarParserImpl$ParameterParser;->this$0:Lnet/fortuna/ical4j/data/CalendarParserImpl;

    # invokes: Lnet/fortuna/ical4j/data/CalendarParserImpl;->nextToken(Ljava/io/StreamTokenizer;Ljava/io/Reader;)I
    invoke-static {v0, p1, p2}, Lnet/fortuna/ical4j/data/CalendarParserImpl;->access$1500(Lnet/fortuna/ical4j/data/CalendarParserImpl;Ljava/io/StreamTokenizer;Ljava/io/Reader;)I

    move-result v0

    .line 319
    :goto_1
    const/16 v3, 0x3b

    if-eq v0, v3, :cond_4

    const/16 v3, 0x3a

    if-eq v0, v3, :cond_4

    const/16 v3, 0x2c

    if-eq v0, v3, :cond_4

    .line 321
    iget v0, p1, Ljava/io/StreamTokenizer;->ttype:I

    if-ne v0, v5, :cond_3

    .line 322
    iget-object v0, p1, Ljava/io/StreamTokenizer;->sval:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 328
    :goto_2
    iget-object v0, p0, Lnet/fortuna/ical4j/data/CalendarParserImpl$ParameterParser;->this$0:Lnet/fortuna/ical4j/data/CalendarParserImpl;

    # invokes: Lnet/fortuna/ical4j/data/CalendarParserImpl;->nextToken(Ljava/io/StreamTokenizer;Ljava/io/Reader;)I
    invoke-static {v0, p1, p2}, Lnet/fortuna/ical4j/data/CalendarParserImpl;->access$1500(Lnet/fortuna/ical4j/data/CalendarParserImpl;Ljava/io/StreamTokenizer;Ljava/io/Reader;)I

    move-result v0

    goto :goto_1

    .line 325
    :cond_3
    iget v0, p1, Ljava/io/StreamTokenizer;->ttype:I

    int-to-char v0, v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_2

    .line 330
    :cond_4
    invoke-virtual {p1}, Ljava/io/StreamTokenizer;->pushBack()V

    goto :goto_0

    .line 331
    :cond_5
    iget-object v0, p1, Ljava/io/StreamTokenizer;->sval:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 332
    invoke-virtual {p1}, Ljava/io/StreamTokenizer;->pushBack()V

    goto :goto_0

    .line 338
    :catch_0
    move-exception v0

    .line 339
    new-instance v1, Lnet/fortuna/ical4j/data/ParserException;

    const-string v2, "Error parsing parameter"

    iget-object v3, p0, Lnet/fortuna/ical4j/data/CalendarParserImpl$ParameterParser;->this$0:Lnet/fortuna/ical4j/data/CalendarParserImpl;

    # invokes: Lnet/fortuna/ical4j/data/CalendarParserImpl;->getLineNumber(Ljava/io/StreamTokenizer;Ljava/io/Reader;)I
    invoke-static {v3, p1, p2}, Lnet/fortuna/ical4j/data/CalendarParserImpl;->access$1800(Lnet/fortuna/ical4j/data/CalendarParserImpl;Ljava/io/StreamTokenizer;Ljava/io/Reader;)I

    move-result v3

    invoke-direct {v1, v2, v3, v0}, Lnet/fortuna/ical4j/data/ParserException;-><init>(Ljava/lang/String;ILjava/lang/Throwable;)V

    throw v1
.end method
