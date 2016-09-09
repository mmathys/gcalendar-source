.class public Lnet/fortuna/ical4j/model/Calendar;
.super Ljava/lang/Object;
.source "Calendar.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x16f49bbe465faeb4L


# instance fields
.field private components:Lnet/fortuna/ical4j/model/ComponentList;

.field private properties:Lnet/fortuna/ical4j/model/PropertyList;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 148
    new-instance v0, Lnet/fortuna/ical4j/model/PropertyList;

    invoke-direct {v0}, Lnet/fortuna/ical4j/model/PropertyList;-><init>()V

    new-instance v1, Lnet/fortuna/ical4j/model/ComponentList;

    invoke-direct {v1}, Lnet/fortuna/ical4j/model/ComponentList;-><init>()V

    invoke-direct {p0, v0, v1}, Lnet/fortuna/ical4j/model/Calendar;-><init>(Lnet/fortuna/ical4j/model/PropertyList;Lnet/fortuna/ical4j/model/ComponentList;)V

    .line 149
    return-void
.end method

.method public constructor <init>(Lnet/fortuna/ical4j/model/PropertyList;Lnet/fortuna/ical4j/model/ComponentList;)V
    .locals 0

    .prologue
    .line 164
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 165
    iput-object p1, p0, Lnet/fortuna/ical4j/model/Calendar;->properties:Lnet/fortuna/ical4j/model/PropertyList;

    .line 166
    iput-object p2, p0, Lnet/fortuna/ical4j/model/Calendar;->components:Lnet/fortuna/ical4j/model/ComponentList;

    .line 167
    return-void
.end method

.method private validateComponents()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/fortuna/ical4j/model/ValidationException;
        }
    .end annotation

    .prologue
    .line 498
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/Calendar;->getComponents()Lnet/fortuna/ical4j/model/ComponentList;

    move-result-object v0

    invoke-virtual {v0}, Lnet/fortuna/ical4j/model/ComponentList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 499
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/fortuna/ical4j/model/Component;

    .line 500
    invoke-virtual {v0}, Lnet/fortuna/ical4j/model/Component;->validate()V

    goto :goto_0

    .line 502
    :cond_0
    return-void
.end method

.method private validateProperties()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/fortuna/ical4j/model/ValidationException;
        }
    .end annotation

    .prologue
    .line 487
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/Calendar;->getProperties()Lnet/fortuna/ical4j/model/PropertyList;

    move-result-object v0

    invoke-virtual {v0}, Lnet/fortuna/ical4j/model/PropertyList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 488
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/fortuna/ical4j/model/Property;

    .line 489
    invoke-virtual {v0}, Lnet/fortuna/ical4j/model/Property;->validate()V

    goto :goto_0

    .line 491
    :cond_0
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    .line 540
    instance-of v0, p1, Lnet/fortuna/ical4j/model/Calendar;

    if-eqz v0, :cond_0

    .line 541
    check-cast p1, Lnet/fortuna/ical4j/model/Calendar;

    .line 542
    new-instance v0, Lorg/apache/commons/lang/builder/EqualsBuilder;

    invoke-direct {v0}, Lorg/apache/commons/lang/builder/EqualsBuilder;-><init>()V

    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/Calendar;->getProperties()Lnet/fortuna/ical4j/model/PropertyList;

    move-result-object v1

    invoke-virtual {p1}, Lnet/fortuna/ical4j/model/Calendar;->getProperties()Lnet/fortuna/ical4j/model/PropertyList;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/lang/builder/EqualsBuilder;->append(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/commons/lang/builder/EqualsBuilder;

    move-result-object v0

    .line 543
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/Calendar;->getComponents()Lnet/fortuna/ical4j/model/ComponentList;

    move-result-object v1

    invoke-virtual {p1}, Lnet/fortuna/ical4j/model/Calendar;->getComponents()Lnet/fortuna/ical4j/model/ComponentList;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/lang/builder/EqualsBuilder;->append(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/commons/lang/builder/EqualsBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/lang/builder/EqualsBuilder;->isEquals()Z

    move-result v0

    .line 545
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public final getComponent(Ljava/lang/String;)Lnet/fortuna/ical4j/model/Component;
    .locals 1

    .prologue
    .line 224
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/Calendar;->getComponents()Lnet/fortuna/ical4j/model/ComponentList;

    move-result-object v0

    invoke-virtual {v0, p1}, Lnet/fortuna/ical4j/model/ComponentList;->getComponent(Ljava/lang/String;)Lnet/fortuna/ical4j/model/Component;

    move-result-object v0

    return-object v0
.end method

.method public final getComponents()Lnet/fortuna/ical4j/model/ComponentList;
    .locals 1

    .prologue
    .line 206
    iget-object v0, p0, Lnet/fortuna/ical4j/model/Calendar;->components:Lnet/fortuna/ical4j/model/ComponentList;

    return-object v0
.end method

.method public final getComponents(Ljava/lang/String;)Lnet/fortuna/ical4j/model/ComponentList;
    .locals 1

    .prologue
    .line 215
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/Calendar;->getComponents()Lnet/fortuna/ical4j/model/ComponentList;

    move-result-object v0

    invoke-virtual {v0, p1}, Lnet/fortuna/ical4j/model/ComponentList;->getComponents(Ljava/lang/String;)Lnet/fortuna/ical4j/model/ComponentList;

    move-result-object v0

    return-object v0
.end method

.method public final getMethod()Lnet/fortuna/ical4j/model/property/Method;
    .locals 1

    .prologue
    .line 533
    const-string v0, "METHOD"

    invoke-virtual {p0, v0}, Lnet/fortuna/ical4j/model/Calendar;->getProperty(Ljava/lang/String;)Lnet/fortuna/ical4j/model/Property;

    move-result-object v0

    check-cast v0, Lnet/fortuna/ical4j/model/property/Method;

    return-object v0
.end method

.method public final getProperties()Lnet/fortuna/ical4j/model/PropertyList;
    .locals 1

    .prologue
    .line 231
    iget-object v0, p0, Lnet/fortuna/ical4j/model/Calendar;->properties:Lnet/fortuna/ical4j/model/PropertyList;

    return-object v0
.end method

.method public final getProperty(Ljava/lang/String;)Lnet/fortuna/ical4j/model/Property;
    .locals 1

    .prologue
    .line 249
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/Calendar;->getProperties()Lnet/fortuna/ical4j/model/PropertyList;

    move-result-object v0

    invoke-virtual {v0, p1}, Lnet/fortuna/ical4j/model/PropertyList;->getProperty(Ljava/lang/String;)Lnet/fortuna/ical4j/model/Property;

    move-result-object v0

    return-object v0
.end method

.method public final hashCode()I
    .locals 2

    .prologue
    .line 552
    new-instance v0, Lorg/apache/commons/lang/builder/HashCodeBuilder;

    invoke-direct {v0}, Lorg/apache/commons/lang/builder/HashCodeBuilder;-><init>()V

    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/Calendar;->getProperties()Lnet/fortuna/ical4j/model/PropertyList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/commons/lang/builder/HashCodeBuilder;->append(Ljava/lang/Object;)Lorg/apache/commons/lang/builder/HashCodeBuilder;

    move-result-object v0

    .line 553
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/Calendar;->getComponents()Lnet/fortuna/ical4j/model/ComponentList;

    move-result-object v1

    .line 552
    invoke-virtual {v0, v1}, Lorg/apache/commons/lang/builder/HashCodeBuilder;->append(Ljava/lang/Object;)Lorg/apache/commons/lang/builder/HashCodeBuilder;

    move-result-object v0

    .line 553
    invoke-virtual {v0}, Lorg/apache/commons/lang/builder/HashCodeBuilder;->toHashCode()I

    move-result v0

    .line 552
    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .prologue
    const/16 v2, 0x3a

    .line 187
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 188
    const-string v1, "BEGIN"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 189
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 190
    const-string v1, "VCALENDAR"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 191
    const-string v1, "\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 192
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/Calendar;->getProperties()Lnet/fortuna/ical4j/model/PropertyList;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 193
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/Calendar;->getComponents()Lnet/fortuna/ical4j/model/ComponentList;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 194
    const-string v1, "END"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 195
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 196
    const-string v1, "VCALENDAR"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 197
    const-string v1, "\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 199
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final validate()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/fortuna/ical4j/model/ValidationException;
        }
    .end annotation

    .prologue
    .line 257
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lnet/fortuna/ical4j/model/Calendar;->validate(Z)V

    .line 258
    return-void
.end method

.method public validate(Z)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/fortuna/ical4j/model/ValidationException;
        }
    .end annotation

    .prologue
    .line 268
    invoke-static {}, Lnet/fortuna/ical4j/util/PropertyValidator;->getInstance()Lnet/fortuna/ical4j/util/PropertyValidator;

    move-result-object v0

    const-string v1, "PRODID"

    iget-object v2, p0, Lnet/fortuna/ical4j/model/Calendar;->properties:Lnet/fortuna/ical4j/model/PropertyList;

    invoke-virtual {v0, v1, v2}, Lnet/fortuna/ical4j/util/PropertyValidator;->assertOne(Ljava/lang/String;Lnet/fortuna/ical4j/model/PropertyList;)V

    .line 269
    invoke-static {}, Lnet/fortuna/ical4j/util/PropertyValidator;->getInstance()Lnet/fortuna/ical4j/util/PropertyValidator;

    move-result-object v0

    const-string v1, "VERSION"

    iget-object v2, p0, Lnet/fortuna/ical4j/model/Calendar;->properties:Lnet/fortuna/ical4j/model/PropertyList;

    invoke-virtual {v0, v1, v2}, Lnet/fortuna/ical4j/util/PropertyValidator;->assertOne(Ljava/lang/String;Lnet/fortuna/ical4j/model/PropertyList;)V

    .line 271
    const-string v0, "ical4j.validation.relaxed"

    invoke-static {v0}, Lnet/fortuna/ical4j/util/CompatibilityHints;->isHintEnabled(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 273
    sget-object v0, Lnet/fortuna/ical4j/model/property/Version;->VERSION_2_0:Lnet/fortuna/ical4j/model/property/Version;

    const-string v1, "VERSION"

    invoke-virtual {p0, v1}, Lnet/fortuna/ical4j/model/Calendar;->getProperty(Ljava/lang/String;)Lnet/fortuna/ical4j/model/Property;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/fortuna/ical4j/model/property/Version;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 274
    new-instance v1, Lnet/fortuna/ical4j/model/ValidationException;

    const-string v2, "Unsupported Version: "

    const-string v0, "VERSION"

    invoke-virtual {p0, v0}, Lnet/fortuna/ical4j/model/Calendar;->getProperty(Ljava/lang/String;)Lnet/fortuna/ical4j/model/Property;

    move-result-object v0

    invoke-virtual {v0}, Lnet/fortuna/ical4j/model/Property;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-direct {v1, v0}, Lnet/fortuna/ical4j/model/ValidationException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 280
    :cond_1
    invoke-static {}, Lnet/fortuna/ical4j/util/PropertyValidator;->getInstance()Lnet/fortuna/ical4j/util/PropertyValidator;

    move-result-object v0

    const-string v1, "CALSCALE"

    iget-object v2, p0, Lnet/fortuna/ical4j/model/Calendar;->properties:Lnet/fortuna/ical4j/model/PropertyList;

    invoke-virtual {v0, v1, v2}, Lnet/fortuna/ical4j/util/PropertyValidator;->assertOneOrLess(Ljava/lang/String;Lnet/fortuna/ical4j/model/PropertyList;)V

    .line 282
    invoke-static {}, Lnet/fortuna/ical4j/util/PropertyValidator;->getInstance()Lnet/fortuna/ical4j/util/PropertyValidator;

    move-result-object v0

    const-string v1, "METHOD"

    iget-object v2, p0, Lnet/fortuna/ical4j/model/Calendar;->properties:Lnet/fortuna/ical4j/model/PropertyList;

    invoke-virtual {v0, v1, v2}, Lnet/fortuna/ical4j/util/PropertyValidator;->assertOneOrLess(Ljava/lang/String;Lnet/fortuna/ical4j/model/PropertyList;)V

    .line 286
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/Calendar;->getComponents()Lnet/fortuna/ical4j/model/ComponentList;

    move-result-object v0

    invoke-virtual {v0}, Lnet/fortuna/ical4j/model/ComponentList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 287
    new-instance v0, Lnet/fortuna/ical4j/model/ValidationException;

    const-string v1, "Calendar must contain at least one component"

    invoke-direct {v0, v1}, Lnet/fortuna/ical4j/model/ValidationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 292
    :cond_2
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/Calendar;->getProperties()Lnet/fortuna/ical4j/model/PropertyList;

    move-result-object v0

    invoke-virtual {v0}, Lnet/fortuna/ical4j/model/PropertyList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 293
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/fortuna/ical4j/model/Property;

    .line 295
    instance-of v2, v0, Lnet/fortuna/ical4j/model/property/XProperty;

    if-nez v2, :cond_3

    .line 296
    invoke-virtual {v0}, Lnet/fortuna/ical4j/model/Property;->isCalendarProperty()Z

    move-result v2

    if-nez v2, :cond_3

    .line 297
    new-instance v1, Lnet/fortuna/ical4j/model/ValidationException;

    const-string v2, "Invalid property: "

    .line 298
    invoke-virtual {v0}, Lnet/fortuna/ical4j/model/Property;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-direct {v1, v0}, Lnet/fortuna/ical4j/model/ValidationException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_4
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_1

    .line 303
    :cond_5
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/Calendar;->getComponents()Lnet/fortuna/ical4j/model/ComponentList;

    move-result-object v0

    invoke-virtual {v0}, Lnet/fortuna/ical4j/model/ComponentList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 304
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/fortuna/ical4j/model/Component;

    .line 305
    instance-of v2, v0, Lnet/fortuna/ical4j/model/component/CalendarComponent;

    if-nez v2, :cond_6

    .line 306
    new-instance v1, Lnet/fortuna/ical4j/model/ValidationException;

    const-string v2, "Not a valid calendar component: "

    invoke-virtual {v0}, Lnet/fortuna/ical4j/model/Component;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_7

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_2
    invoke-direct {v1, v0}, Lnet/fortuna/ical4j/model/ValidationException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_7
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_2

    .line 312
    :cond_8
    const-string v0, "METHOD"

    invoke-virtual {p0, v0}, Lnet/fortuna/ical4j/model/Calendar;->getProperty(Ljava/lang/String;)Lnet/fortuna/ical4j/model/Property;

    move-result-object v0

    check-cast v0, Lnet/fortuna/ical4j/model/property/Method;

    .line 313
    sget-object v1, Lnet/fortuna/ical4j/model/property/Method;->PUBLISH:Lnet/fortuna/ical4j/model/property/Method;

    invoke-virtual {v1, v0}, Lnet/fortuna/ical4j/model/property/Method;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 314
    const-string v1, "VEVENT"

    invoke-virtual {p0, v1}, Lnet/fortuna/ical4j/model/Calendar;->getComponent(Ljava/lang/String;)Lnet/fortuna/ical4j/model/Component;

    move-result-object v1

    if-eqz v1, :cond_a

    .line 315
    const-string v1, "VFREEBUSY"

    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/Calendar;->getComponents()Lnet/fortuna/ical4j/model/ComponentList;

    move-result-object v2

    invoke-static {v1, v2}, Lnet/fortuna/ical4j/util/ComponentValidator;->assertNone(Ljava/lang/String;Lnet/fortuna/ical4j/model/ComponentList;)V

    .line 316
    const-string v1, "VJOURNAL"

    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/Calendar;->getComponents()Lnet/fortuna/ical4j/model/ComponentList;

    move-result-object v2

    invoke-static {v1, v2}, Lnet/fortuna/ical4j/util/ComponentValidator;->assertNone(Ljava/lang/String;Lnet/fortuna/ical4j/model/ComponentList;)V

    .line 318
    const-string v1, "ical4j.validation.relaxed"

    invoke-static {v1}, Lnet/fortuna/ical4j/util/CompatibilityHints;->isHintEnabled(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_9

    .line 319
    const-string v1, "VTODO"

    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/Calendar;->getComponents()Lnet/fortuna/ical4j/model/ComponentList;

    move-result-object v2

    invoke-static {v1, v2}, Lnet/fortuna/ical4j/util/ComponentValidator;->assertNone(Ljava/lang/String;Lnet/fortuna/ical4j/model/ComponentList;)V

    .line 469
    :cond_9
    :goto_3
    if-eqz v0, :cond_1f

    .line 470
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/Calendar;->getComponents()Lnet/fortuna/ical4j/model/ComponentList;

    move-result-object v1

    invoke-virtual {v1}, Lnet/fortuna/ical4j/model/ComponentList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1f

    .line 471
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/fortuna/ical4j/model/component/CalendarComponent;

    .line 472
    invoke-virtual {v1, v0}, Lnet/fortuna/ical4j/model/component/CalendarComponent;->validate(Lnet/fortuna/ical4j/model/property/Method;)V

    goto :goto_4

    .line 322
    :cond_a
    const-string v1, "VFREEBUSY"

    invoke-virtual {p0, v1}, Lnet/fortuna/ical4j/model/Calendar;->getComponent(Ljava/lang/String;)Lnet/fortuna/ical4j/model/Component;

    move-result-object v1

    if-eqz v1, :cond_b

    .line 323
    const-string v1, "VTODO"

    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/Calendar;->getComponents()Lnet/fortuna/ical4j/model/ComponentList;

    move-result-object v2

    invoke-static {v1, v2}, Lnet/fortuna/ical4j/util/ComponentValidator;->assertNone(Ljava/lang/String;Lnet/fortuna/ical4j/model/ComponentList;)V

    .line 324
    const-string v1, "VJOURNAL"

    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/Calendar;->getComponents()Lnet/fortuna/ical4j/model/ComponentList;

    move-result-object v2

    invoke-static {v1, v2}, Lnet/fortuna/ical4j/util/ComponentValidator;->assertNone(Ljava/lang/String;Lnet/fortuna/ical4j/model/ComponentList;)V

    .line 325
    const-string v1, "VTIMEZONE"

    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/Calendar;->getComponents()Lnet/fortuna/ical4j/model/ComponentList;

    move-result-object v2

    invoke-static {v1, v2}, Lnet/fortuna/ical4j/util/ComponentValidator;->assertNone(Ljava/lang/String;Lnet/fortuna/ical4j/model/ComponentList;)V

    .line 326
    const-string v1, "VALARM"

    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/Calendar;->getComponents()Lnet/fortuna/ical4j/model/ComponentList;

    move-result-object v2

    invoke-static {v1, v2}, Lnet/fortuna/ical4j/util/ComponentValidator;->assertNone(Ljava/lang/String;Lnet/fortuna/ical4j/model/ComponentList;)V

    goto :goto_3

    .line 328
    :cond_b
    const-string v1, "VTODO"

    invoke-virtual {p0, v1}, Lnet/fortuna/ical4j/model/Calendar;->getComponent(Ljava/lang/String;)Lnet/fortuna/ical4j/model/Component;

    move-result-object v1

    if-eqz v1, :cond_c

    .line 331
    const-string v1, "VJOURNAL"

    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/Calendar;->getComponents()Lnet/fortuna/ical4j/model/ComponentList;

    move-result-object v2

    invoke-static {v1, v2}, Lnet/fortuna/ical4j/util/ComponentValidator;->assertNone(Ljava/lang/String;Lnet/fortuna/ical4j/model/ComponentList;)V

    goto :goto_3

    .line 333
    :cond_c
    const-string v1, "VJOURNAL"

    invoke-virtual {p0, v1}, Lnet/fortuna/ical4j/model/Calendar;->getComponent(Ljava/lang/String;)Lnet/fortuna/ical4j/model/Component;

    move-result-object v1

    if-eqz v1, :cond_9

    goto :goto_3

    .line 339
    :cond_d
    sget-object v1, Lnet/fortuna/ical4j/model/property/Method;->REQUEST:Lnet/fortuna/ical4j/model/property/Method;

    const-string v2, "METHOD"

    invoke-virtual {p0, v2}, Lnet/fortuna/ical4j/model/Calendar;->getProperty(Ljava/lang/String;)Lnet/fortuna/ical4j/model/Property;

    move-result-object v2

    invoke-virtual {v1, v2}, Lnet/fortuna/ical4j/model/property/Method;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 340
    const-string v1, "VEVENT"

    invoke-virtual {p0, v1}, Lnet/fortuna/ical4j/model/Calendar;->getComponent(Ljava/lang/String;)Lnet/fortuna/ical4j/model/Component;

    move-result-object v1

    if-eqz v1, :cond_e

    .line 341
    const-string v1, "VFREEBUSY"

    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/Calendar;->getComponents()Lnet/fortuna/ical4j/model/ComponentList;

    move-result-object v2

    invoke-static {v1, v2}, Lnet/fortuna/ical4j/util/ComponentValidator;->assertNone(Ljava/lang/String;Lnet/fortuna/ical4j/model/ComponentList;)V

    .line 342
    const-string v1, "VJOURNAL"

    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/Calendar;->getComponents()Lnet/fortuna/ical4j/model/ComponentList;

    move-result-object v2

    invoke-static {v1, v2}, Lnet/fortuna/ical4j/util/ComponentValidator;->assertNone(Ljava/lang/String;Lnet/fortuna/ical4j/model/ComponentList;)V

    .line 343
    const-string v1, "VTODO"

    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/Calendar;->getComponents()Lnet/fortuna/ical4j/model/ComponentList;

    move-result-object v2

    invoke-static {v1, v2}, Lnet/fortuna/ical4j/util/ComponentValidator;->assertNone(Ljava/lang/String;Lnet/fortuna/ical4j/model/ComponentList;)V

    goto/16 :goto_3

    .line 345
    :cond_e
    const-string v1, "VFREEBUSY"

    invoke-virtual {p0, v1}, Lnet/fortuna/ical4j/model/Calendar;->getComponent(Ljava/lang/String;)Lnet/fortuna/ical4j/model/Component;

    move-result-object v1

    if-eqz v1, :cond_f

    .line 346
    const-string v1, "VTODO"

    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/Calendar;->getComponents()Lnet/fortuna/ical4j/model/ComponentList;

    move-result-object v2

    invoke-static {v1, v2}, Lnet/fortuna/ical4j/util/ComponentValidator;->assertNone(Ljava/lang/String;Lnet/fortuna/ical4j/model/ComponentList;)V

    .line 347
    const-string v1, "VJOURNAL"

    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/Calendar;->getComponents()Lnet/fortuna/ical4j/model/ComponentList;

    move-result-object v2

    invoke-static {v1, v2}, Lnet/fortuna/ical4j/util/ComponentValidator;->assertNone(Ljava/lang/String;Lnet/fortuna/ical4j/model/ComponentList;)V

    .line 348
    const-string v1, "VTIMEZONE"

    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/Calendar;->getComponents()Lnet/fortuna/ical4j/model/ComponentList;

    move-result-object v2

    invoke-static {v1, v2}, Lnet/fortuna/ical4j/util/ComponentValidator;->assertNone(Ljava/lang/String;Lnet/fortuna/ical4j/model/ComponentList;)V

    .line 349
    const-string v1, "VALARM"

    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/Calendar;->getComponents()Lnet/fortuna/ical4j/model/ComponentList;

    move-result-object v2

    invoke-static {v1, v2}, Lnet/fortuna/ical4j/util/ComponentValidator;->assertNone(Ljava/lang/String;Lnet/fortuna/ical4j/model/ComponentList;)V

    goto/16 :goto_3

    .line 351
    :cond_f
    const-string v1, "VTODO"

    invoke-virtual {p0, v1}, Lnet/fortuna/ical4j/model/Calendar;->getComponent(Ljava/lang/String;)Lnet/fortuna/ical4j/model/Component;

    move-result-object v1

    if-eqz v1, :cond_9

    .line 354
    const-string v1, "VJOURNAL"

    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/Calendar;->getComponents()Lnet/fortuna/ical4j/model/ComponentList;

    move-result-object v2

    invoke-static {v1, v2}, Lnet/fortuna/ical4j/util/ComponentValidator;->assertNone(Ljava/lang/String;Lnet/fortuna/ical4j/model/ComponentList;)V

    goto/16 :goto_3

    .line 357
    :cond_10
    sget-object v1, Lnet/fortuna/ical4j/model/property/Method;->REPLY:Lnet/fortuna/ical4j/model/property/Method;

    const-string v2, "METHOD"

    invoke-virtual {p0, v2}, Lnet/fortuna/ical4j/model/Calendar;->getProperty(Ljava/lang/String;)Lnet/fortuna/ical4j/model/Property;

    move-result-object v2

    invoke-virtual {v1, v2}, Lnet/fortuna/ical4j/model/property/Method;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 358
    const-string v1, "VEVENT"

    invoke-virtual {p0, v1}, Lnet/fortuna/ical4j/model/Calendar;->getComponent(Ljava/lang/String;)Lnet/fortuna/ical4j/model/Component;

    move-result-object v1

    if-eqz v1, :cond_11

    .line 359
    const-string v1, "VTIMEZONE"

    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/Calendar;->getComponents()Lnet/fortuna/ical4j/model/ComponentList;

    move-result-object v2

    invoke-static {v1, v2}, Lnet/fortuna/ical4j/util/ComponentValidator;->assertOneOrLess(Ljava/lang/String;Lnet/fortuna/ical4j/model/ComponentList;)V

    .line 361
    const-string v1, "VALARM"

    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/Calendar;->getComponents()Lnet/fortuna/ical4j/model/ComponentList;

    move-result-object v2

    invoke-static {v1, v2}, Lnet/fortuna/ical4j/util/ComponentValidator;->assertNone(Ljava/lang/String;Lnet/fortuna/ical4j/model/ComponentList;)V

    .line 362
    const-string v1, "VFREEBUSY"

    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/Calendar;->getComponents()Lnet/fortuna/ical4j/model/ComponentList;

    move-result-object v2

    invoke-static {v1, v2}, Lnet/fortuna/ical4j/util/ComponentValidator;->assertNone(Ljava/lang/String;Lnet/fortuna/ical4j/model/ComponentList;)V

    .line 363
    const-string v1, "VJOURNAL"

    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/Calendar;->getComponents()Lnet/fortuna/ical4j/model/ComponentList;

    move-result-object v2

    invoke-static {v1, v2}, Lnet/fortuna/ical4j/util/ComponentValidator;->assertNone(Ljava/lang/String;Lnet/fortuna/ical4j/model/ComponentList;)V

    .line 364
    const-string v1, "VTODO"

    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/Calendar;->getComponents()Lnet/fortuna/ical4j/model/ComponentList;

    move-result-object v2

    invoke-static {v1, v2}, Lnet/fortuna/ical4j/util/ComponentValidator;->assertNone(Ljava/lang/String;Lnet/fortuna/ical4j/model/ComponentList;)V

    goto/16 :goto_3

    .line 366
    :cond_11
    const-string v1, "VFREEBUSY"

    invoke-virtual {p0, v1}, Lnet/fortuna/ical4j/model/Calendar;->getComponent(Ljava/lang/String;)Lnet/fortuna/ical4j/model/Component;

    move-result-object v1

    if-eqz v1, :cond_12

    .line 367
    const-string v1, "VTODO"

    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/Calendar;->getComponents()Lnet/fortuna/ical4j/model/ComponentList;

    move-result-object v2

    invoke-static {v1, v2}, Lnet/fortuna/ical4j/util/ComponentValidator;->assertNone(Ljava/lang/String;Lnet/fortuna/ical4j/model/ComponentList;)V

    .line 368
    const-string v1, "VJOURNAL"

    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/Calendar;->getComponents()Lnet/fortuna/ical4j/model/ComponentList;

    move-result-object v2

    invoke-static {v1, v2}, Lnet/fortuna/ical4j/util/ComponentValidator;->assertNone(Ljava/lang/String;Lnet/fortuna/ical4j/model/ComponentList;)V

    .line 369
    const-string v1, "VTIMEZONE"

    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/Calendar;->getComponents()Lnet/fortuna/ical4j/model/ComponentList;

    move-result-object v2

    invoke-static {v1, v2}, Lnet/fortuna/ical4j/util/ComponentValidator;->assertNone(Ljava/lang/String;Lnet/fortuna/ical4j/model/ComponentList;)V

    .line 370
    const-string v1, "VALARM"

    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/Calendar;->getComponents()Lnet/fortuna/ical4j/model/ComponentList;

    move-result-object v2

    invoke-static {v1, v2}, Lnet/fortuna/ical4j/util/ComponentValidator;->assertNone(Ljava/lang/String;Lnet/fortuna/ical4j/model/ComponentList;)V

    goto/16 :goto_3

    .line 372
    :cond_12
    const-string v1, "VTODO"

    invoke-virtual {p0, v1}, Lnet/fortuna/ical4j/model/Calendar;->getComponent(Ljava/lang/String;)Lnet/fortuna/ical4j/model/Component;

    move-result-object v1

    if-eqz v1, :cond_9

    .line 373
    const-string v1, "VTIMEZONE"

    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/Calendar;->getComponents()Lnet/fortuna/ical4j/model/ComponentList;

    move-result-object v2

    invoke-static {v1, v2}, Lnet/fortuna/ical4j/util/ComponentValidator;->assertOneOrLess(Ljava/lang/String;Lnet/fortuna/ical4j/model/ComponentList;)V

    .line 375
    const-string v1, "VALARM"

    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/Calendar;->getComponents()Lnet/fortuna/ical4j/model/ComponentList;

    move-result-object v2

    invoke-static {v1, v2}, Lnet/fortuna/ical4j/util/ComponentValidator;->assertNone(Ljava/lang/String;Lnet/fortuna/ical4j/model/ComponentList;)V

    .line 378
    const-string v1, "VJOURNAL"

    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/Calendar;->getComponents()Lnet/fortuna/ical4j/model/ComponentList;

    move-result-object v2

    invoke-static {v1, v2}, Lnet/fortuna/ical4j/util/ComponentValidator;->assertNone(Ljava/lang/String;Lnet/fortuna/ical4j/model/ComponentList;)V

    goto/16 :goto_3

    .line 381
    :cond_13
    sget-object v1, Lnet/fortuna/ical4j/model/property/Method;->ADD:Lnet/fortuna/ical4j/model/property/Method;

    const-string v2, "METHOD"

    invoke-virtual {p0, v2}, Lnet/fortuna/ical4j/model/Calendar;->getProperty(Ljava/lang/String;)Lnet/fortuna/ical4j/model/Property;

    move-result-object v2

    invoke-virtual {v1, v2}, Lnet/fortuna/ical4j/model/property/Method;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_16

    .line 382
    const-string v1, "VEVENT"

    invoke-virtual {p0, v1}, Lnet/fortuna/ical4j/model/Calendar;->getComponent(Ljava/lang/String;)Lnet/fortuna/ical4j/model/Component;

    move-result-object v1

    if-eqz v1, :cond_14

    .line 383
    const-string v1, "VFREEBUSY"

    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/Calendar;->getComponents()Lnet/fortuna/ical4j/model/ComponentList;

    move-result-object v2

    invoke-static {v1, v2}, Lnet/fortuna/ical4j/util/ComponentValidator;->assertNone(Ljava/lang/String;Lnet/fortuna/ical4j/model/ComponentList;)V

    .line 384
    const-string v1, "VJOURNAL"

    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/Calendar;->getComponents()Lnet/fortuna/ical4j/model/ComponentList;

    move-result-object v2

    invoke-static {v1, v2}, Lnet/fortuna/ical4j/util/ComponentValidator;->assertNone(Ljava/lang/String;Lnet/fortuna/ical4j/model/ComponentList;)V

    .line 385
    const-string v1, "VTODO"

    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/Calendar;->getComponents()Lnet/fortuna/ical4j/model/ComponentList;

    move-result-object v2

    invoke-static {v1, v2}, Lnet/fortuna/ical4j/util/ComponentValidator;->assertNone(Ljava/lang/String;Lnet/fortuna/ical4j/model/ComponentList;)V

    goto/16 :goto_3

    .line 387
    :cond_14
    const-string v1, "VTODO"

    invoke-virtual {p0, v1}, Lnet/fortuna/ical4j/model/Calendar;->getComponent(Ljava/lang/String;)Lnet/fortuna/ical4j/model/Component;

    move-result-object v1

    if-eqz v1, :cond_15

    .line 388
    const-string v1, "VFREEBUSY"

    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/Calendar;->getComponents()Lnet/fortuna/ical4j/model/ComponentList;

    move-result-object v2

    invoke-static {v1, v2}, Lnet/fortuna/ical4j/util/ComponentValidator;->assertNone(Ljava/lang/String;Lnet/fortuna/ical4j/model/ComponentList;)V

    .line 390
    const-string v1, "VJOURNAL"

    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/Calendar;->getComponents()Lnet/fortuna/ical4j/model/ComponentList;

    move-result-object v2

    invoke-static {v1, v2}, Lnet/fortuna/ical4j/util/ComponentValidator;->assertNone(Ljava/lang/String;Lnet/fortuna/ical4j/model/ComponentList;)V

    goto/16 :goto_3

    .line 392
    :cond_15
    const-string v1, "VJOURNAL"

    invoke-virtual {p0, v1}, Lnet/fortuna/ical4j/model/Calendar;->getComponent(Ljava/lang/String;)Lnet/fortuna/ical4j/model/Component;

    move-result-object v1

    if-eqz v1, :cond_9

    .line 393
    const-string v1, "VTIMEZONE"

    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/Calendar;->getComponents()Lnet/fortuna/ical4j/model/ComponentList;

    move-result-object v2

    invoke-static {v1, v2}, Lnet/fortuna/ical4j/util/ComponentValidator;->assertOneOrLess(Ljava/lang/String;Lnet/fortuna/ical4j/model/ComponentList;)V

    .line 395
    const-string v1, "VFREEBUSY"

    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/Calendar;->getComponents()Lnet/fortuna/ical4j/model/ComponentList;

    move-result-object v2

    invoke-static {v1, v2}, Lnet/fortuna/ical4j/util/ComponentValidator;->assertNone(Ljava/lang/String;Lnet/fortuna/ical4j/model/ComponentList;)V

    goto/16 :goto_3

    .line 400
    :cond_16
    sget-object v1, Lnet/fortuna/ical4j/model/property/Method;->CANCEL:Lnet/fortuna/ical4j/model/property/Method;

    const-string v2, "METHOD"

    invoke-virtual {p0, v2}, Lnet/fortuna/ical4j/model/Calendar;->getProperty(Ljava/lang/String;)Lnet/fortuna/ical4j/model/Property;

    move-result-object v2

    invoke-virtual {v1, v2}, Lnet/fortuna/ical4j/model/property/Method;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_19

    .line 401
    const-string v1, "VEVENT"

    invoke-virtual {p0, v1}, Lnet/fortuna/ical4j/model/Calendar;->getComponent(Ljava/lang/String;)Lnet/fortuna/ical4j/model/Component;

    move-result-object v1

    if-eqz v1, :cond_17

    .line 402
    const-string v1, "VALARM"

    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/Calendar;->getComponents()Lnet/fortuna/ical4j/model/ComponentList;

    move-result-object v2

    invoke-static {v1, v2}, Lnet/fortuna/ical4j/util/ComponentValidator;->assertNone(Ljava/lang/String;Lnet/fortuna/ical4j/model/ComponentList;)V

    .line 403
    const-string v1, "VFREEBUSY"

    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/Calendar;->getComponents()Lnet/fortuna/ical4j/model/ComponentList;

    move-result-object v2

    invoke-static {v1, v2}, Lnet/fortuna/ical4j/util/ComponentValidator;->assertNone(Ljava/lang/String;Lnet/fortuna/ical4j/model/ComponentList;)V

    .line 404
    const-string v1, "VJOURNAL"

    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/Calendar;->getComponents()Lnet/fortuna/ical4j/model/ComponentList;

    move-result-object v2

    invoke-static {v1, v2}, Lnet/fortuna/ical4j/util/ComponentValidator;->assertNone(Ljava/lang/String;Lnet/fortuna/ical4j/model/ComponentList;)V

    .line 405
    const-string v1, "VTODO"

    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/Calendar;->getComponents()Lnet/fortuna/ical4j/model/ComponentList;

    move-result-object v2

    invoke-static {v1, v2}, Lnet/fortuna/ical4j/util/ComponentValidator;->assertNone(Ljava/lang/String;Lnet/fortuna/ical4j/model/ComponentList;)V

    goto/16 :goto_3

    .line 407
    :cond_17
    const-string v1, "VTODO"

    invoke-virtual {p0, v1}, Lnet/fortuna/ical4j/model/Calendar;->getComponent(Ljava/lang/String;)Lnet/fortuna/ical4j/model/Component;

    move-result-object v1

    if-eqz v1, :cond_18

    .line 408
    const-string v1, "VTIMEZONE"

    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/Calendar;->getComponents()Lnet/fortuna/ical4j/model/ComponentList;

    move-result-object v2

    invoke-static {v1, v2}, Lnet/fortuna/ical4j/util/ComponentValidator;->assertOneOrLess(Ljava/lang/String;Lnet/fortuna/ical4j/model/ComponentList;)V

    .line 410
    const-string v1, "VALARM"

    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/Calendar;->getComponents()Lnet/fortuna/ical4j/model/ComponentList;

    move-result-object v2

    invoke-static {v1, v2}, Lnet/fortuna/ical4j/util/ComponentValidator;->assertNone(Ljava/lang/String;Lnet/fortuna/ical4j/model/ComponentList;)V

    .line 411
    const-string v1, "VFREEBUSY"

    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/Calendar;->getComponents()Lnet/fortuna/ical4j/model/ComponentList;

    move-result-object v2

    invoke-static {v1, v2}, Lnet/fortuna/ical4j/util/ComponentValidator;->assertNone(Ljava/lang/String;Lnet/fortuna/ical4j/model/ComponentList;)V

    .line 413
    const-string v1, "VJOURNAL"

    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/Calendar;->getComponents()Lnet/fortuna/ical4j/model/ComponentList;

    move-result-object v2

    invoke-static {v1, v2}, Lnet/fortuna/ical4j/util/ComponentValidator;->assertNone(Ljava/lang/String;Lnet/fortuna/ical4j/model/ComponentList;)V

    goto/16 :goto_3

    .line 415
    :cond_18
    const-string v1, "VJOURNAL"

    invoke-virtual {p0, v1}, Lnet/fortuna/ical4j/model/Calendar;->getComponent(Ljava/lang/String;)Lnet/fortuna/ical4j/model/Component;

    move-result-object v1

    if-eqz v1, :cond_9

    .line 416
    const-string v1, "VALARM"

    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/Calendar;->getComponents()Lnet/fortuna/ical4j/model/ComponentList;

    move-result-object v2

    invoke-static {v1, v2}, Lnet/fortuna/ical4j/util/ComponentValidator;->assertNone(Ljava/lang/String;Lnet/fortuna/ical4j/model/ComponentList;)V

    .line 417
    const-string v1, "VFREEBUSY"

    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/Calendar;->getComponents()Lnet/fortuna/ical4j/model/ComponentList;

    move-result-object v2

    invoke-static {v1, v2}, Lnet/fortuna/ical4j/util/ComponentValidator;->assertNone(Ljava/lang/String;Lnet/fortuna/ical4j/model/ComponentList;)V

    goto/16 :goto_3

    .line 422
    :cond_19
    sget-object v1, Lnet/fortuna/ical4j/model/property/Method;->REFRESH:Lnet/fortuna/ical4j/model/property/Method;

    const-string v2, "METHOD"

    invoke-virtual {p0, v2}, Lnet/fortuna/ical4j/model/Calendar;->getProperty(Ljava/lang/String;)Lnet/fortuna/ical4j/model/Property;

    move-result-object v2

    invoke-virtual {v1, v2}, Lnet/fortuna/ical4j/model/property/Method;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 423
    const-string v1, "VEVENT"

    invoke-virtual {p0, v1}, Lnet/fortuna/ical4j/model/Calendar;->getComponent(Ljava/lang/String;)Lnet/fortuna/ical4j/model/Component;

    move-result-object v1

    if-eqz v1, :cond_1a

    .line 424
    const-string v1, "VALARM"

    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/Calendar;->getComponents()Lnet/fortuna/ical4j/model/ComponentList;

    move-result-object v2

    invoke-static {v1, v2}, Lnet/fortuna/ical4j/util/ComponentValidator;->assertNone(Ljava/lang/String;Lnet/fortuna/ical4j/model/ComponentList;)V

    .line 425
    const-string v1, "VFREEBUSY"

    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/Calendar;->getComponents()Lnet/fortuna/ical4j/model/ComponentList;

    move-result-object v2

    invoke-static {v1, v2}, Lnet/fortuna/ical4j/util/ComponentValidator;->assertNone(Ljava/lang/String;Lnet/fortuna/ical4j/model/ComponentList;)V

    .line 426
    const-string v1, "VJOURNAL"

    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/Calendar;->getComponents()Lnet/fortuna/ical4j/model/ComponentList;

    move-result-object v2

    invoke-static {v1, v2}, Lnet/fortuna/ical4j/util/ComponentValidator;->assertNone(Ljava/lang/String;Lnet/fortuna/ical4j/model/ComponentList;)V

    .line 427
    const-string v1, "VTODO"

    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/Calendar;->getComponents()Lnet/fortuna/ical4j/model/ComponentList;

    move-result-object v2

    invoke-static {v1, v2}, Lnet/fortuna/ical4j/util/ComponentValidator;->assertNone(Ljava/lang/String;Lnet/fortuna/ical4j/model/ComponentList;)V

    goto/16 :goto_3

    .line 429
    :cond_1a
    const-string v1, "VTODO"

    invoke-virtual {p0, v1}, Lnet/fortuna/ical4j/model/Calendar;->getComponent(Ljava/lang/String;)Lnet/fortuna/ical4j/model/Component;

    move-result-object v1

    if-eqz v1, :cond_9

    .line 430
    const-string v1, "VALARM"

    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/Calendar;->getComponents()Lnet/fortuna/ical4j/model/ComponentList;

    move-result-object v2

    invoke-static {v1, v2}, Lnet/fortuna/ical4j/util/ComponentValidator;->assertNone(Ljava/lang/String;Lnet/fortuna/ical4j/model/ComponentList;)V

    .line 431
    const-string v1, "VFREEBUSY"

    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/Calendar;->getComponents()Lnet/fortuna/ical4j/model/ComponentList;

    move-result-object v2

    invoke-static {v1, v2}, Lnet/fortuna/ical4j/util/ComponentValidator;->assertNone(Ljava/lang/String;Lnet/fortuna/ical4j/model/ComponentList;)V

    .line 433
    const-string v1, "VJOURNAL"

    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/Calendar;->getComponents()Lnet/fortuna/ical4j/model/ComponentList;

    move-result-object v2

    invoke-static {v1, v2}, Lnet/fortuna/ical4j/util/ComponentValidator;->assertNone(Ljava/lang/String;Lnet/fortuna/ical4j/model/ComponentList;)V

    .line 434
    const-string v1, "VTIMEZONE"

    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/Calendar;->getComponents()Lnet/fortuna/ical4j/model/ComponentList;

    move-result-object v2

    invoke-static {v1, v2}, Lnet/fortuna/ical4j/util/ComponentValidator;->assertNone(Ljava/lang/String;Lnet/fortuna/ical4j/model/ComponentList;)V

    goto/16 :goto_3

    .line 437
    :cond_1b
    sget-object v1, Lnet/fortuna/ical4j/model/property/Method;->COUNTER:Lnet/fortuna/ical4j/model/property/Method;

    const-string v2, "METHOD"

    invoke-virtual {p0, v2}, Lnet/fortuna/ical4j/model/Calendar;->getProperty(Ljava/lang/String;)Lnet/fortuna/ical4j/model/Property;

    move-result-object v2

    invoke-virtual {v1, v2}, Lnet/fortuna/ical4j/model/property/Method;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 438
    const-string v1, "VEVENT"

    invoke-virtual {p0, v1}, Lnet/fortuna/ical4j/model/Calendar;->getComponent(Ljava/lang/String;)Lnet/fortuna/ical4j/model/Component;

    move-result-object v1

    if-eqz v1, :cond_1c

    .line 439
    const-string v1, "VFREEBUSY"

    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/Calendar;->getComponents()Lnet/fortuna/ical4j/model/ComponentList;

    move-result-object v2

    invoke-static {v1, v2}, Lnet/fortuna/ical4j/util/ComponentValidator;->assertNone(Ljava/lang/String;Lnet/fortuna/ical4j/model/ComponentList;)V

    .line 440
    const-string v1, "VJOURNAL"

    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/Calendar;->getComponents()Lnet/fortuna/ical4j/model/ComponentList;

    move-result-object v2

    invoke-static {v1, v2}, Lnet/fortuna/ical4j/util/ComponentValidator;->assertNone(Ljava/lang/String;Lnet/fortuna/ical4j/model/ComponentList;)V

    .line 441
    const-string v1, "VTODO"

    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/Calendar;->getComponents()Lnet/fortuna/ical4j/model/ComponentList;

    move-result-object v2

    invoke-static {v1, v2}, Lnet/fortuna/ical4j/util/ComponentValidator;->assertNone(Ljava/lang/String;Lnet/fortuna/ical4j/model/ComponentList;)V

    goto/16 :goto_3

    .line 443
    :cond_1c
    const-string v1, "VTODO"

    invoke-virtual {p0, v1}, Lnet/fortuna/ical4j/model/Calendar;->getComponent(Ljava/lang/String;)Lnet/fortuna/ical4j/model/Component;

    move-result-object v1

    if-eqz v1, :cond_9

    .line 444
    const-string v1, "VTIMEZONE"

    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/Calendar;->getComponents()Lnet/fortuna/ical4j/model/ComponentList;

    move-result-object v2

    invoke-static {v1, v2}, Lnet/fortuna/ical4j/util/ComponentValidator;->assertOneOrLess(Ljava/lang/String;Lnet/fortuna/ical4j/model/ComponentList;)V

    .line 446
    const-string v1, "VFREEBUSY"

    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/Calendar;->getComponents()Lnet/fortuna/ical4j/model/ComponentList;

    move-result-object v2

    invoke-static {v1, v2}, Lnet/fortuna/ical4j/util/ComponentValidator;->assertNone(Ljava/lang/String;Lnet/fortuna/ical4j/model/ComponentList;)V

    .line 448
    const-string v1, "VJOURNAL"

    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/Calendar;->getComponents()Lnet/fortuna/ical4j/model/ComponentList;

    move-result-object v2

    invoke-static {v1, v2}, Lnet/fortuna/ical4j/util/ComponentValidator;->assertNone(Ljava/lang/String;Lnet/fortuna/ical4j/model/ComponentList;)V

    goto/16 :goto_3

    .line 451
    :cond_1d
    sget-object v1, Lnet/fortuna/ical4j/model/property/Method;->DECLINE_COUNTER:Lnet/fortuna/ical4j/model/property/Method;

    const-string v2, "METHOD"

    invoke-virtual {p0, v2}, Lnet/fortuna/ical4j/model/Calendar;->getProperty(Ljava/lang/String;)Lnet/fortuna/ical4j/model/Property;

    move-result-object v2

    invoke-virtual {v1, v2}, Lnet/fortuna/ical4j/model/property/Method;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 452
    const-string v1, "VEVENT"

    invoke-virtual {p0, v1}, Lnet/fortuna/ical4j/model/Calendar;->getComponent(Ljava/lang/String;)Lnet/fortuna/ical4j/model/Component;

    move-result-object v1

    if-eqz v1, :cond_1e

    .line 453
    const-string v1, "VFREEBUSY"

    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/Calendar;->getComponents()Lnet/fortuna/ical4j/model/ComponentList;

    move-result-object v2

    invoke-static {v1, v2}, Lnet/fortuna/ical4j/util/ComponentValidator;->assertNone(Ljava/lang/String;Lnet/fortuna/ical4j/model/ComponentList;)V

    .line 454
    const-string v1, "VJOURNAL"

    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/Calendar;->getComponents()Lnet/fortuna/ical4j/model/ComponentList;

    move-result-object v2

    invoke-static {v1, v2}, Lnet/fortuna/ical4j/util/ComponentValidator;->assertNone(Ljava/lang/String;Lnet/fortuna/ical4j/model/ComponentList;)V

    .line 455
    const-string v1, "VTODO"

    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/Calendar;->getComponents()Lnet/fortuna/ical4j/model/ComponentList;

    move-result-object v2

    invoke-static {v1, v2}, Lnet/fortuna/ical4j/util/ComponentValidator;->assertNone(Ljava/lang/String;Lnet/fortuna/ical4j/model/ComponentList;)V

    .line 456
    const-string v1, "VTIMEZONE"

    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/Calendar;->getComponents()Lnet/fortuna/ical4j/model/ComponentList;

    move-result-object v2

    invoke-static {v1, v2}, Lnet/fortuna/ical4j/util/ComponentValidator;->assertNone(Ljava/lang/String;Lnet/fortuna/ical4j/model/ComponentList;)V

    .line 457
    const-string v1, "VALARM"

    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/Calendar;->getComponents()Lnet/fortuna/ical4j/model/ComponentList;

    move-result-object v2

    invoke-static {v1, v2}, Lnet/fortuna/ical4j/util/ComponentValidator;->assertNone(Ljava/lang/String;Lnet/fortuna/ical4j/model/ComponentList;)V

    goto/16 :goto_3

    .line 459
    :cond_1e
    const-string v1, "VTODO"

    invoke-virtual {p0, v1}, Lnet/fortuna/ical4j/model/Calendar;->getComponent(Ljava/lang/String;)Lnet/fortuna/ical4j/model/Component;

    move-result-object v1

    if-eqz v1, :cond_9

    .line 460
    const-string v1, "VALARM"

    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/Calendar;->getComponents()Lnet/fortuna/ical4j/model/ComponentList;

    move-result-object v2

    invoke-static {v1, v2}, Lnet/fortuna/ical4j/util/ComponentValidator;->assertNone(Ljava/lang/String;Lnet/fortuna/ical4j/model/ComponentList;)V

    .line 461
    const-string v1, "VFREEBUSY"

    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/Calendar;->getComponents()Lnet/fortuna/ical4j/model/ComponentList;

    move-result-object v2

    invoke-static {v1, v2}, Lnet/fortuna/ical4j/util/ComponentValidator;->assertNone(Ljava/lang/String;Lnet/fortuna/ical4j/model/ComponentList;)V

    .line 463
    const-string v1, "VJOURNAL"

    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/Calendar;->getComponents()Lnet/fortuna/ical4j/model/ComponentList;

    move-result-object v2

    invoke-static {v1, v2}, Lnet/fortuna/ical4j/util/ComponentValidator;->assertNone(Ljava/lang/String;Lnet/fortuna/ical4j/model/ComponentList;)V

    goto/16 :goto_3

    .line 476
    :cond_1f
    if-eqz p1, :cond_20

    .line 477
    invoke-direct {p0}, Lnet/fortuna/ical4j/model/Calendar;->validateProperties()V

    .line 478
    invoke-direct {p0}, Lnet/fortuna/ical4j/model/Calendar;->validateComponents()V

    .line 480
    :cond_20
    return-void
.end method
