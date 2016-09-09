.class public Lnet/fortuna/ical4j/data/CalendarParserImpl;
.super Ljava/lang/Object;
.source "CalendarParserImpl.java"

# interfaces
.implements Lnet/fortuna/ical4j/data/CalendarParser;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/fortuna/ical4j/data/CalendarParserImpl$ComponentParser;,
        Lnet/fortuna/ical4j/data/CalendarParserImpl$ComponentListParser;,
        Lnet/fortuna/ical4j/data/CalendarParserImpl$ParameterParser;,
        Lnet/fortuna/ical4j/data/CalendarParserImpl$ParameterListParser;,
        Lnet/fortuna/ical4j/data/CalendarParserImpl$PropertyParser;,
        Lnet/fortuna/ical4j/data/CalendarParserImpl$PropertyListParser;
    }
.end annotation


# instance fields
.field private final componentListParser:Lnet/fortuna/ical4j/data/CalendarParserImpl$ComponentListParser;

.field private final componentParser:Lnet/fortuna/ical4j/data/CalendarParserImpl$ComponentParser;

.field private log:Lorg/apache/commons/logging/Log;

.field private final paramListParser:Lnet/fortuna/ical4j/data/CalendarParserImpl$ParameterListParser;

.field private final paramParser:Lnet/fortuna/ical4j/data/CalendarParserImpl$ParameterParser;

.field private final propertyListParser:Lnet/fortuna/ical4j/data/CalendarParserImpl$PropertyListParser;

.field private final propertyParser:Lnet/fortuna/ical4j/data/CalendarParserImpl$PropertyParser;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    const-class v0, Lnet/fortuna/ical4j/data/CalendarParserImpl;

    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    move-result-object v0

    iput-object v0, p0, Lnet/fortuna/ical4j/data/CalendarParserImpl;->log:Lorg/apache/commons/logging/Log;

    .line 73
    new-instance v0, Lnet/fortuna/ical4j/data/CalendarParserImpl$ComponentListParser;

    invoke-direct {v0, p0, v1}, Lnet/fortuna/ical4j/data/CalendarParserImpl$ComponentListParser;-><init>(Lnet/fortuna/ical4j/data/CalendarParserImpl;Lnet/fortuna/ical4j/data/CalendarParserImpl$1;)V

    iput-object v0, p0, Lnet/fortuna/ical4j/data/CalendarParserImpl;->componentListParser:Lnet/fortuna/ical4j/data/CalendarParserImpl$ComponentListParser;

    .line 75
    new-instance v0, Lnet/fortuna/ical4j/data/CalendarParserImpl$ComponentParser;

    invoke-direct {v0, p0, v1}, Lnet/fortuna/ical4j/data/CalendarParserImpl$ComponentParser;-><init>(Lnet/fortuna/ical4j/data/CalendarParserImpl;Lnet/fortuna/ical4j/data/CalendarParserImpl$1;)V

    iput-object v0, p0, Lnet/fortuna/ical4j/data/CalendarParserImpl;->componentParser:Lnet/fortuna/ical4j/data/CalendarParserImpl$ComponentParser;

    .line 77
    new-instance v0, Lnet/fortuna/ical4j/data/CalendarParserImpl$PropertyListParser;

    invoke-direct {v0, p0, v1}, Lnet/fortuna/ical4j/data/CalendarParserImpl$PropertyListParser;-><init>(Lnet/fortuna/ical4j/data/CalendarParserImpl;Lnet/fortuna/ical4j/data/CalendarParserImpl$1;)V

    iput-object v0, p0, Lnet/fortuna/ical4j/data/CalendarParserImpl;->propertyListParser:Lnet/fortuna/ical4j/data/CalendarParserImpl$PropertyListParser;

    .line 79
    new-instance v0, Lnet/fortuna/ical4j/data/CalendarParserImpl$PropertyParser;

    invoke-direct {v0, p0, v1}, Lnet/fortuna/ical4j/data/CalendarParserImpl$PropertyParser;-><init>(Lnet/fortuna/ical4j/data/CalendarParserImpl;Lnet/fortuna/ical4j/data/CalendarParserImpl$1;)V

    iput-object v0, p0, Lnet/fortuna/ical4j/data/CalendarParserImpl;->propertyParser:Lnet/fortuna/ical4j/data/CalendarParserImpl$PropertyParser;

    .line 81
    new-instance v0, Lnet/fortuna/ical4j/data/CalendarParserImpl$ParameterListParser;

    invoke-direct {v0, p0, v1}, Lnet/fortuna/ical4j/data/CalendarParserImpl$ParameterListParser;-><init>(Lnet/fortuna/ical4j/data/CalendarParserImpl;Lnet/fortuna/ical4j/data/CalendarParserImpl$1;)V

    iput-object v0, p0, Lnet/fortuna/ical4j/data/CalendarParserImpl;->paramListParser:Lnet/fortuna/ical4j/data/CalendarParserImpl$ParameterListParser;

    .line 83
    new-instance v0, Lnet/fortuna/ical4j/data/CalendarParserImpl$ParameterParser;

    invoke-direct {v0, p0, v1}, Lnet/fortuna/ical4j/data/CalendarParserImpl$ParameterParser;-><init>(Lnet/fortuna/ical4j/data/CalendarParserImpl;Lnet/fortuna/ical4j/data/CalendarParserImpl$1;)V

    iput-object v0, p0, Lnet/fortuna/ical4j/data/CalendarParserImpl;->paramParser:Lnet/fortuna/ical4j/data/CalendarParserImpl$ParameterParser;

    return-void
.end method

.method private absorbWhitespace(Ljava/io/StreamTokenizer;Ljava/io/Reader;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lnet/fortuna/ical4j/data/ParserException;
        }
    .end annotation

    .prologue
    .line 488
    :cond_0
    :goto_0
    invoke-direct {p0, p1, p2}, Lnet/fortuna/ical4j/data/CalendarParserImpl;->nextToken(Ljava/io/StreamTokenizer;Ljava/io/Reader;)I

    move-result v0

    const/16 v1, 0xa

    if-ne v0, v1, :cond_1

    .line 489
    iget-object v0, p0, Lnet/fortuna/ical4j/data/CalendarParserImpl;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v0}, Lorg/apache/commons/logging/Log;->isTraceEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 490
    iget-object v0, p0, Lnet/fortuna/ical4j/data/CalendarParserImpl;->log:Lorg/apache/commons/logging/Log;

    const-string v1, "Absorbing extra whitespace.."

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->trace(Ljava/lang/Object;)V

    goto :goto_0

    .line 493
    :cond_1
    iget-object v0, p0, Lnet/fortuna/ical4j/data/CalendarParserImpl;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v0}, Lorg/apache/commons/logging/Log;->isTraceEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 494
    iget-object v0, p0, Lnet/fortuna/ical4j/data/CalendarParserImpl;->log:Lorg/apache/commons/logging/Log;

    const-string v1, "Aborting: absorbing extra whitespace complete"

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->trace(Ljava/lang/Object;)V

    .line 496
    :cond_2
    return-void
.end method

.method static synthetic access$1000(Lnet/fortuna/ical4j/data/CalendarParserImpl;)Lnet/fortuna/ical4j/data/CalendarParserImpl$PropertyParser;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lnet/fortuna/ical4j/data/CalendarParserImpl;->propertyParser:Lnet/fortuna/ical4j/data/CalendarParserImpl$PropertyParser;

    return-object v0
.end method

.method static synthetic access$1200(Lnet/fortuna/ical4j/data/CalendarParserImpl;Ljava/io/StreamTokenizer;Ljava/io/Reader;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lnet/fortuna/ical4j/data/ParserException;
        }
    .end annotation

    .prologue
    .line 59
    invoke-direct {p0, p1, p2}, Lnet/fortuna/ical4j/data/CalendarParserImpl;->absorbWhitespace(Ljava/io/StreamTokenizer;Ljava/io/Reader;)V

    return-void
.end method

.method static synthetic access$1300(Lnet/fortuna/ical4j/data/CalendarParserImpl;)Lorg/apache/commons/logging/Log;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lnet/fortuna/ical4j/data/CalendarParserImpl;->log:Lorg/apache/commons/logging/Log;

    return-object v0
.end method

.method static synthetic access$1400(Lnet/fortuna/ical4j/data/CalendarParserImpl;)Lnet/fortuna/ical4j/data/CalendarParserImpl$ParameterListParser;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lnet/fortuna/ical4j/data/CalendarParserImpl;->paramListParser:Lnet/fortuna/ical4j/data/CalendarParserImpl$ParameterListParser;

    return-object v0
.end method

.method static synthetic access$1500(Lnet/fortuna/ical4j/data/CalendarParserImpl;Ljava/io/StreamTokenizer;Ljava/io/Reader;)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lnet/fortuna/ical4j/data/ParserException;
        }
    .end annotation

    .prologue
    .line 59
    invoke-direct {p0, p1, p2}, Lnet/fortuna/ical4j/data/CalendarParserImpl;->nextToken(Ljava/io/StreamTokenizer;Ljava/io/Reader;)I

    move-result v0

    return v0
.end method

.method static synthetic access$1600(Lnet/fortuna/ical4j/data/CalendarParserImpl;)Lnet/fortuna/ical4j/data/CalendarParserImpl$ParameterParser;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lnet/fortuna/ical4j/data/CalendarParserImpl;->paramParser:Lnet/fortuna/ical4j/data/CalendarParserImpl$ParameterParser;

    return-object v0
.end method

.method static synthetic access$1800(Lnet/fortuna/ical4j/data/CalendarParserImpl;Ljava/io/StreamTokenizer;Ljava/io/Reader;)I
    .locals 1

    .prologue
    .line 59
    invoke-direct {p0, p1, p2}, Lnet/fortuna/ical4j/data/CalendarParserImpl;->getLineNumber(Ljava/io/StreamTokenizer;Ljava/io/Reader;)I

    move-result v0

    return v0
.end method

.method static synthetic access$1900(Lnet/fortuna/ical4j/data/CalendarParserImpl;)Lnet/fortuna/ical4j/data/CalendarParserImpl$PropertyListParser;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lnet/fortuna/ical4j/data/CalendarParserImpl;->propertyListParser:Lnet/fortuna/ical4j/data/CalendarParserImpl$PropertyListParser;

    return-object v0
.end method

.method static synthetic access$2000(Lnet/fortuna/ical4j/data/CalendarParserImpl;Ljava/io/StreamTokenizer;Ljava/io/Reader;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lnet/fortuna/ical4j/data/ParserException;
        }
    .end annotation

    .prologue
    .line 59
    invoke-direct {p0, p1, p2, p3}, Lnet/fortuna/ical4j/data/CalendarParserImpl;->assertToken(Ljava/io/StreamTokenizer;Ljava/io/Reader;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$700(Lnet/fortuna/ical4j/data/CalendarParserImpl;Ljava/io/StreamTokenizer;Ljava/io/Reader;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lnet/fortuna/ical4j/data/ParserException;
        }
    .end annotation

    .prologue
    .line 59
    invoke-direct {p0, p1, p2, p3}, Lnet/fortuna/ical4j/data/CalendarParserImpl;->assertToken(Ljava/io/StreamTokenizer;Ljava/io/Reader;I)V

    return-void
.end method

.method static synthetic access$800(Lnet/fortuna/ical4j/data/CalendarParserImpl;)Lnet/fortuna/ical4j/data/CalendarParserImpl$ComponentParser;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lnet/fortuna/ical4j/data/CalendarParserImpl;->componentParser:Lnet/fortuna/ical4j/data/CalendarParserImpl$ComponentParser;

    return-object v0
.end method

.method private assertToken(Ljava/io/StreamTokenizer;Ljava/io/Reader;I)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lnet/fortuna/ical4j/data/ParserException;
        }
    .end annotation

    .prologue
    .line 426
    invoke-direct {p0, p1, p2}, Lnet/fortuna/ical4j/data/CalendarParserImpl;->nextToken(Ljava/io/StreamTokenizer;Ljava/io/Reader;)I

    move-result v0

    if-eq v0, p3, :cond_0

    .line 427
    new-instance v0, Lnet/fortuna/ical4j/data/ParserException;

    const-string v1, "Expected [{0}], read [{1}]"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p3}, Ljava/lang/Integer;-><init>(I)V

    aput-object v4, v2, v3

    const/4 v3, 0x1

    new-instance v4, Ljava/lang/Integer;

    iget v5, p1, Ljava/io/StreamTokenizer;->ttype:I

    invoke-direct {v4, v5}, Ljava/lang/Integer;-><init>(I)V

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 429
    invoke-direct {p0, p1, p2}, Lnet/fortuna/ical4j/data/CalendarParserImpl;->getLineNumber(Ljava/io/StreamTokenizer;Ljava/io/Reader;)I

    move-result v2

    invoke-direct {v0, v1, v2}, Lnet/fortuna/ical4j/data/ParserException;-><init>(Ljava/lang/String;I)V

    throw v0

    .line 432
    :cond_0
    iget-object v0, p0, Lnet/fortuna/ical4j/data/CalendarParserImpl;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v0}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 433
    iget-object v0, p0, Lnet/fortuna/ical4j/data/CalendarParserImpl;->log:Lorg/apache/commons/logging/Log;

    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0xd

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 435
    :cond_1
    return-void
.end method

.method private assertToken(Ljava/io/StreamTokenizer;Ljava/io/Reader;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lnet/fortuna/ical4j/data/ParserException;
        }
    .end annotation

    .prologue
    .line 446
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lnet/fortuna/ical4j/data/CalendarParserImpl;->assertToken(Ljava/io/StreamTokenizer;Ljava/io/Reader;Ljava/lang/String;Z)V

    .line 447
    return-void
.end method

.method private assertToken(Ljava/io/StreamTokenizer;Ljava/io/Reader;Ljava/lang/String;Z)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lnet/fortuna/ical4j/data/ParserException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 461
    const/4 v0, -0x3

    invoke-direct {p0, p1, p2, v0}, Lnet/fortuna/ical4j/data/CalendarParserImpl;->assertToken(Ljava/io/StreamTokenizer;Ljava/io/Reader;I)V

    .line 463
    if-eqz p4, :cond_0

    .line 464
    iget-object v0, p1, Ljava/io/StreamTokenizer;->sval:Ljava/lang/String;

    invoke-virtual {p3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 465
    new-instance v0, Lnet/fortuna/ical4j/data/ParserException;

    const-string v1, "Expected [{0}], read [{1}]"

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p3, v2, v3

    iget-object v3, p1, Ljava/io/StreamTokenizer;->sval:Ljava/lang/String;

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 467
    invoke-direct {p0, p1, p2}, Lnet/fortuna/ical4j/data/CalendarParserImpl;->getLineNumber(Ljava/io/StreamTokenizer;Ljava/io/Reader;)I

    move-result v2

    invoke-direct {v0, v1, v2}, Lnet/fortuna/ical4j/data/ParserException;-><init>(Ljava/lang/String;I)V

    throw v0

    .line 470
    :cond_0
    iget-object v0, p1, Ljava/io/StreamTokenizer;->sval:Ljava/lang/String;

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 471
    new-instance v0, Lnet/fortuna/ical4j/data/ParserException;

    const-string v1, "Expected [{0}], read [{1}]"

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p3, v2, v3

    iget-object v3, p1, Ljava/io/StreamTokenizer;->sval:Ljava/lang/String;

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 473
    invoke-direct {p0, p1, p2}, Lnet/fortuna/ical4j/data/CalendarParserImpl;->getLineNumber(Ljava/io/StreamTokenizer;Ljava/io/Reader;)I

    move-result v2

    invoke-direct {v0, v1, v2}, Lnet/fortuna/ical4j/data/ParserException;-><init>(Ljava/lang/String;I)V

    throw v0

    .line 476
    :cond_1
    iget-object v0, p0, Lnet/fortuna/ical4j/data/CalendarParserImpl;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v0}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 477
    iget-object v0, p0, Lnet/fortuna/ical4j/data/CalendarParserImpl;->log:Lorg/apache/commons/logging/Log;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 479
    :cond_2
    return-void
.end method

.method private getLineNumber(Ljava/io/StreamTokenizer;Ljava/io/Reader;)I
    .locals 3

    .prologue
    .line 504
    invoke-virtual {p1}, Ljava/io/StreamTokenizer;->lineno()I

    move-result v0

    .line 505
    iget v1, p1, Ljava/io/StreamTokenizer;->ttype:I

    const/16 v2, 0xa

    if-ne v1, v2, :cond_0

    .line 506
    add-int/lit8 v0, v0, -0x1

    .line 508
    :cond_0
    instance-of v1, p2, Lnet/fortuna/ical4j/data/UnfoldingReader;

    if-eqz v1, :cond_1

    .line 510
    check-cast p2, Lnet/fortuna/ical4j/data/UnfoldingReader;

    invoke-virtual {p2}, Lnet/fortuna/ical4j/data/UnfoldingReader;->getLinesUnfolded()I

    move-result v1

    .line 511
    add-int/2addr v0, v1

    .line 513
    :cond_1
    return v0
.end method

.method private nextToken(Ljava/io/StreamTokenizer;Ljava/io/Reader;)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lnet/fortuna/ical4j/data/ParserException;
        }
    .end annotation

    .prologue
    .line 525
    invoke-virtual {p1}, Ljava/io/StreamTokenizer;->nextToken()I

    move-result v0

    .line 526
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 527
    new-instance v0, Lnet/fortuna/ical4j/data/ParserException;

    const-string v1, "Unexpected end of file"

    invoke-direct {p0, p1, p2}, Lnet/fortuna/ical4j/data/CalendarParserImpl;->getLineNumber(Ljava/io/StreamTokenizer;Ljava/io/Reader;)I

    move-result v2

    invoke-direct {v0, v1, v2}, Lnet/fortuna/ical4j/data/ParserException;-><init>(Ljava/lang/String;I)V

    throw v0

    .line 529
    :cond_0
    return v0
.end method


# virtual methods
.method public final parse(Ljava/io/Reader;Lnet/fortuna/ical4j/data/ContentHandler;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lnet/fortuna/ical4j/data/ParserException;
        }
    .end annotation

    .prologue
    .line 99
    new-instance v1, Ljava/io/StreamTokenizer;

    invoke-direct {v1, p1}, Ljava/io/StreamTokenizer;-><init>(Ljava/io/Reader;)V

    .line 101
    :try_start_0
    invoke-virtual {v1}, Ljava/io/StreamTokenizer;->resetSyntax()V

    .line 102
    const/16 v0, 0x20

    const/16 v2, 0xff

    invoke-virtual {v1, v0, v2}, Ljava/io/StreamTokenizer;->wordChars(II)V

    .line 103
    const/4 v0, 0x0

    const/16 v2, 0x14

    invoke-virtual {v1, v0, v2}, Ljava/io/StreamTokenizer;->whitespaceChars(II)V

    .line 105
    const/16 v0, 0x3a

    invoke-virtual {v1, v0}, Ljava/io/StreamTokenizer;->ordinaryChar(I)V

    .line 106
    const/16 v0, 0x3b

    invoke-virtual {v1, v0}, Ljava/io/StreamTokenizer;->ordinaryChar(I)V

    .line 107
    const/16 v0, 0x3d

    invoke-virtual {v1, v0}, Ljava/io/StreamTokenizer;->ordinaryChar(I)V

    .line 108
    const/16 v0, 0x9

    invoke-virtual {v1, v0}, Ljava/io/StreamTokenizer;->ordinaryChar(I)V

    .line 109
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Ljava/io/StreamTokenizer;->eolIsSignificant(Z)V

    .line 110
    const/4 v0, 0x0

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Ljava/io/StreamTokenizer;->whitespaceChars(II)V

    .line 111
    const/16 v0, 0x22

    invoke-virtual {v1, v0}, Ljava/io/StreamTokenizer;->quoteChar(I)V

    .line 114
    const-string v0, "BEGIN"

    invoke-direct {p0, v1, p1, v0}, Lnet/fortuna/ical4j/data/CalendarParserImpl;->assertToken(Ljava/io/StreamTokenizer;Ljava/io/Reader;Ljava/lang/String;)V

    .line 116
    const/16 v0, 0x3a

    invoke-direct {p0, v1, p1, v0}, Lnet/fortuna/ical4j/data/CalendarParserImpl;->assertToken(Ljava/io/StreamTokenizer;Ljava/io/Reader;I)V

    .line 118
    const-string v0, "VCALENDAR"

    const/4 v2, 0x1

    invoke-direct {p0, v1, p1, v0, v2}, Lnet/fortuna/ical4j/data/CalendarParserImpl;->assertToken(Ljava/io/StreamTokenizer;Ljava/io/Reader;Ljava/lang/String;Z)V

    .line 120
    const/16 v0, 0xa

    invoke-direct {p0, v1, p1, v0}, Lnet/fortuna/ical4j/data/CalendarParserImpl;->assertToken(Ljava/io/StreamTokenizer;Ljava/io/Reader;I)V

    .line 122
    invoke-interface {p2}, Lnet/fortuna/ical4j/data/ContentHandler;->startCalendar()V

    .line 125
    iget-object v0, p0, Lnet/fortuna/ical4j/data/CalendarParserImpl;->propertyListParser:Lnet/fortuna/ical4j/data/CalendarParserImpl$PropertyListParser;

    invoke-virtual {v0, v1, p1, p2}, Lnet/fortuna/ical4j/data/CalendarParserImpl$PropertyListParser;->parse(Ljava/io/StreamTokenizer;Ljava/io/Reader;Lnet/fortuna/ical4j/data/ContentHandler;)V

    .line 128
    iget-object v0, p0, Lnet/fortuna/ical4j/data/CalendarParserImpl;->componentListParser:Lnet/fortuna/ical4j/data/CalendarParserImpl$ComponentListParser;

    # invokes: Lnet/fortuna/ical4j/data/CalendarParserImpl$ComponentListParser;->parse(Ljava/io/StreamTokenizer;Ljava/io/Reader;Lnet/fortuna/ical4j/data/ContentHandler;)V
    invoke-static {v0, v1, p1, p2}, Lnet/fortuna/ical4j/data/CalendarParserImpl$ComponentListParser;->access$600(Lnet/fortuna/ical4j/data/CalendarParserImpl$ComponentListParser;Ljava/io/StreamTokenizer;Ljava/io/Reader;Lnet/fortuna/ical4j/data/ContentHandler;)V

    .line 133
    const/16 v0, 0x3a

    invoke-direct {p0, v1, p1, v0}, Lnet/fortuna/ical4j/data/CalendarParserImpl;->assertToken(Ljava/io/StreamTokenizer;Ljava/io/Reader;I)V

    .line 135
    const-string v0, "VCALENDAR"

    const/4 v2, 0x1

    invoke-direct {p0, v1, p1, v0, v2}, Lnet/fortuna/ical4j/data/CalendarParserImpl;->assertToken(Ljava/io/StreamTokenizer;Ljava/io/Reader;Ljava/lang/String;Z)V

    .line 137
    invoke-interface {p2}, Lnet/fortuna/ical4j/data/ContentHandler;->endCalendar()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 151
    return-void

    .line 139
    :catch_0
    move-exception v0

    .line 141
    instance-of v2, v0, Ljava/io/IOException;

    if-eqz v2, :cond_0

    .line 142
    check-cast v0, Ljava/io/IOException;

    throw v0

    .line 144
    :cond_0
    instance-of v2, v0, Lnet/fortuna/ical4j/data/ParserException;

    if-eqz v2, :cond_1

    .line 145
    check-cast v0, Lnet/fortuna/ical4j/data/ParserException;

    throw v0

    .line 148
    :cond_1
    new-instance v2, Lnet/fortuna/ical4j/data/ParserException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v1, p1}, Lnet/fortuna/ical4j/data/CalendarParserImpl;->getLineNumber(Ljava/io/StreamTokenizer;Ljava/io/Reader;)I

    move-result v1

    invoke-direct {v2, v3, v1, v0}, Lnet/fortuna/ical4j/data/ParserException;-><init>(Ljava/lang/String;ILjava/lang/Throwable;)V

    throw v2
.end method
