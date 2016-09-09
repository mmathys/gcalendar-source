.class public Lnet/fortuna/ical4j/data/CalendarBuilder;
.super Ljava/lang/Object;
.source "CalendarBuilder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/fortuna/ical4j/data/CalendarBuilder$ContentHandlerImpl;
    }
.end annotation


# static fields
.field private static final DEFAULT_CHARSET:Ljava/nio/charset/Charset;


# instance fields
.field protected calendar:Lnet/fortuna/ical4j/model/Calendar;

.field protected component:Lnet/fortuna/ical4j/model/Component;

.field private final contentHandler:Lnet/fortuna/ical4j/data/ContentHandler;

.field private datesMissingTimezones:Ljava/util/List;

.field private final parser:Lnet/fortuna/ical4j/data/CalendarParser;

.field protected property:Lnet/fortuna/ical4j/model/Property;

.field protected subComponent:Lnet/fortuna/ical4j/model/Component;

.field private final tzRegistry:Lnet/fortuna/ical4j/model/TimeZoneRegistry;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 88
    const-string v0, "UTF-8"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lnet/fortuna/ical4j/data/CalendarBuilder;->DEFAULT_CHARSET:Ljava/nio/charset/Charset;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    .line 122
    invoke-static {}, Lnet/fortuna/ical4j/data/CalendarParserFactory;->getInstance()Lnet/fortuna/ical4j/data/CalendarParserFactory;

    move-result-object v0

    invoke-virtual {v0}, Lnet/fortuna/ical4j/data/CalendarParserFactory;->createParser()Lnet/fortuna/ical4j/data/CalendarParser;

    move-result-object v0

    new-instance v1, Lnet/fortuna/ical4j/model/PropertyFactoryRegistry;

    invoke-direct {v1}, Lnet/fortuna/ical4j/model/PropertyFactoryRegistry;-><init>()V

    new-instance v2, Lnet/fortuna/ical4j/model/ParameterFactoryRegistry;

    invoke-direct {v2}, Lnet/fortuna/ical4j/model/ParameterFactoryRegistry;-><init>()V

    .line 123
    invoke-static {}, Lnet/fortuna/ical4j/model/TimeZoneRegistryFactory;->getInstance()Lnet/fortuna/ical4j/model/TimeZoneRegistryFactory;

    move-result-object v3

    invoke-virtual {v3}, Lnet/fortuna/ical4j/model/TimeZoneRegistryFactory;->createRegistry()Lnet/fortuna/ical4j/model/TimeZoneRegistry;

    move-result-object v3

    .line 122
    invoke-direct {p0, v0, v1, v2, v3}, Lnet/fortuna/ical4j/data/CalendarBuilder;-><init>(Lnet/fortuna/ical4j/data/CalendarParser;Lnet/fortuna/ical4j/model/PropertyFactoryRegistry;Lnet/fortuna/ical4j/model/ParameterFactoryRegistry;Lnet/fortuna/ical4j/model/TimeZoneRegistry;)V

    .line 124
    return-void
.end method

.method public constructor <init>(Lnet/fortuna/ical4j/data/CalendarParser;Lnet/fortuna/ical4j/model/PropertyFactoryRegistry;Lnet/fortuna/ical4j/model/ParameterFactoryRegistry;Lnet/fortuna/ical4j/model/TimeZoneRegistry;)V
    .locals 2

    .prologue
    .line 162
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 164
    iput-object p1, p0, Lnet/fortuna/ical4j/data/CalendarBuilder;->parser:Lnet/fortuna/ical4j/data/CalendarParser;

    .line 165
    iput-object p4, p0, Lnet/fortuna/ical4j/data/CalendarBuilder;->tzRegistry:Lnet/fortuna/ical4j/model/TimeZoneRegistry;

    .line 166
    new-instance v0, Lnet/fortuna/ical4j/data/CalendarBuilder$ContentHandlerImpl;

    invoke-static {}, Lnet/fortuna/ical4j/model/ComponentFactory;->getInstance()Lnet/fortuna/ical4j/model/ComponentFactory;

    move-result-object v1

    invoke-direct {v0, p0, v1, p2, p3}, Lnet/fortuna/ical4j/data/CalendarBuilder$ContentHandlerImpl;-><init>(Lnet/fortuna/ical4j/data/CalendarBuilder;Lnet/fortuna/ical4j/model/ComponentFactory;Lnet/fortuna/ical4j/model/PropertyFactory;Lnet/fortuna/ical4j/model/ParameterFactory;)V

    iput-object v0, p0, Lnet/fortuna/ical4j/data/CalendarBuilder;->contentHandler:Lnet/fortuna/ical4j/data/ContentHandler;

    .line 168
    return-void
.end method

.method public constructor <init>(Lnet/fortuna/ical4j/model/TimeZoneRegistry;)V
    .locals 3

    .prologue
    .line 140
    invoke-static {}, Lnet/fortuna/ical4j/data/CalendarParserFactory;->getInstance()Lnet/fortuna/ical4j/data/CalendarParserFactory;

    move-result-object v0

    invoke-virtual {v0}, Lnet/fortuna/ical4j/data/CalendarParserFactory;->createParser()Lnet/fortuna/ical4j/data/CalendarParser;

    move-result-object v0

    new-instance v1, Lnet/fortuna/ical4j/model/PropertyFactoryRegistry;

    invoke-direct {v1}, Lnet/fortuna/ical4j/model/PropertyFactoryRegistry;-><init>()V

    new-instance v2, Lnet/fortuna/ical4j/model/ParameterFactoryRegistry;

    invoke-direct {v2}, Lnet/fortuna/ical4j/model/ParameterFactoryRegistry;-><init>()V

    invoke-direct {p0, v0, v1, v2, p1}, Lnet/fortuna/ical4j/data/CalendarBuilder;-><init>(Lnet/fortuna/ical4j/data/CalendarParser;Lnet/fortuna/ical4j/model/PropertyFactoryRegistry;Lnet/fortuna/ical4j/model/ParameterFactoryRegistry;Lnet/fortuna/ical4j/model/TimeZoneRegistry;)V

    .line 142
    return-void
.end method

.method static synthetic access$000(Lnet/fortuna/ical4j/data/CalendarBuilder;Lnet/fortuna/ical4j/model/Component;)V
    .locals 0

    .prologue
    .line 86
    invoke-direct {p0, p1}, Lnet/fortuna/ical4j/data/CalendarBuilder;->assertComponent(Lnet/fortuna/ical4j/model/Component;)V

    return-void
.end method

.method static synthetic access$100(Lnet/fortuna/ical4j/data/CalendarBuilder;)Lnet/fortuna/ical4j/model/TimeZoneRegistry;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lnet/fortuna/ical4j/data/CalendarBuilder;->tzRegistry:Lnet/fortuna/ical4j/model/TimeZoneRegistry;

    return-object v0
.end method

.method static synthetic access$200(Lnet/fortuna/ical4j/data/CalendarBuilder;Lnet/fortuna/ical4j/model/Property;)V
    .locals 0

    .prologue
    .line 86
    invoke-direct {p0, p1}, Lnet/fortuna/ical4j/data/CalendarBuilder;->assertProperty(Lnet/fortuna/ical4j/model/Property;)V

    return-void
.end method

.method private assertComponent(Lnet/fortuna/ical4j/model/Component;)V
    .locals 2

    .prologue
    .line 364
    if-nez p1, :cond_0

    .line 365
    new-instance v0, Lnet/fortuna/ical4j/model/CalendarException;

    const-string v1, "Expected component not initialised"

    invoke-direct {v0, v1}, Lnet/fortuna/ical4j/model/CalendarException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 367
    :cond_0
    return-void
.end method

.method private assertProperty(Lnet/fortuna/ical4j/model/Property;)V
    .locals 2

    .prologue
    .line 370
    if-nez p1, :cond_0

    .line 371
    new-instance v0, Lnet/fortuna/ical4j/model/CalendarException;

    const-string v1, "Expected property not initialised"

    invoke-direct {v0, v1}, Lnet/fortuna/ical4j/model/CalendarException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 373
    :cond_0
    return-void
.end method

.method private resolveTimezones()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 409
    iget-object v0, p0, Lnet/fortuna/ical4j/data/CalendarBuilder;->datesMissingTimezones:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 410
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/fortuna/ical4j/model/Property;

    .line 411
    const-string v1, "TZID"

    invoke-virtual {v0, v1}, Lnet/fortuna/ical4j/model/Property;->getParameter(Ljava/lang/String;)Lnet/fortuna/ical4j/model/Parameter;

    move-result-object v1

    .line 414
    if-eqz v1, :cond_0

    .line 419
    iget-object v3, p0, Lnet/fortuna/ical4j/data/CalendarBuilder;->tzRegistry:Lnet/fortuna/ical4j/model/TimeZoneRegistry;

    invoke-virtual {v1}, Lnet/fortuna/ical4j/model/Parameter;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v3, v1}, Lnet/fortuna/ical4j/model/TimeZoneRegistry;->getTimeZone(Ljava/lang/String;)Lnet/fortuna/ical4j/model/TimeZone;

    move-result-object v3

    .line 422
    if-eqz v3, :cond_0

    .line 425
    invoke-virtual {v0}, Lnet/fortuna/ical4j/model/Property;->getValue()Ljava/lang/String;

    move-result-object v4

    .line 428
    instance-of v1, v0, Lnet/fortuna/ical4j/model/property/DateProperty;

    if-eqz v1, :cond_2

    move-object v1, v0

    .line 429
    check-cast v1, Lnet/fortuna/ical4j/model/property/DateProperty;

    invoke-virtual {v1, v3}, Lnet/fortuna/ical4j/model/property/DateProperty;->setTimeZone(Lnet/fortuna/ical4j/model/TimeZone;)V

    .line 437
    :cond_1
    :goto_1
    :try_start_0
    invoke-virtual {v0, v4}, Lnet/fortuna/ical4j/model/Property;->setValue(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 438
    :catch_0
    move-exception v0

    .line 440
    new-instance v1, Lnet/fortuna/ical4j/model/CalendarException;

    invoke-direct {v1, v0}, Lnet/fortuna/ical4j/model/CalendarException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 431
    :cond_2
    instance-of v1, v0, Lnet/fortuna/ical4j/model/property/DateListProperty;

    if-eqz v1, :cond_1

    move-object v1, v0

    .line 432
    check-cast v1, Lnet/fortuna/ical4j/model/property/DateListProperty;

    invoke-virtual {v1, v3}, Lnet/fortuna/ical4j/model/property/DateListProperty;->setTimeZone(Lnet/fortuna/ical4j/model/TimeZone;)V

    goto :goto_1

    .line 441
    :catch_1
    move-exception v0

    .line 443
    new-instance v1, Lnet/fortuna/ical4j/model/CalendarException;

    invoke-direct {v1, v0}, Lnet/fortuna/ical4j/model/CalendarException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 447
    :cond_3
    return-void
.end method


# virtual methods
.method public build(Ljava/io/InputStream;)Lnet/fortuna/ical4j/model/Calendar;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lnet/fortuna/ical4j/data/ParserException;
        }
    .end annotation

    .prologue
    .line 179
    new-instance v0, Ljava/io/InputStreamReader;

    sget-object v1, Lnet/fortuna/ical4j/data/CalendarBuilder;->DEFAULT_CHARSET:Ljava/nio/charset/Charset;

    invoke-direct {v0, p1, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    invoke-virtual {p0, v0}, Lnet/fortuna/ical4j/data/CalendarBuilder;->build(Ljava/io/Reader;)Lnet/fortuna/ical4j/model/Calendar;

    move-result-object v0

    return-object v0
.end method

.method public build(Ljava/io/Reader;)Lnet/fortuna/ical4j/model/Calendar;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lnet/fortuna/ical4j/data/ParserException;
        }
    .end annotation

    .prologue
    .line 191
    new-instance v0, Lnet/fortuna/ical4j/data/UnfoldingReader;

    invoke-direct {v0, p1}, Lnet/fortuna/ical4j/data/UnfoldingReader;-><init>(Ljava/io/Reader;)V

    invoke-virtual {p0, v0}, Lnet/fortuna/ical4j/data/CalendarBuilder;->build(Lnet/fortuna/ical4j/data/UnfoldingReader;)Lnet/fortuna/ical4j/model/Calendar;

    move-result-object v0

    return-object v0
.end method

.method public build(Lnet/fortuna/ical4j/data/UnfoldingReader;)Lnet/fortuna/ical4j/model/Calendar;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lnet/fortuna/ical4j/data/ParserException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 204
    iput-object v0, p0, Lnet/fortuna/ical4j/data/CalendarBuilder;->calendar:Lnet/fortuna/ical4j/model/Calendar;

    .line 205
    iput-object v0, p0, Lnet/fortuna/ical4j/data/CalendarBuilder;->component:Lnet/fortuna/ical4j/model/Component;

    .line 206
    iput-object v0, p0, Lnet/fortuna/ical4j/data/CalendarBuilder;->subComponent:Lnet/fortuna/ical4j/model/Component;

    .line 207
    iput-object v0, p0, Lnet/fortuna/ical4j/data/CalendarBuilder;->property:Lnet/fortuna/ical4j/model/Property;

    .line 208
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lnet/fortuna/ical4j/data/CalendarBuilder;->datesMissingTimezones:Ljava/util/List;

    .line 210
    iget-object v0, p0, Lnet/fortuna/ical4j/data/CalendarBuilder;->parser:Lnet/fortuna/ical4j/data/CalendarParser;

    iget-object v1, p0, Lnet/fortuna/ical4j/data/CalendarBuilder;->contentHandler:Lnet/fortuna/ical4j/data/ContentHandler;

    invoke-interface {v0, p1, v1}, Lnet/fortuna/ical4j/data/CalendarParser;->parse(Ljava/io/Reader;Lnet/fortuna/ical4j/data/ContentHandler;)V

    .line 212
    iget-object v0, p0, Lnet/fortuna/ical4j/data/CalendarBuilder;->datesMissingTimezones:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lnet/fortuna/ical4j/data/CalendarBuilder;->tzRegistry:Lnet/fortuna/ical4j/model/TimeZoneRegistry;

    if-eqz v0, :cond_0

    .line 213
    invoke-direct {p0}, Lnet/fortuna/ical4j/data/CalendarBuilder;->resolveTimezones()V

    .line 216
    :cond_0
    iget-object v0, p0, Lnet/fortuna/ical4j/data/CalendarBuilder;->calendar:Lnet/fortuna/ical4j/model/Calendar;

    return-object v0
.end method

.method public final getRegistry()Lnet/fortuna/ical4j/model/TimeZoneRegistry;
    .locals 1

    .prologue
    .line 380
    iget-object v0, p0, Lnet/fortuna/ical4j/data/CalendarBuilder;->tzRegistry:Lnet/fortuna/ical4j/model/TimeZoneRegistry;

    return-object v0
.end method
