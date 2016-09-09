.class public Lnet/fortuna/ical4j/model/component/VEvent;
.super Lnet/fortuna/ical4j/model/component/CalendarComponent;
.source "VEvent.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/fortuna/ical4j/model/component/VEvent$RequestValidator;,
        Lnet/fortuna/ical4j/model/component/VEvent$ReplyValidator;,
        Lnet/fortuna/ical4j/model/component/VEvent$RefreshValidator;,
        Lnet/fortuna/ical4j/model/component/VEvent$PublishValidator;,
        Lnet/fortuna/ical4j/model/component/VEvent$DeclineCounterValidator;,
        Lnet/fortuna/ical4j/model/component/VEvent$CounterValidator;,
        Lnet/fortuna/ical4j/model/component/VEvent$CancelValidator;,
        Lnet/fortuna/ical4j/model/component/VEvent$AddValidator;
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x235c221b271f87f7L


# instance fields
.field private alarms:Lnet/fortuna/ical4j/model/ComponentList;

.field private final methodValidators:Ljava/util/Map;


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 244
    const-string v0, "VEVENT"

    invoke-direct {p0, v0}, Lnet/fortuna/ical4j/model/component/CalendarComponent;-><init>(Ljava/lang/String;)V

    .line 226
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lnet/fortuna/ical4j/model/component/VEvent;->methodValidators:Ljava/util/Map;

    .line 228
    iget-object v0, p0, Lnet/fortuna/ical4j/model/component/VEvent;->methodValidators:Ljava/util/Map;

    sget-object v1, Lnet/fortuna/ical4j/model/property/Method;->ADD:Lnet/fortuna/ical4j/model/property/Method;

    new-instance v2, Lnet/fortuna/ical4j/model/component/VEvent$AddValidator;

    invoke-direct {v2, p0, v3}, Lnet/fortuna/ical4j/model/component/VEvent$AddValidator;-><init>(Lnet/fortuna/ical4j/model/component/VEvent;Lnet/fortuna/ical4j/model/component/VEvent$1;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 229
    iget-object v0, p0, Lnet/fortuna/ical4j/model/component/VEvent;->methodValidators:Ljava/util/Map;

    sget-object v1, Lnet/fortuna/ical4j/model/property/Method;->CANCEL:Lnet/fortuna/ical4j/model/property/Method;

    new-instance v2, Lnet/fortuna/ical4j/model/component/VEvent$CancelValidator;

    invoke-direct {v2, p0, v3}, Lnet/fortuna/ical4j/model/component/VEvent$CancelValidator;-><init>(Lnet/fortuna/ical4j/model/component/VEvent;Lnet/fortuna/ical4j/model/component/VEvent$1;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 230
    iget-object v0, p0, Lnet/fortuna/ical4j/model/component/VEvent;->methodValidators:Ljava/util/Map;

    sget-object v1, Lnet/fortuna/ical4j/model/property/Method;->COUNTER:Lnet/fortuna/ical4j/model/property/Method;

    new-instance v2, Lnet/fortuna/ical4j/model/component/VEvent$CounterValidator;

    invoke-direct {v2, p0, v3}, Lnet/fortuna/ical4j/model/component/VEvent$CounterValidator;-><init>(Lnet/fortuna/ical4j/model/component/VEvent;Lnet/fortuna/ical4j/model/component/VEvent$1;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 231
    iget-object v0, p0, Lnet/fortuna/ical4j/model/component/VEvent;->methodValidators:Ljava/util/Map;

    sget-object v1, Lnet/fortuna/ical4j/model/property/Method;->DECLINE_COUNTER:Lnet/fortuna/ical4j/model/property/Method;

    new-instance v2, Lnet/fortuna/ical4j/model/component/VEvent$DeclineCounterValidator;

    invoke-direct {v2, p0, v3}, Lnet/fortuna/ical4j/model/component/VEvent$DeclineCounterValidator;-><init>(Lnet/fortuna/ical4j/model/component/VEvent;Lnet/fortuna/ical4j/model/component/VEvent$1;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 232
    iget-object v0, p0, Lnet/fortuna/ical4j/model/component/VEvent;->methodValidators:Ljava/util/Map;

    sget-object v1, Lnet/fortuna/ical4j/model/property/Method;->PUBLISH:Lnet/fortuna/ical4j/model/property/Method;

    new-instance v2, Lnet/fortuna/ical4j/model/component/VEvent$PublishValidator;

    invoke-direct {v2, p0, v3}, Lnet/fortuna/ical4j/model/component/VEvent$PublishValidator;-><init>(Lnet/fortuna/ical4j/model/component/VEvent;Lnet/fortuna/ical4j/model/component/VEvent$1;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 233
    iget-object v0, p0, Lnet/fortuna/ical4j/model/component/VEvent;->methodValidators:Ljava/util/Map;

    sget-object v1, Lnet/fortuna/ical4j/model/property/Method;->REFRESH:Lnet/fortuna/ical4j/model/property/Method;

    new-instance v2, Lnet/fortuna/ical4j/model/component/VEvent$RefreshValidator;

    invoke-direct {v2, p0, v3}, Lnet/fortuna/ical4j/model/component/VEvent$RefreshValidator;-><init>(Lnet/fortuna/ical4j/model/component/VEvent;Lnet/fortuna/ical4j/model/component/VEvent$1;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 234
    iget-object v0, p0, Lnet/fortuna/ical4j/model/component/VEvent;->methodValidators:Ljava/util/Map;

    sget-object v1, Lnet/fortuna/ical4j/model/property/Method;->REPLY:Lnet/fortuna/ical4j/model/property/Method;

    new-instance v2, Lnet/fortuna/ical4j/model/component/VEvent$ReplyValidator;

    invoke-direct {v2, p0, v3}, Lnet/fortuna/ical4j/model/component/VEvent$ReplyValidator;-><init>(Lnet/fortuna/ical4j/model/component/VEvent;Lnet/fortuna/ical4j/model/component/VEvent$1;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 235
    iget-object v0, p0, Lnet/fortuna/ical4j/model/component/VEvent;->methodValidators:Ljava/util/Map;

    sget-object v1, Lnet/fortuna/ical4j/model/property/Method;->REQUEST:Lnet/fortuna/ical4j/model/property/Method;

    new-instance v2, Lnet/fortuna/ical4j/model/component/VEvent$RequestValidator;

    invoke-direct {v2, p0, v3}, Lnet/fortuna/ical4j/model/component/VEvent$RequestValidator;-><init>(Lnet/fortuna/ical4j/model/component/VEvent;Lnet/fortuna/ical4j/model/component/VEvent$1;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 245
    new-instance v0, Lnet/fortuna/ical4j/model/ComponentList;

    invoke-direct {v0}, Lnet/fortuna/ical4j/model/ComponentList;-><init>()V

    iput-object v0, p0, Lnet/fortuna/ical4j/model/component/VEvent;->alarms:Lnet/fortuna/ical4j/model/ComponentList;

    .line 246
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/component/VEvent;->getProperties()Lnet/fortuna/ical4j/model/PropertyList;

    move-result-object v0

    new-instance v1, Lnet/fortuna/ical4j/model/property/DtStamp;

    invoke-direct {v1}, Lnet/fortuna/ical4j/model/property/DtStamp;-><init>()V

    invoke-virtual {v0, v1}, Lnet/fortuna/ical4j/model/PropertyList;->add(Lnet/fortuna/ical4j/model/Property;)Z

    .line 247
    return-void
.end method

.method public constructor <init>(Lnet/fortuna/ical4j/model/PropertyList;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 254
    const-string v0, "VEVENT"

    invoke-direct {p0, v0, p1}, Lnet/fortuna/ical4j/model/component/CalendarComponent;-><init>(Ljava/lang/String;Lnet/fortuna/ical4j/model/PropertyList;)V

    .line 226
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lnet/fortuna/ical4j/model/component/VEvent;->methodValidators:Ljava/util/Map;

    .line 228
    iget-object v0, p0, Lnet/fortuna/ical4j/model/component/VEvent;->methodValidators:Ljava/util/Map;

    sget-object v1, Lnet/fortuna/ical4j/model/property/Method;->ADD:Lnet/fortuna/ical4j/model/property/Method;

    new-instance v2, Lnet/fortuna/ical4j/model/component/VEvent$AddValidator;

    invoke-direct {v2, p0, v3}, Lnet/fortuna/ical4j/model/component/VEvent$AddValidator;-><init>(Lnet/fortuna/ical4j/model/component/VEvent;Lnet/fortuna/ical4j/model/component/VEvent$1;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 229
    iget-object v0, p0, Lnet/fortuna/ical4j/model/component/VEvent;->methodValidators:Ljava/util/Map;

    sget-object v1, Lnet/fortuna/ical4j/model/property/Method;->CANCEL:Lnet/fortuna/ical4j/model/property/Method;

    new-instance v2, Lnet/fortuna/ical4j/model/component/VEvent$CancelValidator;

    invoke-direct {v2, p0, v3}, Lnet/fortuna/ical4j/model/component/VEvent$CancelValidator;-><init>(Lnet/fortuna/ical4j/model/component/VEvent;Lnet/fortuna/ical4j/model/component/VEvent$1;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 230
    iget-object v0, p0, Lnet/fortuna/ical4j/model/component/VEvent;->methodValidators:Ljava/util/Map;

    sget-object v1, Lnet/fortuna/ical4j/model/property/Method;->COUNTER:Lnet/fortuna/ical4j/model/property/Method;

    new-instance v2, Lnet/fortuna/ical4j/model/component/VEvent$CounterValidator;

    invoke-direct {v2, p0, v3}, Lnet/fortuna/ical4j/model/component/VEvent$CounterValidator;-><init>(Lnet/fortuna/ical4j/model/component/VEvent;Lnet/fortuna/ical4j/model/component/VEvent$1;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 231
    iget-object v0, p0, Lnet/fortuna/ical4j/model/component/VEvent;->methodValidators:Ljava/util/Map;

    sget-object v1, Lnet/fortuna/ical4j/model/property/Method;->DECLINE_COUNTER:Lnet/fortuna/ical4j/model/property/Method;

    new-instance v2, Lnet/fortuna/ical4j/model/component/VEvent$DeclineCounterValidator;

    invoke-direct {v2, p0, v3}, Lnet/fortuna/ical4j/model/component/VEvent$DeclineCounterValidator;-><init>(Lnet/fortuna/ical4j/model/component/VEvent;Lnet/fortuna/ical4j/model/component/VEvent$1;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 232
    iget-object v0, p0, Lnet/fortuna/ical4j/model/component/VEvent;->methodValidators:Ljava/util/Map;

    sget-object v1, Lnet/fortuna/ical4j/model/property/Method;->PUBLISH:Lnet/fortuna/ical4j/model/property/Method;

    new-instance v2, Lnet/fortuna/ical4j/model/component/VEvent$PublishValidator;

    invoke-direct {v2, p0, v3}, Lnet/fortuna/ical4j/model/component/VEvent$PublishValidator;-><init>(Lnet/fortuna/ical4j/model/component/VEvent;Lnet/fortuna/ical4j/model/component/VEvent$1;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 233
    iget-object v0, p0, Lnet/fortuna/ical4j/model/component/VEvent;->methodValidators:Ljava/util/Map;

    sget-object v1, Lnet/fortuna/ical4j/model/property/Method;->REFRESH:Lnet/fortuna/ical4j/model/property/Method;

    new-instance v2, Lnet/fortuna/ical4j/model/component/VEvent$RefreshValidator;

    invoke-direct {v2, p0, v3}, Lnet/fortuna/ical4j/model/component/VEvent$RefreshValidator;-><init>(Lnet/fortuna/ical4j/model/component/VEvent;Lnet/fortuna/ical4j/model/component/VEvent$1;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 234
    iget-object v0, p0, Lnet/fortuna/ical4j/model/component/VEvent;->methodValidators:Ljava/util/Map;

    sget-object v1, Lnet/fortuna/ical4j/model/property/Method;->REPLY:Lnet/fortuna/ical4j/model/property/Method;

    new-instance v2, Lnet/fortuna/ical4j/model/component/VEvent$ReplyValidator;

    invoke-direct {v2, p0, v3}, Lnet/fortuna/ical4j/model/component/VEvent$ReplyValidator;-><init>(Lnet/fortuna/ical4j/model/component/VEvent;Lnet/fortuna/ical4j/model/component/VEvent$1;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 235
    iget-object v0, p0, Lnet/fortuna/ical4j/model/component/VEvent;->methodValidators:Ljava/util/Map;

    sget-object v1, Lnet/fortuna/ical4j/model/property/Method;->REQUEST:Lnet/fortuna/ical4j/model/property/Method;

    new-instance v2, Lnet/fortuna/ical4j/model/component/VEvent$RequestValidator;

    invoke-direct {v2, p0, v3}, Lnet/fortuna/ical4j/model/component/VEvent$RequestValidator;-><init>(Lnet/fortuna/ical4j/model/component/VEvent;Lnet/fortuna/ical4j/model/component/VEvent$1;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 255
    new-instance v0, Lnet/fortuna/ical4j/model/ComponentList;

    invoke-direct {v0}, Lnet/fortuna/ical4j/model/ComponentList;-><init>()V

    iput-object v0, p0, Lnet/fortuna/ical4j/model/component/VEvent;->alarms:Lnet/fortuna/ical4j/model/ComponentList;

    .line 256
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 1493
    instance-of v0, p1, Lnet/fortuna/ical4j/model/component/VEvent;

    if-eqz v0, :cond_1

    .line 1494
    invoke-super {p0, p1}, Lnet/fortuna/ical4j/model/component/CalendarComponent;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/fortuna/ical4j/model/component/VEvent;->alarms:Lnet/fortuna/ical4j/model/ComponentList;

    check-cast p1, Lnet/fortuna/ical4j/model/component/VEvent;

    .line 1495
    invoke-virtual {p1}, Lnet/fortuna/ical4j/model/component/VEvent;->getAlarms()Lnet/fortuna/ical4j/model/ComponentList;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/apache/commons/lang/ObjectUtils;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 1497
    :goto_0
    return v0

    .line 1495
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 1497
    :cond_1
    invoke-super {p0, p1}, Lnet/fortuna/ical4j/model/component/CalendarComponent;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public final getAlarms()Lnet/fortuna/ical4j/model/ComponentList;
    .locals 1

    .prologue
    .line 311
    iget-object v0, p0, Lnet/fortuna/ical4j/model/component/VEvent;->alarms:Lnet/fortuna/ical4j/model/ComponentList;

    return-object v0
.end method

.method public final getDateStamp()Lnet/fortuna/ical4j/model/property/DtStamp;
    .locals 1

    .prologue
    .line 1387
    const-string v0, "DTSTAMP"

    invoke-virtual {p0, v0}, Lnet/fortuna/ical4j/model/component/VEvent;->getProperty(Ljava/lang/String;)Lnet/fortuna/ical4j/model/Property;

    move-result-object v0

    check-cast v0, Lnet/fortuna/ical4j/model/property/DtStamp;

    return-object v0
.end method

.method public final getDescription()Lnet/fortuna/ical4j/model/property/Description;
    .locals 1

    .prologue
    .line 1337
    const-string v0, "DESCRIPTION"

    invoke-virtual {p0, v0}, Lnet/fortuna/ical4j/model/component/VEvent;->getProperty(Ljava/lang/String;)Lnet/fortuna/ical4j/model/Property;

    move-result-object v0

    check-cast v0, Lnet/fortuna/ical4j/model/property/Description;

    return-object v0
.end method

.method public final getDuration()Lnet/fortuna/ical4j/model/property/Duration;
    .locals 1

    .prologue
    .line 1478
    const-string v0, "DURATION"

    invoke-virtual {p0, v0}, Lnet/fortuna/ical4j/model/component/VEvent;->getProperty(Ljava/lang/String;)Lnet/fortuna/ical4j/model/Property;

    move-result-object v0

    check-cast v0, Lnet/fortuna/ical4j/model/property/Duration;

    return-object v0
.end method

.method public final getEndDate(Z)Lnet/fortuna/ical4j/model/property/DtEnd;
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1449
    const-string v0, "DTEND"

    invoke-virtual {p0, v0}, Lnet/fortuna/ical4j/model/component/VEvent;->getProperty(Ljava/lang/String;)Lnet/fortuna/ical4j/model/Property;

    move-result-object v0

    check-cast v0, Lnet/fortuna/ical4j/model/property/DtEnd;

    .line 1451
    if-nez v0, :cond_1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/component/VEvent;->getStartDate()Lnet/fortuna/ical4j/model/property/DtStart;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 1452
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/component/VEvent;->getStartDate()Lnet/fortuna/ical4j/model/property/DtStart;

    move-result-object v2

    .line 1454
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/component/VEvent;->getDuration()Lnet/fortuna/ical4j/model/property/Duration;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1455
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/component/VEvent;->getDuration()Lnet/fortuna/ical4j/model/property/Duration;

    move-result-object v0

    .line 1464
    :goto_0
    new-instance v1, Lnet/fortuna/ical4j/model/property/DtEnd;

    invoke-virtual {v0}, Lnet/fortuna/ical4j/model/property/Duration;->getDuration()Lnet/fortuna/ical4j/model/Dur;

    move-result-object v0

    .line 1465
    invoke-virtual {v2}, Lnet/fortuna/ical4j/model/property/DtStart;->getDate()Lnet/fortuna/ical4j/model/Date;

    move-result-object v3

    invoke-virtual {v0, v3}, Lnet/fortuna/ical4j/model/Dur;->getTime(Ljava/util/Date;)Ljava/util/Date;

    move-result-object v3

    const-string v0, "VALUE"

    .line 1466
    invoke-virtual {v2, v0}, Lnet/fortuna/ical4j/model/property/DtStart;->getParameter(Ljava/lang/String;)Lnet/fortuna/ical4j/model/Parameter;

    move-result-object v0

    check-cast v0, Lnet/fortuna/ical4j/model/parameter/Value;

    .line 1464
    invoke-static {v3, v0}, Lnet/fortuna/ical4j/util/Dates;->getInstance(Ljava/util/Date;Lnet/fortuna/ical4j/model/parameter/Value;)Lnet/fortuna/ical4j/model/Date;

    move-result-object v0

    invoke-direct {v1, v0}, Lnet/fortuna/ical4j/model/property/DtEnd;-><init>(Lnet/fortuna/ical4j/model/Date;)V

    .line 1467
    invoke-virtual {v2}, Lnet/fortuna/ical4j/model/property/DtStart;->isUtc()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1468
    invoke-virtual {v1, v4}, Lnet/fortuna/ical4j/model/property/DtEnd;->setUtc(Z)V

    :cond_0
    move-object v0, v1

    .line 1471
    :cond_1
    return-object v0

    .line 1456
    :cond_2
    invoke-virtual {v2}, Lnet/fortuna/ical4j/model/property/DtStart;->getDate()Lnet/fortuna/ical4j/model/Date;

    move-result-object v0

    instance-of v0, v0, Lnet/fortuna/ical4j/model/DateTime;

    if-eqz v0, :cond_3

    .line 1458
    new-instance v0, Lnet/fortuna/ical4j/model/property/Duration;

    new-instance v1, Lnet/fortuna/ical4j/model/Dur;

    invoke-direct {v1, v3, v3, v3, v3}, Lnet/fortuna/ical4j/model/Dur;-><init>(IIII)V

    invoke-direct {v0, v1}, Lnet/fortuna/ical4j/model/property/Duration;-><init>(Lnet/fortuna/ical4j/model/Dur;)V

    goto :goto_0

    .line 1461
    :cond_3
    new-instance v0, Lnet/fortuna/ical4j/model/property/Duration;

    new-instance v1, Lnet/fortuna/ical4j/model/Dur;

    invoke-direct {v1, v4, v3, v3, v3}, Lnet/fortuna/ical4j/model/Dur;-><init>(IIII)V

    invoke-direct {v0, v1}, Lnet/fortuna/ical4j/model/property/Duration;-><init>(Lnet/fortuna/ical4j/model/Dur;)V

    goto :goto_0
.end method

.method public final getLocation()Lnet/fortuna/ical4j/model/property/Location;
    .locals 1

    .prologue
    .line 1366
    const-string v0, "LOCATION"

    invoke-virtual {p0, v0}, Lnet/fortuna/ical4j/model/component/VEvent;->getProperty(Ljava/lang/String;)Lnet/fortuna/ical4j/model/Property;

    move-result-object v0

    check-cast v0, Lnet/fortuna/ical4j/model/property/Location;

    return-object v0
.end method

.method public final getOrganizer()Lnet/fortuna/ical4j/model/property/Organizer;
    .locals 1

    .prologue
    .line 1373
    const-string v0, "ORGANIZER"

    invoke-virtual {p0, v0}, Lnet/fortuna/ical4j/model/component/VEvent;->getProperty(Ljava/lang/String;)Lnet/fortuna/ical4j/model/Property;

    move-result-object v0

    check-cast v0, Lnet/fortuna/ical4j/model/property/Organizer;

    return-object v0
.end method

.method public final getRecurrenceId()Lnet/fortuna/ical4j/model/property/RecurrenceId;
    .locals 1

    .prologue
    .line 1429
    const-string v0, "RECURRENCE-ID"

    invoke-virtual {p0, v0}, Lnet/fortuna/ical4j/model/component/VEvent;->getProperty(Ljava/lang/String;)Lnet/fortuna/ical4j/model/Property;

    move-result-object v0

    check-cast v0, Lnet/fortuna/ical4j/model/property/RecurrenceId;

    return-object v0
.end method

.method public final getSequence()Lnet/fortuna/ical4j/model/property/Sequence;
    .locals 1

    .prologue
    .line 1394
    const-string v0, "SEQUENCE"

    invoke-virtual {p0, v0}, Lnet/fortuna/ical4j/model/component/VEvent;->getProperty(Ljava/lang/String;)Lnet/fortuna/ical4j/model/Property;

    move-result-object v0

    check-cast v0, Lnet/fortuna/ical4j/model/property/Sequence;

    return-object v0
.end method

.method public final getStartDate()Lnet/fortuna/ical4j/model/property/DtStart;
    .locals 1

    .prologue
    .line 1345
    const-string v0, "DTSTART"

    invoke-virtual {p0, v0}, Lnet/fortuna/ical4j/model/component/VEvent;->getProperty(Ljava/lang/String;)Lnet/fortuna/ical4j/model/Property;

    move-result-object v0

    check-cast v0, Lnet/fortuna/ical4j/model/property/DtStart;

    return-object v0
.end method

.method public final getSummary()Lnet/fortuna/ical4j/model/property/Summary;
    .locals 1

    .prologue
    .line 1408
    const-string v0, "SUMMARY"

    invoke-virtual {p0, v0}, Lnet/fortuna/ical4j/model/component/VEvent;->getProperty(Ljava/lang/String;)Lnet/fortuna/ical4j/model/Property;

    move-result-object v0

    check-cast v0, Lnet/fortuna/ical4j/model/property/Summary;

    return-object v0
.end method

.method public final getUid()Lnet/fortuna/ical4j/model/property/Uid;
    .locals 1

    .prologue
    .line 1486
    const-string v0, "UID"

    invoke-virtual {p0, v0}, Lnet/fortuna/ical4j/model/component/VEvent;->getProperty(Ljava/lang/String;)Lnet/fortuna/ical4j/model/Property;

    move-result-object v0

    check-cast v0, Lnet/fortuna/ical4j/model/property/Uid;

    return-object v0
.end method

.method protected getValidator(Lnet/fortuna/ical4j/model/property/Method;)Lnet/fortuna/ical4j/model/Validator;
    .locals 1

    .prologue
    .line 480
    iget-object v0, p0, Lnet/fortuna/ical4j/model/component/VEvent;->methodValidators:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/fortuna/ical4j/model/Validator;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 1504
    new-instance v0, Lorg/apache/commons/lang/builder/HashCodeBuilder;

    invoke-direct {v0}, Lorg/apache/commons/lang/builder/HashCodeBuilder;-><init>()V

    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/component/VEvent;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/commons/lang/builder/HashCodeBuilder;->append(Ljava/lang/Object;)Lorg/apache/commons/lang/builder/HashCodeBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/component/VEvent;->getProperties()Lnet/fortuna/ical4j/model/PropertyList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/commons/lang/builder/HashCodeBuilder;->append(Ljava/lang/Object;)Lorg/apache/commons/lang/builder/HashCodeBuilder;

    move-result-object v0

    .line 1505
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/component/VEvent;->getAlarms()Lnet/fortuna/ical4j/model/ComponentList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/commons/lang/builder/HashCodeBuilder;->append(Ljava/lang/Object;)Lorg/apache/commons/lang/builder/HashCodeBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/lang/builder/HashCodeBuilder;->toHashCode()I

    move-result v0

    .line 1504
    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .prologue
    const/16 v2, 0x3a

    .line 318
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 319
    const-string v1, "BEGIN"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 320
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 321
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/component/VEvent;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 322
    const-string v1, "\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 323
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/component/VEvent;->getProperties()Lnet/fortuna/ical4j/model/PropertyList;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 324
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/component/VEvent;->getAlarms()Lnet/fortuna/ical4j/model/ComponentList;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 325
    const-string v1, "END"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 326
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 327
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/component/VEvent;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 328
    const-string v1, "\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 329
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final validate(Z)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/fortuna/ical4j/model/ValidationException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 338
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/component/VEvent;->getAlarms()Lnet/fortuna/ical4j/model/ComponentList;

    move-result-object v0

    invoke-virtual {v0}, Lnet/fortuna/ical4j/model/ComponentList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 339
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 340
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/fortuna/ical4j/model/Component;

    .line 342
    instance-of v3, v0, Lnet/fortuna/ical4j/model/component/VAlarm;

    if-nez v3, :cond_0

    .line 343
    new-instance v1, Lnet/fortuna/ical4j/model/ValidationException;

    .line 344
    invoke-virtual {v0}, Lnet/fortuna/ical4j/model/Component;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x24

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Component ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "] may not occur in VEVENT"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lnet/fortuna/ical4j/model/ValidationException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 347
    :cond_0
    check-cast v0, Lnet/fortuna/ical4j/model/component/VAlarm;

    invoke-virtual {v0, p1}, Lnet/fortuna/ical4j/model/component/VAlarm;->validate(Z)V

    goto :goto_0

    .line 350
    :cond_1
    const-string v0, "ical4j.validation.relaxed"

    .line 351
    invoke-static {v0}, Lnet/fortuna/ical4j/util/CompatibilityHints;->isHintEnabled(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 356
    invoke-static {}, Lnet/fortuna/ical4j/util/PropertyValidator;->getInstance()Lnet/fortuna/ical4j/util/PropertyValidator;

    move-result-object v0

    const-string v1, "UID"

    .line 357
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/component/VEvent;->getProperties()Lnet/fortuna/ical4j/model/PropertyList;

    move-result-object v3

    .line 356
    invoke-virtual {v0, v1, v3}, Lnet/fortuna/ical4j/util/PropertyValidator;->assertOne(Ljava/lang/String;Lnet/fortuna/ical4j/model/PropertyList;)V

    .line 362
    invoke-static {}, Lnet/fortuna/ical4j/util/PropertyValidator;->getInstance()Lnet/fortuna/ical4j/util/PropertyValidator;

    move-result-object v0

    const-string v1, "DTSTAMP"

    .line 363
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/component/VEvent;->getProperties()Lnet/fortuna/ical4j/model/PropertyList;

    move-result-object v3

    .line 362
    invoke-virtual {v0, v1, v3}, Lnet/fortuna/ical4j/util/PropertyValidator;->assertOne(Ljava/lang/String;Lnet/fortuna/ical4j/model/PropertyList;)V

    .line 371
    :cond_2
    invoke-static {}, Lnet/fortuna/ical4j/util/PropertyValidator;->getInstance()Lnet/fortuna/ical4j/util/PropertyValidator;

    move-result-object v0

    const-string v1, "CLASS"

    .line 372
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/component/VEvent;->getProperties()Lnet/fortuna/ical4j/model/PropertyList;

    move-result-object v3

    .line 371
    invoke-virtual {v0, v1, v3}, Lnet/fortuna/ical4j/util/PropertyValidator;->assertOneOrLess(Ljava/lang/String;Lnet/fortuna/ical4j/model/PropertyList;)V

    .line 373
    invoke-static {}, Lnet/fortuna/ical4j/util/PropertyValidator;->getInstance()Lnet/fortuna/ical4j/util/PropertyValidator;

    move-result-object v0

    const-string v1, "CREATED"

    .line 374
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/component/VEvent;->getProperties()Lnet/fortuna/ical4j/model/PropertyList;

    move-result-object v3

    .line 373
    invoke-virtual {v0, v1, v3}, Lnet/fortuna/ical4j/util/PropertyValidator;->assertOneOrLess(Ljava/lang/String;Lnet/fortuna/ical4j/model/PropertyList;)V

    .line 375
    invoke-static {}, Lnet/fortuna/ical4j/util/PropertyValidator;->getInstance()Lnet/fortuna/ical4j/util/PropertyValidator;

    move-result-object v0

    const-string v1, "DESCRIPTION"

    .line 376
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/component/VEvent;->getProperties()Lnet/fortuna/ical4j/model/PropertyList;

    move-result-object v3

    .line 375
    invoke-virtual {v0, v1, v3}, Lnet/fortuna/ical4j/util/PropertyValidator;->assertOneOrLess(Ljava/lang/String;Lnet/fortuna/ical4j/model/PropertyList;)V

    .line 377
    invoke-static {}, Lnet/fortuna/ical4j/util/PropertyValidator;->getInstance()Lnet/fortuna/ical4j/util/PropertyValidator;

    move-result-object v0

    const-string v1, "DTSTART"

    .line 378
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/component/VEvent;->getProperties()Lnet/fortuna/ical4j/model/PropertyList;

    move-result-object v3

    .line 377
    invoke-virtual {v0, v1, v3}, Lnet/fortuna/ical4j/util/PropertyValidator;->assertOneOrLess(Ljava/lang/String;Lnet/fortuna/ical4j/model/PropertyList;)V

    .line 379
    invoke-static {}, Lnet/fortuna/ical4j/util/PropertyValidator;->getInstance()Lnet/fortuna/ical4j/util/PropertyValidator;

    move-result-object v0

    const-string v1, "GEO"

    .line 380
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/component/VEvent;->getProperties()Lnet/fortuna/ical4j/model/PropertyList;

    move-result-object v3

    .line 379
    invoke-virtual {v0, v1, v3}, Lnet/fortuna/ical4j/util/PropertyValidator;->assertOneOrLess(Ljava/lang/String;Lnet/fortuna/ical4j/model/PropertyList;)V

    .line 381
    invoke-static {}, Lnet/fortuna/ical4j/util/PropertyValidator;->getInstance()Lnet/fortuna/ical4j/util/PropertyValidator;

    move-result-object v0

    const-string v1, "LAST-MODIFIED"

    .line 382
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/component/VEvent;->getProperties()Lnet/fortuna/ical4j/model/PropertyList;

    move-result-object v3

    .line 381
    invoke-virtual {v0, v1, v3}, Lnet/fortuna/ical4j/util/PropertyValidator;->assertOneOrLess(Ljava/lang/String;Lnet/fortuna/ical4j/model/PropertyList;)V

    .line 383
    invoke-static {}, Lnet/fortuna/ical4j/util/PropertyValidator;->getInstance()Lnet/fortuna/ical4j/util/PropertyValidator;

    move-result-object v0

    const-string v1, "LOCATION"

    .line 384
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/component/VEvent;->getProperties()Lnet/fortuna/ical4j/model/PropertyList;

    move-result-object v3

    .line 383
    invoke-virtual {v0, v1, v3}, Lnet/fortuna/ical4j/util/PropertyValidator;->assertOneOrLess(Ljava/lang/String;Lnet/fortuna/ical4j/model/PropertyList;)V

    .line 385
    invoke-static {}, Lnet/fortuna/ical4j/util/PropertyValidator;->getInstance()Lnet/fortuna/ical4j/util/PropertyValidator;

    move-result-object v0

    const-string v1, "ORGANIZER"

    .line 386
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/component/VEvent;->getProperties()Lnet/fortuna/ical4j/model/PropertyList;

    move-result-object v3

    .line 385
    invoke-virtual {v0, v1, v3}, Lnet/fortuna/ical4j/util/PropertyValidator;->assertOneOrLess(Ljava/lang/String;Lnet/fortuna/ical4j/model/PropertyList;)V

    .line 387
    invoke-static {}, Lnet/fortuna/ical4j/util/PropertyValidator;->getInstance()Lnet/fortuna/ical4j/util/PropertyValidator;

    move-result-object v0

    const-string v1, "PRIORITY"

    .line 388
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/component/VEvent;->getProperties()Lnet/fortuna/ical4j/model/PropertyList;

    move-result-object v3

    .line 387
    invoke-virtual {v0, v1, v3}, Lnet/fortuna/ical4j/util/PropertyValidator;->assertOneOrLess(Ljava/lang/String;Lnet/fortuna/ical4j/model/PropertyList;)V

    .line 389
    invoke-static {}, Lnet/fortuna/ical4j/util/PropertyValidator;->getInstance()Lnet/fortuna/ical4j/util/PropertyValidator;

    move-result-object v0

    const-string v1, "DTSTAMP"

    .line 390
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/component/VEvent;->getProperties()Lnet/fortuna/ical4j/model/PropertyList;

    move-result-object v3

    .line 389
    invoke-virtual {v0, v1, v3}, Lnet/fortuna/ical4j/util/PropertyValidator;->assertOneOrLess(Ljava/lang/String;Lnet/fortuna/ical4j/model/PropertyList;)V

    .line 391
    invoke-static {}, Lnet/fortuna/ical4j/util/PropertyValidator;->getInstance()Lnet/fortuna/ical4j/util/PropertyValidator;

    move-result-object v0

    const-string v1, "SEQUENCE"

    .line 392
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/component/VEvent;->getProperties()Lnet/fortuna/ical4j/model/PropertyList;

    move-result-object v3

    .line 391
    invoke-virtual {v0, v1, v3}, Lnet/fortuna/ical4j/util/PropertyValidator;->assertOneOrLess(Ljava/lang/String;Lnet/fortuna/ical4j/model/PropertyList;)V

    .line 393
    invoke-static {}, Lnet/fortuna/ical4j/util/PropertyValidator;->getInstance()Lnet/fortuna/ical4j/util/PropertyValidator;

    move-result-object v0

    const-string v1, "STATUS"

    .line 394
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/component/VEvent;->getProperties()Lnet/fortuna/ical4j/model/PropertyList;

    move-result-object v3

    .line 393
    invoke-virtual {v0, v1, v3}, Lnet/fortuna/ical4j/util/PropertyValidator;->assertOneOrLess(Ljava/lang/String;Lnet/fortuna/ical4j/model/PropertyList;)V

    .line 395
    invoke-static {}, Lnet/fortuna/ical4j/util/PropertyValidator;->getInstance()Lnet/fortuna/ical4j/util/PropertyValidator;

    move-result-object v0

    const-string v1, "SUMMARY"

    .line 396
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/component/VEvent;->getProperties()Lnet/fortuna/ical4j/model/PropertyList;

    move-result-object v3

    .line 395
    invoke-virtual {v0, v1, v3}, Lnet/fortuna/ical4j/util/PropertyValidator;->assertOneOrLess(Ljava/lang/String;Lnet/fortuna/ical4j/model/PropertyList;)V

    .line 397
    invoke-static {}, Lnet/fortuna/ical4j/util/PropertyValidator;->getInstance()Lnet/fortuna/ical4j/util/PropertyValidator;

    move-result-object v0

    const-string v1, "TRANSP"

    .line 398
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/component/VEvent;->getProperties()Lnet/fortuna/ical4j/model/PropertyList;

    move-result-object v3

    .line 397
    invoke-virtual {v0, v1, v3}, Lnet/fortuna/ical4j/util/PropertyValidator;->assertOneOrLess(Ljava/lang/String;Lnet/fortuna/ical4j/model/PropertyList;)V

    .line 399
    invoke-static {}, Lnet/fortuna/ical4j/util/PropertyValidator;->getInstance()Lnet/fortuna/ical4j/util/PropertyValidator;

    move-result-object v0

    const-string v1, "UID"

    .line 400
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/component/VEvent;->getProperties()Lnet/fortuna/ical4j/model/PropertyList;

    move-result-object v3

    .line 399
    invoke-virtual {v0, v1, v3}, Lnet/fortuna/ical4j/util/PropertyValidator;->assertOneOrLess(Ljava/lang/String;Lnet/fortuna/ical4j/model/PropertyList;)V

    .line 401
    invoke-static {}, Lnet/fortuna/ical4j/util/PropertyValidator;->getInstance()Lnet/fortuna/ical4j/util/PropertyValidator;

    move-result-object v0

    const-string v1, "URL"

    .line 402
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/component/VEvent;->getProperties()Lnet/fortuna/ical4j/model/PropertyList;

    move-result-object v3

    .line 401
    invoke-virtual {v0, v1, v3}, Lnet/fortuna/ical4j/util/PropertyValidator;->assertOneOrLess(Ljava/lang/String;Lnet/fortuna/ical4j/model/PropertyList;)V

    .line 403
    invoke-static {}, Lnet/fortuna/ical4j/util/PropertyValidator;->getInstance()Lnet/fortuna/ical4j/util/PropertyValidator;

    move-result-object v0

    const-string v1, "RECURRENCE-ID"

    .line 404
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/component/VEvent;->getProperties()Lnet/fortuna/ical4j/model/PropertyList;

    move-result-object v3

    .line 403
    invoke-virtual {v0, v1, v3}, Lnet/fortuna/ical4j/util/PropertyValidator;->assertOneOrLess(Ljava/lang/String;Lnet/fortuna/ical4j/model/PropertyList;)V

    .line 406
    const-string v0, "STATUS"

    invoke-virtual {p0, v0}, Lnet/fortuna/ical4j/model/component/VEvent;->getProperty(Ljava/lang/String;)Lnet/fortuna/ical4j/model/Property;

    move-result-object v0

    check-cast v0, Lnet/fortuna/ical4j/model/property/Status;

    .line 407
    if-eqz v0, :cond_3

    sget-object v1, Lnet/fortuna/ical4j/model/property/Status;->VEVENT_TENTATIVE:Lnet/fortuna/ical4j/model/property/Status;

    invoke-virtual {v1}, Lnet/fortuna/ical4j/model/property/Status;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lnet/fortuna/ical4j/model/property/Status;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    sget-object v1, Lnet/fortuna/ical4j/model/property/Status;->VEVENT_CONFIRMED:Lnet/fortuna/ical4j/model/property/Status;

    .line 408
    invoke-virtual {v1}, Lnet/fortuna/ical4j/model/property/Status;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lnet/fortuna/ical4j/model/property/Status;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    sget-object v1, Lnet/fortuna/ical4j/model/property/Status;->VEVENT_CANCELLED:Lnet/fortuna/ical4j/model/property/Status;

    .line 409
    invoke-virtual {v1}, Lnet/fortuna/ical4j/model/property/Status;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lnet/fortuna/ical4j/model/property/Status;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 410
    new-instance v1, Lnet/fortuna/ical4j/model/ValidationException;

    .line 411
    invoke-virtual {v0}, Lnet/fortuna/ical4j/model/property/Status;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x2f

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Status property ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "] is not applicable for VEVENT"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lnet/fortuna/ical4j/model/ValidationException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 419
    :cond_3
    :try_start_0
    invoke-static {}, Lnet/fortuna/ical4j/util/PropertyValidator;->getInstance()Lnet/fortuna/ical4j/util/PropertyValidator;

    move-result-object v0

    const-string v1, "DTEND"

    .line 420
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/component/VEvent;->getProperties()Lnet/fortuna/ical4j/model/PropertyList;

    move-result-object v3

    .line 419
    invoke-virtual {v0, v1, v3}, Lnet/fortuna/ical4j/util/PropertyValidator;->assertNone(Ljava/lang/String;Lnet/fortuna/ical4j/model/PropertyList;)V
    :try_end_0
    .catch Lnet/fortuna/ical4j/model/ValidationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 427
    :goto_1
    const-string v0, "DTEND"

    invoke-virtual {p0, v0}, Lnet/fortuna/ical4j/model/component/VEvent;->getProperty(Ljava/lang/String;)Lnet/fortuna/ical4j/model/Property;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 436
    const-string v0, "DTSTART"

    invoke-virtual {p0, v0}, Lnet/fortuna/ical4j/model/component/VEvent;->getProperty(Ljava/lang/String;)Lnet/fortuna/ical4j/model/Property;

    move-result-object v0

    check-cast v0, Lnet/fortuna/ical4j/model/property/DtStart;

    .line 437
    const-string v1, "DTEND"

    invoke-virtual {p0, v1}, Lnet/fortuna/ical4j/model/component/VEvent;->getProperty(Ljava/lang/String;)Lnet/fortuna/ical4j/model/Property;

    move-result-object v1

    check-cast v1, Lnet/fortuna/ical4j/model/property/DtEnd;

    .line 439
    if-eqz v0, :cond_7

    .line 440
    const-string v3, "VALUE"

    invoke-virtual {v0, v3}, Lnet/fortuna/ical4j/model/property/DtStart;->getParameter(Ljava/lang/String;)Lnet/fortuna/ical4j/model/Parameter;

    move-result-object v3

    .line 441
    const-string v0, "VALUE"

    invoke-virtual {v1, v0}, Lnet/fortuna/ical4j/model/property/DtEnd;->getParameter(Ljava/lang/String;)Lnet/fortuna/ical4j/model/Parameter;

    move-result-object v1

    .line 443
    const/4 v0, 0x0

    .line 444
    if-eqz v1, :cond_6

    .line 445
    if-eqz v3, :cond_5

    invoke-virtual {v1, v3}, Lnet/fortuna/ical4j/model/Parameter;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    move v0, v2

    .line 458
    :cond_4
    :goto_2
    if-eqz v0, :cond_7

    .line 459
    new-instance v0, Lnet/fortuna/ical4j/model/ValidationException;

    const-string v1, "Property [DTEND] must have the same [VALUE] as [DTSTART]"

    invoke-direct {v0, v1}, Lnet/fortuna/ical4j/model/ValidationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 422
    :catch_0
    move-exception v0

    .line 423
    invoke-static {}, Lnet/fortuna/ical4j/util/PropertyValidator;->getInstance()Lnet/fortuna/ical4j/util/PropertyValidator;

    move-result-object v0

    const-string v1, "DURATION"

    .line 424
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/component/VEvent;->getProperties()Lnet/fortuna/ical4j/model/PropertyList;

    move-result-object v3

    .line 423
    invoke-virtual {v0, v1, v3}, Lnet/fortuna/ical4j/util/PropertyValidator;->assertNone(Ljava/lang/String;Lnet/fortuna/ical4j/model/PropertyList;)V

    goto :goto_1

    .line 449
    :cond_5
    if-nez v3, :cond_4

    sget-object v3, Lnet/fortuna/ical4j/model/parameter/Value;->DATE_TIME:Lnet/fortuna/ical4j/model/parameter/Value;

    invoke-virtual {v3, v1}, Lnet/fortuna/ical4j/model/parameter/Value;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    move v0, v2

    .line 451
    goto :goto_2

    .line 454
    :cond_6
    if-eqz v3, :cond_4

    sget-object v1, Lnet/fortuna/ical4j/model/parameter/Value;->DATE_TIME:Lnet/fortuna/ical4j/model/parameter/Value;

    invoke-virtual {v1, v3}, Lnet/fortuna/ical4j/model/parameter/Value;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    move v0, v2

    .line 456
    goto :goto_2

    .line 471
    :cond_7
    if-eqz p1, :cond_8

    .line 472
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/component/VEvent;->validateProperties()V

    .line 474
    :cond_8
    return-void
.end method
