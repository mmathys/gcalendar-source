.class public Lnet/fortuna/ical4j/model/component/VTimeZone;
.super Lnet/fortuna/ical4j/model/component/CalendarComponent;
.source "VTimeZone.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/fortuna/ical4j/model/component/VTimeZone$ITIPValidator;
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x4e20a3e5ac8d93b7L


# instance fields
.field private final itipValidator:Lnet/fortuna/ical4j/model/Validator;

.field private observances:Lnet/fortuna/ical4j/model/ComponentList;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 141
    const-string v0, "VTIMEZONE"

    invoke-direct {p0, v0}, Lnet/fortuna/ical4j/model/component/CalendarComponent;-><init>(Ljava/lang/String;)V

    .line 133
    new-instance v0, Lnet/fortuna/ical4j/model/component/VTimeZone$ITIPValidator;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lnet/fortuna/ical4j/model/component/VTimeZone$ITIPValidator;-><init>(Lnet/fortuna/ical4j/model/component/VTimeZone;Lnet/fortuna/ical4j/model/component/VTimeZone$1;)V

    iput-object v0, p0, Lnet/fortuna/ical4j/model/component/VTimeZone;->itipValidator:Lnet/fortuna/ical4j/model/Validator;

    .line 142
    new-instance v0, Lnet/fortuna/ical4j/model/ComponentList;

    invoke-direct {v0}, Lnet/fortuna/ical4j/model/ComponentList;-><init>()V

    iput-object v0, p0, Lnet/fortuna/ical4j/model/component/VTimeZone;->observances:Lnet/fortuna/ical4j/model/ComponentList;

    .line 143
    return-void
.end method

.method public constructor <init>(Lnet/fortuna/ical4j/model/PropertyList;)V
    .locals 2

    .prologue
    .line 150
    const-string v0, "VTIMEZONE"

    invoke-direct {p0, v0, p1}, Lnet/fortuna/ical4j/model/component/CalendarComponent;-><init>(Ljava/lang/String;Lnet/fortuna/ical4j/model/PropertyList;)V

    .line 133
    new-instance v0, Lnet/fortuna/ical4j/model/component/VTimeZone$ITIPValidator;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lnet/fortuna/ical4j/model/component/VTimeZone$ITIPValidator;-><init>(Lnet/fortuna/ical4j/model/component/VTimeZone;Lnet/fortuna/ical4j/model/component/VTimeZone$1;)V

    iput-object v0, p0, Lnet/fortuna/ical4j/model/component/VTimeZone;->itipValidator:Lnet/fortuna/ical4j/model/Validator;

    .line 151
    new-instance v0, Lnet/fortuna/ical4j/model/ComponentList;

    invoke-direct {v0}, Lnet/fortuna/ical4j/model/ComponentList;-><init>()V

    iput-object v0, p0, Lnet/fortuna/ical4j/model/component/VTimeZone;->observances:Lnet/fortuna/ical4j/model/ComponentList;

    .line 152
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 349
    instance-of v0, p1, Lnet/fortuna/ical4j/model/component/VTimeZone;

    if-eqz v0, :cond_1

    .line 350
    invoke-super {p0, p1}, Lnet/fortuna/ical4j/model/component/CalendarComponent;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/fortuna/ical4j/model/component/VTimeZone;->observances:Lnet/fortuna/ical4j/model/ComponentList;

    check-cast p1, Lnet/fortuna/ical4j/model/component/VTimeZone;

    .line 352
    invoke-virtual {p1}, Lnet/fortuna/ical4j/model/component/VTimeZone;->getObservances()Lnet/fortuna/ical4j/model/ComponentList;

    move-result-object v1

    .line 351
    invoke-static {v0, v1}, Lorg/apache/commons/lang/ObjectUtils;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 354
    :goto_0
    return v0

    .line 351
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 354
    :cond_1
    invoke-super {p0, p1}, Lnet/fortuna/ical4j/model/component/CalendarComponent;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public final getApplicableObservance(Lnet/fortuna/ical4j/model/Date;)Lnet/fortuna/ical4j/model/component/Observance;
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 310
    .line 312
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/component/VTimeZone;->getObservances()Lnet/fortuna/ical4j/model/ComponentList;

    move-result-object v0

    invoke-virtual {v0}, Lnet/fortuna/ical4j/model/ComponentList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move-object v3, v1

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 313
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/fortuna/ical4j/model/component/Observance;

    .line 314
    invoke-virtual {v0, p1}, Lnet/fortuna/ical4j/model/component/Observance;->getLatestOnset(Lnet/fortuna/ical4j/model/Date;)Lnet/fortuna/ical4j/model/Date;

    move-result-object v2

    .line 315
    if-eqz v1, :cond_0

    if-eqz v2, :cond_2

    .line 316
    invoke-virtual {v2, v1}, Lnet/fortuna/ical4j/model/Date;->after(Ljava/util/Date;)Z

    move-result v5

    if-eqz v5, :cond_2

    :cond_0
    move-object v1, v0

    move-object v0, v2

    :goto_1
    move-object v3, v1

    move-object v1, v0

    .line 320
    goto :goto_0

    .line 321
    :cond_1
    return-object v3

    :cond_2
    move-object v0, v1

    move-object v1, v3

    goto :goto_1
.end method

.method public final getObservances()Lnet/fortuna/ical4j/model/ComponentList;
    .locals 1

    .prologue
    .line 300
    iget-object v0, p0, Lnet/fortuna/ical4j/model/component/VTimeZone;->observances:Lnet/fortuna/ical4j/model/ComponentList;

    return-object v0
.end method

.method public final getTimeZoneId()Lnet/fortuna/ical4j/model/property/TzId;
    .locals 1

    .prologue
    .line 328
    const-string v0, "TZID"

    invoke-virtual {p0, v0}, Lnet/fortuna/ical4j/model/component/VTimeZone;->getProperty(Ljava/lang/String;)Lnet/fortuna/ical4j/model/Property;

    move-result-object v0

    check-cast v0, Lnet/fortuna/ical4j/model/property/TzId;

    return-object v0
.end method

.method public final getTimeZoneUrl()Lnet/fortuna/ical4j/model/property/TzUrl;
    .locals 1

    .prologue
    .line 342
    const-string v0, "TZURL"

    invoke-virtual {p0, v0}, Lnet/fortuna/ical4j/model/component/VTimeZone;->getProperty(Ljava/lang/String;)Lnet/fortuna/ical4j/model/Property;

    move-result-object v0

    check-cast v0, Lnet/fortuna/ical4j/model/property/TzUrl;

    return-object v0
.end method

.method protected getValidator(Lnet/fortuna/ical4j/model/property/Method;)Lnet/fortuna/ical4j/model/Validator;
    .locals 1

    .prologue
    .line 239
    iget-object v0, p0, Lnet/fortuna/ical4j/model/component/VTimeZone;->itipValidator:Lnet/fortuna/ical4j/model/Validator;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 361
    new-instance v0, Lorg/apache/commons/lang/builder/HashCodeBuilder;

    invoke-direct {v0}, Lorg/apache/commons/lang/builder/HashCodeBuilder;-><init>()V

    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/component/VTimeZone;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/commons/lang/builder/HashCodeBuilder;->append(Ljava/lang/Object;)Lorg/apache/commons/lang/builder/HashCodeBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/component/VTimeZone;->getProperties()Lnet/fortuna/ical4j/model/PropertyList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/commons/lang/builder/HashCodeBuilder;->append(Ljava/lang/Object;)Lorg/apache/commons/lang/builder/HashCodeBuilder;

    move-result-object v0

    .line 362
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/component/VTimeZone;->getObservances()Lnet/fortuna/ical4j/model/ComponentList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/commons/lang/builder/HashCodeBuilder;->append(Ljava/lang/Object;)Lorg/apache/commons/lang/builder/HashCodeBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/lang/builder/HashCodeBuilder;->toHashCode()I

    move-result v0

    .line 361
    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .prologue
    const/16 v2, 0x3a

    .line 178
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 179
    const-string v1, "BEGIN"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 180
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 181
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/component/VTimeZone;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 182
    const-string v1, "\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 183
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/component/VTimeZone;->getProperties()Lnet/fortuna/ical4j/model/PropertyList;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 184
    iget-object v1, p0, Lnet/fortuna/ical4j/model/component/VTimeZone;->observances:Lnet/fortuna/ical4j/model/ComponentList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 185
    const-string v1, "END"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 186
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 187
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/component/VTimeZone;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 188
    const-string v1, "\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 189
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

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
    .line 201
    invoke-static {}, Lnet/fortuna/ical4j/util/PropertyValidator;->getInstance()Lnet/fortuna/ical4j/util/PropertyValidator;

    move-result-object v0

    const-string v1, "TZID"

    .line 202
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/component/VTimeZone;->getProperties()Lnet/fortuna/ical4j/model/PropertyList;

    move-result-object v2

    .line 201
    invoke-virtual {v0, v1, v2}, Lnet/fortuna/ical4j/util/PropertyValidator;->assertOne(Ljava/lang/String;Lnet/fortuna/ical4j/model/PropertyList;)V

    .line 207
    invoke-static {}, Lnet/fortuna/ical4j/util/PropertyValidator;->getInstance()Lnet/fortuna/ical4j/util/PropertyValidator;

    move-result-object v0

    const-string v1, "LAST-MODIFIED"

    .line 208
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/component/VTimeZone;->getProperties()Lnet/fortuna/ical4j/model/PropertyList;

    move-result-object v2

    .line 207
    invoke-virtual {v0, v1, v2}, Lnet/fortuna/ical4j/util/PropertyValidator;->assertOneOrLess(Ljava/lang/String;Lnet/fortuna/ical4j/model/PropertyList;)V

    .line 209
    invoke-static {}, Lnet/fortuna/ical4j/util/PropertyValidator;->getInstance()Lnet/fortuna/ical4j/util/PropertyValidator;

    move-result-object v0

    const-string v1, "TZURL"

    .line 210
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/component/VTimeZone;->getProperties()Lnet/fortuna/ical4j/model/PropertyList;

    move-result-object v2

    .line 209
    invoke-virtual {v0, v1, v2}, Lnet/fortuna/ical4j/util/PropertyValidator;->assertOneOrLess(Ljava/lang/String;Lnet/fortuna/ical4j/model/PropertyList;)V

    .line 215
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/component/VTimeZone;->getObservances()Lnet/fortuna/ical4j/model/ComponentList;

    move-result-object v0

    const-string v1, "STANDARD"

    invoke-virtual {v0, v1}, Lnet/fortuna/ical4j/model/ComponentList;->getComponent(Ljava/lang/String;)Lnet/fortuna/ical4j/model/Component;

    move-result-object v0

    if-nez v0, :cond_0

    .line 216
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/component/VTimeZone;->getObservances()Lnet/fortuna/ical4j/model/ComponentList;

    move-result-object v0

    const-string v1, "DAYLIGHT"

    invoke-virtual {v0, v1}, Lnet/fortuna/ical4j/model/ComponentList;->getComponent(Ljava/lang/String;)Lnet/fortuna/ical4j/model/Component;

    move-result-object v0

    if-nez v0, :cond_0

    .line 217
    new-instance v0, Lnet/fortuna/ical4j/model/ValidationException;

    const-string v1, "Sub-components [STANDARD,DAYLIGHT] must be specified at least once"

    invoke-direct {v0, v1}, Lnet/fortuna/ical4j/model/ValidationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 222
    :cond_0
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/component/VTimeZone;->getObservances()Lnet/fortuna/ical4j/model/ComponentList;

    move-result-object v0

    invoke-virtual {v0}, Lnet/fortuna/ical4j/model/ComponentList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 223
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/fortuna/ical4j/model/Component;

    invoke-virtual {v0, p1}, Lnet/fortuna/ical4j/model/Component;->validate(Z)V

    goto :goto_0

    .line 230
    :cond_1
    if-eqz p1, :cond_2

    .line 231
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/component/VTimeZone;->validateProperties()V

    .line 233
    :cond_2
    return-void
.end method
