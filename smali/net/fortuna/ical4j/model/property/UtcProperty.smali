.class public abstract Lnet/fortuna/ical4j/model/property/UtcProperty;
.super Lnet/fortuna/ical4j/model/property/DateProperty;
.source "UtcProperty.java"


# static fields
.field private static final serialVersionUID:J = 0x434ef1989d177c42L


# direct methods
.method public constructor <init>(Ljava/lang/String;Lnet/fortuna/ical4j/model/PropertyFactory;)V
    .locals 2

    .prologue
    .line 68
    invoke-direct {p0, p1, p2}, Lnet/fortuna/ical4j/model/property/DateProperty;-><init>(Ljava/lang/String;Lnet/fortuna/ical4j/model/PropertyFactory;)V

    .line 69
    new-instance v0, Lnet/fortuna/ical4j/model/DateTime;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lnet/fortuna/ical4j/model/DateTime;-><init>(Z)V

    invoke-virtual {p0, v0}, Lnet/fortuna/ical4j/model/property/UtcProperty;->setDate(Lnet/fortuna/ical4j/model/Date;)V

    .line 70
    return-void
.end method


# virtual methods
.method public final getDateTime()Lnet/fortuna/ical4j/model/DateTime;
    .locals 1

    .prologue
    .line 76
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/property/UtcProperty;->getDate()Lnet/fortuna/ical4j/model/Date;

    move-result-object v0

    check-cast v0, Lnet/fortuna/ical4j/model/DateTime;

    return-object v0
.end method

.method public setDateTime(Lnet/fortuna/ical4j/model/DateTime;)V
    .locals 2

    .prologue
    .line 84
    if-eqz p1, :cond_0

    .line 85
    new-instance v0, Lnet/fortuna/ical4j/model/DateTime;

    invoke-direct {v0, p1}, Lnet/fortuna/ical4j/model/DateTime;-><init>(Ljava/util/Date;)V

    .line 86
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lnet/fortuna/ical4j/model/DateTime;->setUtc(Z)V

    .line 87
    invoke-virtual {p0, v0}, Lnet/fortuna/ical4j/model/property/UtcProperty;->setDate(Lnet/fortuna/ical4j/model/Date;)V

    .line 92
    :goto_0
    return-void

    .line 90
    :cond_0
    invoke-virtual {p0, p1}, Lnet/fortuna/ical4j/model/property/UtcProperty;->setDate(Lnet/fortuna/ical4j/model/Date;)V

    goto :goto_0
.end method

.method public setTimeZone(Lnet/fortuna/ical4j/model/TimeZone;)V
    .locals 2

    .prologue
    .line 98
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Cannot set timezone for UTC properties"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public validate()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/fortuna/ical4j/model/ValidationException;
        }
    .end annotation

    .prologue
    .line 105
    invoke-super {p0}, Lnet/fortuna/ical4j/model/property/DateProperty;->validate()V

    .line 107
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/property/UtcProperty;->getDate()Lnet/fortuna/ical4j/model/Date;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/property/UtcProperty;->getDate()Lnet/fortuna/ical4j/model/Date;

    move-result-object v0

    instance-of v0, v0, Lnet/fortuna/ical4j/model/DateTime;

    if-nez v0, :cond_0

    .line 108
    new-instance v0, Lnet/fortuna/ical4j/model/ValidationException;

    const-string v1, "Property must have a DATE-TIME value"

    invoke-direct {v0, v1}, Lnet/fortuna/ical4j/model/ValidationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 112
    :cond_0
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/property/UtcProperty;->getDate()Lnet/fortuna/ical4j/model/Date;

    move-result-object v0

    check-cast v0, Lnet/fortuna/ical4j/model/DateTime;

    .line 114
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lnet/fortuna/ical4j/model/DateTime;->isUtc()Z

    move-result v0

    if-nez v0, :cond_1

    .line 115
    new-instance v0, Lnet/fortuna/ical4j/model/ValidationException;

    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/property/UtcProperty;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, ": DATE-TIME value must be specified in UTC time"

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lnet/fortuna/ical4j/model/ValidationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 118
    :cond_1
    return-void
.end method
