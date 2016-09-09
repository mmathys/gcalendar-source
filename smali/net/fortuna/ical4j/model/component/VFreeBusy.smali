.class public Lnet/fortuna/ical4j/model/component/VFreeBusy;
.super Lnet/fortuna/ical4j/model/component/CalendarComponent;
.source "VFreeBusy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/fortuna/ical4j/model/component/VFreeBusy$RequestValidator;,
        Lnet/fortuna/ical4j/model/component/VFreeBusy$ReplyValidator;,
        Lnet/fortuna/ical4j/model/component/VFreeBusy$PublishValidator;
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0xe86092d3e26fcf8L


# instance fields
.field private final methodValidators:Ljava/util/Map;


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 234
    const-string v0, "VFREEBUSY"

    invoke-direct {p0, v0}, Lnet/fortuna/ical4j/model/component/CalendarComponent;-><init>(Ljava/lang/String;)V

    .line 223
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lnet/fortuna/ical4j/model/component/VFreeBusy;->methodValidators:Ljava/util/Map;

    .line 225
    iget-object v0, p0, Lnet/fortuna/ical4j/model/component/VFreeBusy;->methodValidators:Ljava/util/Map;

    sget-object v1, Lnet/fortuna/ical4j/model/property/Method;->PUBLISH:Lnet/fortuna/ical4j/model/property/Method;

    new-instance v2, Lnet/fortuna/ical4j/model/component/VFreeBusy$PublishValidator;

    invoke-direct {v2, p0, v3}, Lnet/fortuna/ical4j/model/component/VFreeBusy$PublishValidator;-><init>(Lnet/fortuna/ical4j/model/component/VFreeBusy;Lnet/fortuna/ical4j/model/component/VFreeBusy$1;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 226
    iget-object v0, p0, Lnet/fortuna/ical4j/model/component/VFreeBusy;->methodValidators:Ljava/util/Map;

    sget-object v1, Lnet/fortuna/ical4j/model/property/Method;->REPLY:Lnet/fortuna/ical4j/model/property/Method;

    new-instance v2, Lnet/fortuna/ical4j/model/component/VFreeBusy$ReplyValidator;

    invoke-direct {v2, p0, v3}, Lnet/fortuna/ical4j/model/component/VFreeBusy$ReplyValidator;-><init>(Lnet/fortuna/ical4j/model/component/VFreeBusy;Lnet/fortuna/ical4j/model/component/VFreeBusy$1;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 227
    iget-object v0, p0, Lnet/fortuna/ical4j/model/component/VFreeBusy;->methodValidators:Ljava/util/Map;

    sget-object v1, Lnet/fortuna/ical4j/model/property/Method;->REQUEST:Lnet/fortuna/ical4j/model/property/Method;

    new-instance v2, Lnet/fortuna/ical4j/model/component/VFreeBusy$RequestValidator;

    invoke-direct {v2, p0, v3}, Lnet/fortuna/ical4j/model/component/VFreeBusy$RequestValidator;-><init>(Lnet/fortuna/ical4j/model/component/VFreeBusy;Lnet/fortuna/ical4j/model/component/VFreeBusy$1;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 235
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/component/VFreeBusy;->getProperties()Lnet/fortuna/ical4j/model/PropertyList;

    move-result-object v0

    new-instance v1, Lnet/fortuna/ical4j/model/property/DtStamp;

    invoke-direct {v1}, Lnet/fortuna/ical4j/model/property/DtStamp;-><init>()V

    invoke-virtual {v0, v1}, Lnet/fortuna/ical4j/model/PropertyList;->add(Lnet/fortuna/ical4j/model/Property;)Z

    .line 236
    return-void
.end method

.method public constructor <init>(Lnet/fortuna/ical4j/model/PropertyList;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 243
    const-string v0, "VFREEBUSY"

    invoke-direct {p0, v0, p1}, Lnet/fortuna/ical4j/model/component/CalendarComponent;-><init>(Ljava/lang/String;Lnet/fortuna/ical4j/model/PropertyList;)V

    .line 223
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lnet/fortuna/ical4j/model/component/VFreeBusy;->methodValidators:Ljava/util/Map;

    .line 225
    iget-object v0, p0, Lnet/fortuna/ical4j/model/component/VFreeBusy;->methodValidators:Ljava/util/Map;

    sget-object v1, Lnet/fortuna/ical4j/model/property/Method;->PUBLISH:Lnet/fortuna/ical4j/model/property/Method;

    new-instance v2, Lnet/fortuna/ical4j/model/component/VFreeBusy$PublishValidator;

    invoke-direct {v2, p0, v3}, Lnet/fortuna/ical4j/model/component/VFreeBusy$PublishValidator;-><init>(Lnet/fortuna/ical4j/model/component/VFreeBusy;Lnet/fortuna/ical4j/model/component/VFreeBusy$1;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 226
    iget-object v0, p0, Lnet/fortuna/ical4j/model/component/VFreeBusy;->methodValidators:Ljava/util/Map;

    sget-object v1, Lnet/fortuna/ical4j/model/property/Method;->REPLY:Lnet/fortuna/ical4j/model/property/Method;

    new-instance v2, Lnet/fortuna/ical4j/model/component/VFreeBusy$ReplyValidator;

    invoke-direct {v2, p0, v3}, Lnet/fortuna/ical4j/model/component/VFreeBusy$ReplyValidator;-><init>(Lnet/fortuna/ical4j/model/component/VFreeBusy;Lnet/fortuna/ical4j/model/component/VFreeBusy$1;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 227
    iget-object v0, p0, Lnet/fortuna/ical4j/model/component/VFreeBusy;->methodValidators:Ljava/util/Map;

    sget-object v1, Lnet/fortuna/ical4j/model/property/Method;->REQUEST:Lnet/fortuna/ical4j/model/property/Method;

    new-instance v2, Lnet/fortuna/ical4j/model/component/VFreeBusy$RequestValidator;

    invoke-direct {v2, p0, v3}, Lnet/fortuna/ical4j/model/component/VFreeBusy$RequestValidator;-><init>(Lnet/fortuna/ical4j/model/component/VFreeBusy;Lnet/fortuna/ical4j/model/component/VFreeBusy$1;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 244
    return-void
.end method


# virtual methods
.method protected getValidator(Lnet/fortuna/ical4j/model/property/Method;)Lnet/fortuna/ical4j/model/Validator;
    .locals 1

    .prologue
    .line 580
    iget-object v0, p0, Lnet/fortuna/ical4j/model/component/VFreeBusy;->methodValidators:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/fortuna/ical4j/model/Validator;

    return-object v0
.end method

.method public final validate(Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/fortuna/ical4j/model/ValidationException;
        }
    .end annotation

    .prologue
    .line 497
    const-string v0, "ical4j.validation.relaxed"

    invoke-static {v0}, Lnet/fortuna/ical4j/util/CompatibilityHints;->isHintEnabled(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 502
    invoke-static {}, Lnet/fortuna/ical4j/util/PropertyValidator;->getInstance()Lnet/fortuna/ical4j/util/PropertyValidator;

    move-result-object v0

    const-string v1, "UID"

    .line 503
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/component/VFreeBusy;->getProperties()Lnet/fortuna/ical4j/model/PropertyList;

    move-result-object v2

    .line 502
    invoke-virtual {v0, v1, v2}, Lnet/fortuna/ical4j/util/PropertyValidator;->assertOne(Ljava/lang/String;Lnet/fortuna/ical4j/model/PropertyList;)V

    .line 508
    invoke-static {}, Lnet/fortuna/ical4j/util/PropertyValidator;->getInstance()Lnet/fortuna/ical4j/util/PropertyValidator;

    move-result-object v0

    const-string v1, "DTSTAMP"

    .line 509
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/component/VFreeBusy;->getProperties()Lnet/fortuna/ical4j/model/PropertyList;

    move-result-object v2

    .line 508
    invoke-virtual {v0, v1, v2}, Lnet/fortuna/ical4j/util/PropertyValidator;->assertOne(Ljava/lang/String;Lnet/fortuna/ical4j/model/PropertyList;)V

    .line 512
    :cond_0
    invoke-static {}, Lnet/fortuna/ical4j/util/PropertyValidator;->getInstance()Lnet/fortuna/ical4j/util/PropertyValidator;

    move-result-object v0

    .line 518
    const-string v1, "CONTACT"

    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/component/VFreeBusy;->getProperties()Lnet/fortuna/ical4j/model/PropertyList;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lnet/fortuna/ical4j/util/PropertyValidator;->assertOneOrLess(Ljava/lang/String;Lnet/fortuna/ical4j/model/PropertyList;)V

    .line 519
    const-string v1, "DTSTART"

    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/component/VFreeBusy;->getProperties()Lnet/fortuna/ical4j/model/PropertyList;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lnet/fortuna/ical4j/util/PropertyValidator;->assertOneOrLess(Ljava/lang/String;Lnet/fortuna/ical4j/model/PropertyList;)V

    .line 520
    const-string v1, "DTEND"

    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/component/VFreeBusy;->getProperties()Lnet/fortuna/ical4j/model/PropertyList;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lnet/fortuna/ical4j/util/PropertyValidator;->assertOneOrLess(Ljava/lang/String;Lnet/fortuna/ical4j/model/PropertyList;)V

    .line 521
    const-string v1, "DURATION"

    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/component/VFreeBusy;->getProperties()Lnet/fortuna/ical4j/model/PropertyList;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lnet/fortuna/ical4j/util/PropertyValidator;->assertOneOrLess(Ljava/lang/String;Lnet/fortuna/ical4j/model/PropertyList;)V

    .line 522
    const-string v1, "DTSTAMP"

    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/component/VFreeBusy;->getProperties()Lnet/fortuna/ical4j/model/PropertyList;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lnet/fortuna/ical4j/util/PropertyValidator;->assertOneOrLess(Ljava/lang/String;Lnet/fortuna/ical4j/model/PropertyList;)V

    .line 523
    const-string v1, "ORGANIZER"

    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/component/VFreeBusy;->getProperties()Lnet/fortuna/ical4j/model/PropertyList;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lnet/fortuna/ical4j/util/PropertyValidator;->assertOneOrLess(Ljava/lang/String;Lnet/fortuna/ical4j/model/PropertyList;)V

    .line 524
    const-string v1, "UID"

    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/component/VFreeBusy;->getProperties()Lnet/fortuna/ical4j/model/PropertyList;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lnet/fortuna/ical4j/util/PropertyValidator;->assertOneOrLess(Ljava/lang/String;Lnet/fortuna/ical4j/model/PropertyList;)V

    .line 525
    const-string v1, "URL"

    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/component/VFreeBusy;->getProperties()Lnet/fortuna/ical4j/model/PropertyList;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lnet/fortuna/ical4j/util/PropertyValidator;->assertOneOrLess(Ljava/lang/String;Lnet/fortuna/ical4j/model/PropertyList;)V

    .line 536
    const-string v1, "RRULE"

    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/component/VFreeBusy;->getProperties()Lnet/fortuna/ical4j/model/PropertyList;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lnet/fortuna/ical4j/util/PropertyValidator;->assertNone(Ljava/lang/String;Lnet/fortuna/ical4j/model/PropertyList;)V

    .line 537
    const-string v1, "EXRULE"

    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/component/VFreeBusy;->getProperties()Lnet/fortuna/ical4j/model/PropertyList;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lnet/fortuna/ical4j/util/PropertyValidator;->assertNone(Ljava/lang/String;Lnet/fortuna/ical4j/model/PropertyList;)V

    .line 538
    const-string v1, "RDATE"

    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/component/VFreeBusy;->getProperties()Lnet/fortuna/ical4j/model/PropertyList;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lnet/fortuna/ical4j/util/PropertyValidator;->assertNone(Ljava/lang/String;Lnet/fortuna/ical4j/model/PropertyList;)V

    .line 539
    const-string v1, "EXDATE"

    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/component/VFreeBusy;->getProperties()Lnet/fortuna/ical4j/model/PropertyList;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lnet/fortuna/ical4j/util/PropertyValidator;->assertNone(Ljava/lang/String;Lnet/fortuna/ical4j/model/PropertyList;)V

    .line 542
    const-string v0, "DTSTART"

    invoke-virtual {p0, v0}, Lnet/fortuna/ical4j/model/component/VFreeBusy;->getProperty(Ljava/lang/String;)Lnet/fortuna/ical4j/model/Property;

    move-result-object v0

    check-cast v0, Lnet/fortuna/ical4j/model/property/DtStart;

    .line 549
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lnet/fortuna/ical4j/model/property/DtStart;->isUtc()Z

    move-result v1

    if-nez v1, :cond_1

    .line 550
    new-instance v0, Lnet/fortuna/ical4j/model/ValidationException;

    const-string v1, "DTSTART must be specified in UTC time"

    invoke-direct {v0, v1}, Lnet/fortuna/ical4j/model/ValidationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 553
    :cond_1
    const-string v1, "DTEND"

    invoke-virtual {p0, v1}, Lnet/fortuna/ical4j/model/component/VFreeBusy;->getProperty(Ljava/lang/String;)Lnet/fortuna/ical4j/model/Property;

    move-result-object v1

    check-cast v1, Lnet/fortuna/ical4j/model/property/DtEnd;

    .line 561
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lnet/fortuna/ical4j/model/property/DtEnd;->isUtc()Z

    move-result v2

    if-nez v2, :cond_2

    .line 562
    new-instance v0, Lnet/fortuna/ical4j/model/ValidationException;

    const-string v1, "DTEND must be specified in UTC time"

    invoke-direct {v0, v1}, Lnet/fortuna/ical4j/model/ValidationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 565
    :cond_2
    if-eqz v0, :cond_3

    if-eqz v1, :cond_3

    .line 566
    invoke-virtual {v0}, Lnet/fortuna/ical4j/model/property/DtStart;->getDate()Lnet/fortuna/ical4j/model/Date;

    move-result-object v0

    invoke-virtual {v1}, Lnet/fortuna/ical4j/model/property/DtEnd;->getDate()Lnet/fortuna/ical4j/model/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/fortuna/ical4j/model/Date;->before(Ljava/util/Date;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 567
    new-instance v0, Lnet/fortuna/ical4j/model/ValidationException;

    const-string v1, "Property [DTEND] must be later in time than [DTSTART]"

    invoke-direct {v0, v1}, Lnet/fortuna/ical4j/model/ValidationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 571
    :cond_3
    if-eqz p1, :cond_4

    .line 572
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/component/VFreeBusy;->validateProperties()V

    .line 574
    :cond_4
    return-void
.end method
