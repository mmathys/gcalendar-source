.class public Lnet/fortuna/ical4j/model/TimeZoneRegistryImpl;
.super Ljava/lang/Object;
.source "TimeZoneRegistryImpl.java"

# interfaces
.implements Lnet/fortuna/ical4j/model/TimeZoneRegistry;


# static fields
.field private static final ALIASES:Ljava/util/Properties;

.field private static final DEFAULT_TIMEZONES:Ljava/util/Map;

.field private static final TZ_ID_SUFFIX:Ljava/util/regex/Pattern;


# instance fields
.field private resourcePrefix:Ljava/lang/String;

.field private timezones:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 67
    const-string v0, "(?<=/)[^/]*/[^/]*$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lnet/fortuna/ical4j/model/TimeZoneRegistryImpl;->TZ_ID_SUFFIX:Ljava/util/regex/Pattern;

    .line 71
    new-instance v0, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lnet/fortuna/ical4j/model/TimeZoneRegistryImpl;->DEFAULT_TIMEZONES:Ljava/util/Map;

    .line 73
    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    sput-object v0, Lnet/fortuna/ical4j/model/TimeZoneRegistryImpl;->ALIASES:Ljava/util/Properties;

    .line 76
    :try_start_0
    sget-object v0, Lnet/fortuna/ical4j/model/TimeZoneRegistryImpl;->ALIASES:Ljava/util/Properties;

    const-string v1, "net/fortuna/ical4j/model/tz.alias"

    invoke-static {v1}, Lnet/fortuna/ical4j/util/ResourceLoader;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 83
    :goto_0
    :try_start_1
    sget-object v0, Lnet/fortuna/ical4j/model/TimeZoneRegistryImpl;->ALIASES:Ljava/util/Properties;

    const-string v1, "tz.alias"

    invoke-static {v1}, Lnet/fortuna/ical4j/util/ResourceLoader;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 89
    :goto_1
    return-void

    .line 78
    :catch_0
    move-exception v0

    .line 79
    const-class v1, Lnet/fortuna/ical4j/model/TimeZoneRegistryImpl;

    invoke-static {v1}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    move-result-object v1

    const-string v2, "Error loading timezone aliases: "

    .line 80
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 79
    :goto_2
    invoke-interface {v1, v0}, Lorg/apache/commons/logging/Log;->warn(Ljava/lang/Object;)V

    goto :goto_0

    .line 80
    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_2

    .line 85
    :catch_1
    move-exception v0

    .line 86
    const-class v1, Lnet/fortuna/ical4j/model/TimeZoneRegistryImpl;

    invoke-static {v1}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    move-result-object v1

    const-string v2, "Error loading custom timezone aliases: "

    .line 87
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 86
    :goto_3
    invoke-interface {v1, v0}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    goto :goto_1

    .line 87
    :cond_1
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_3
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 99
    const-string v0, "zoneinfo/"

    invoke-direct {p0, v0}, Lnet/fortuna/ical4j/model/TimeZoneRegistryImpl;-><init>(Ljava/lang/String;)V

    .line 100
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 107
    iput-object p1, p0, Lnet/fortuna/ical4j/model/TimeZoneRegistryImpl;->resourcePrefix:Ljava/lang/String;

    .line 108
    new-instance v0, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lnet/fortuna/ical4j/model/TimeZoneRegistryImpl;->timezones:Ljava/util/Map;

    .line 109
    return-void
.end method

.method private loadVTimeZone(Ljava/lang/String;)Lnet/fortuna/ical4j/model/component/VTimeZone;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lnet/fortuna/ical4j/data/ParserException;
        }
    .end annotation

    .prologue
    .line 189
    iget-object v0, p0, Lnet/fortuna/ical4j/model/TimeZoneRegistryImpl;->resourcePrefix:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x4

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v2, v3

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".ics"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lnet/fortuna/ical4j/util/ResourceLoader;->getResource(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v0

    .line 190
    if-eqz v0, :cond_1

    .line 191
    new-instance v1, Lnet/fortuna/ical4j/data/CalendarBuilder;

    invoke-direct {v1}, Lnet/fortuna/ical4j/data/CalendarBuilder;-><init>()V

    .line 192
    invoke-virtual {v0}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-virtual {v1, v0}, Lnet/fortuna/ical4j/data/CalendarBuilder;->build(Ljava/io/InputStream;)Lnet/fortuna/ical4j/model/Calendar;

    move-result-object v0

    .line 193
    const-string v1, "VTIMEZONE"

    invoke-virtual {v0, v1}, Lnet/fortuna/ical4j/model/Calendar;->getComponent(Ljava/lang/String;)Lnet/fortuna/ical4j/model/Component;

    move-result-object v0

    check-cast v0, Lnet/fortuna/ical4j/model/component/VTimeZone;

    .line 195
    const-string v1, "false"

    const-string v2, "net.fortuna.ical4j.timezone.update.enabled"

    invoke-static {v2}, Lnet/fortuna/ical4j/util/Configurator;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 196
    invoke-direct {p0, v0}, Lnet/fortuna/ical4j/model/TimeZoneRegistryImpl;->updateDefinition(Lnet/fortuna/ical4j/model/component/VTimeZone;)Lnet/fortuna/ical4j/model/component/VTimeZone;

    move-result-object v0

    .line 200
    :cond_0
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private updateDefinition(Lnet/fortuna/ical4j/model/component/VTimeZone;)Lnet/fortuna/ical4j/model/component/VTimeZone;
    .locals 5

    .prologue
    .line 208
    invoke-virtual {p1}, Lnet/fortuna/ical4j/model/component/VTimeZone;->getTimeZoneUrl()Lnet/fortuna/ical4j/model/property/TzUrl;

    move-result-object v0

    .line 209
    if-eqz v0, :cond_0

    .line 211
    :try_start_0
    new-instance v1, Lnet/fortuna/ical4j/data/CalendarBuilder;

    invoke-direct {v1}, Lnet/fortuna/ical4j/data/CalendarBuilder;-><init>()V

    .line 212
    invoke-virtual {v0}, Lnet/fortuna/ical4j/model/property/TzUrl;->getUri()Ljava/net/URI;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URI;->toURL()Ljava/net/URL;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-virtual {v1, v0}, Lnet/fortuna/ical4j/data/CalendarBuilder;->build(Ljava/io/InputStream;)Lnet/fortuna/ical4j/model/Calendar;

    move-result-object v0

    .line 213
    const-string v1, "VTIMEZONE"

    invoke-virtual {v0, v1}, Lnet/fortuna/ical4j/model/Calendar;->getComponent(Ljava/lang/String;)Lnet/fortuna/ical4j/model/Component;

    move-result-object v0

    check-cast v0, Lnet/fortuna/ical4j/model/component/VTimeZone;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 214
    if-eqz v0, :cond_0

    .line 223
    :goto_0
    return-object v0

    .line 218
    :catch_0
    move-exception v0

    move-object v1, v0

    .line 219
    const-class v0, Lnet/fortuna/ical4j/model/TimeZoneRegistryImpl;

    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    move-result-object v2

    .line 220
    const-string v3, "Unable to retrieve updates for timezone: "

    invoke-virtual {p1}, Lnet/fortuna/ical4j/model/component/VTimeZone;->getTimeZoneId()Lnet/fortuna/ical4j/model/property/TzId;

    move-result-object v0

    invoke-virtual {v0}, Lnet/fortuna/ical4j/model/property/TzId;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v3, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-interface {v2, v0, v1}, Lorg/apache/commons/logging/Log;->warn(Ljava/lang/Object;Ljava/lang/Throwable;)V

    :cond_0
    move-object v0, p1

    .line 223
    goto :goto_0

    .line 220
    :cond_1
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_1
.end method


# virtual methods
.method public final clear()V
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Lnet/fortuna/ical4j/model/TimeZoneRegistryImpl;->timezones:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 137
    return-void
.end method

.method public final getTimeZone(Ljava/lang/String;)Lnet/fortuna/ical4j/model/TimeZone;
    .locals 6

    .prologue
    .line 143
    iget-object v0, p0, Lnet/fortuna/ical4j/model/TimeZoneRegistryImpl;->timezones:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/fortuna/ical4j/model/TimeZone;

    .line 144
    if-nez v0, :cond_0

    .line 145
    sget-object v0, Lnet/fortuna/ical4j/model/TimeZoneRegistryImpl;->DEFAULT_TIMEZONES:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/fortuna/ical4j/model/TimeZone;

    .line 146
    if-nez v0, :cond_0

    .line 148
    sget-object v0, Lnet/fortuna/ical4j/model/TimeZoneRegistryImpl;->ALIASES:Ljava/util/Properties;

    invoke-virtual {v0, p1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 149
    if-eqz v0, :cond_1

    .line 150
    invoke-virtual {p0, v0}, Lnet/fortuna/ical4j/model/TimeZoneRegistryImpl;->getTimeZone(Ljava/lang/String;)Lnet/fortuna/ical4j/model/TimeZone;

    move-result-object v0

    .line 182
    :cond_0
    :goto_0
    return-object v0

    .line 153
    :cond_1
    sget-object v2, Lnet/fortuna/ical4j/model/TimeZoneRegistryImpl;->DEFAULT_TIMEZONES:Ljava/util/Map;

    monitor-enter v2

    .line 155
    :try_start_0
    sget-object v0, Lnet/fortuna/ical4j/model/TimeZoneRegistryImpl;->DEFAULT_TIMEZONES:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/fortuna/ical4j/model/TimeZone;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 156
    if-nez v0, :cond_2

    .line 158
    :try_start_1
    invoke-direct {p0, p1}, Lnet/fortuna/ical4j/model/TimeZoneRegistryImpl;->loadVTimeZone(Ljava/lang/String;)Lnet/fortuna/ical4j/model/component/VTimeZone;

    move-result-object v3

    .line 159
    if-eqz v3, :cond_3

    .line 162
    new-instance v1, Lnet/fortuna/ical4j/model/TimeZone;

    invoke-direct {v1, v3}, Lnet/fortuna/ical4j/model/TimeZone;-><init>(Lnet/fortuna/ical4j/model/component/VTimeZone;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 163
    :try_start_2
    sget-object v0, Lnet/fortuna/ical4j/model/TimeZoneRegistryImpl;->DEFAULT_TIMEZONES:Ljava/util/Map;

    invoke-virtual {v1}, Lnet/fortuna/ical4j/model/TimeZone;->getID()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object v0, v1

    .line 178
    :cond_2
    :goto_1
    :try_start_3
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0

    .line 165
    :cond_3
    :try_start_4
    const-string v1, "ical4j.parsing.relaxed"

    invoke-static {v1}, Lnet/fortuna/ical4j/util/CompatibilityHints;->isHintEnabled(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 167
    sget-object v1, Lnet/fortuna/ical4j/model/TimeZoneRegistryImpl;->TZ_ID_SUFFIX:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 168
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 169
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lnet/fortuna/ical4j/model/TimeZoneRegistryImpl;->getTimeZone(Ljava/lang/String;)Lnet/fortuna/ical4j/model/TimeZone;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result-object v0

    :try_start_5
    monitor-exit v2

    goto :goto_0

    .line 173
    :catch_0
    move-exception v1

    move-object v5, v1

    move-object v1, v0

    move-object v0, v5

    .line 174
    :goto_2
    const-class v3, Lnet/fortuna/ical4j/model/TimeZoneRegistryImpl;

    invoke-static {v3}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    move-result-object v3

    .line 175
    const-string v4, "Error occurred loading VTimeZone"

    invoke-interface {v3, v4, v0}, Lorg/apache/commons/logging/Log;->warn(Ljava/lang/Object;Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-object v0, v1

    goto :goto_1

    .line 173
    :catch_1
    move-exception v0

    goto :goto_2
.end method

.method public final register(Lnet/fortuna/ical4j/model/TimeZone;)V
    .locals 1

    .prologue
    .line 116
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lnet/fortuna/ical4j/model/TimeZoneRegistryImpl;->register(Lnet/fortuna/ical4j/model/TimeZone;Z)V

    .line 117
    return-void
.end method

.method public final register(Lnet/fortuna/ical4j/model/TimeZone;Z)V
    .locals 4

    .prologue
    .line 123
    if-eqz p2, :cond_0

    .line 125
    iget-object v0, p0, Lnet/fortuna/ical4j/model/TimeZoneRegistryImpl;->timezones:Ljava/util/Map;

    invoke-virtual {p1}, Lnet/fortuna/ical4j/model/TimeZone;->getID()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lnet/fortuna/ical4j/model/TimeZone;

    invoke-virtual {p1}, Lnet/fortuna/ical4j/model/TimeZone;->getVTimeZone()Lnet/fortuna/ical4j/model/component/VTimeZone;

    move-result-object v3

    invoke-direct {p0, v3}, Lnet/fortuna/ical4j/model/TimeZoneRegistryImpl;->updateDefinition(Lnet/fortuna/ical4j/model/component/VTimeZone;)Lnet/fortuna/ical4j/model/component/VTimeZone;

    move-result-object v3

    invoke-direct {v2, v3}, Lnet/fortuna/ical4j/model/TimeZone;-><init>(Lnet/fortuna/ical4j/model/component/VTimeZone;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    :goto_0
    return-void

    .line 128
    :cond_0
    iget-object v0, p0, Lnet/fortuna/ical4j/model/TimeZoneRegistryImpl;->timezones:Ljava/util/Map;

    invoke-virtual {p1}, Lnet/fortuna/ical4j/model/TimeZone;->getID()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method
