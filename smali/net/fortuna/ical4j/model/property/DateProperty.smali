.class public abstract Lnet/fortuna/ical4j/model/property/DateProperty;
.super Lnet/fortuna/ical4j/model/Property;
.source "DateProperty.java"


# static fields
.field private static final serialVersionUID:J = 0x2bddb6764f127229L


# instance fields
.field private date:Lnet/fortuna/ical4j/model/Date;

.field private timeZone:Lnet/fortuna/ical4j/model/TimeZone;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lnet/fortuna/ical4j/model/PropertyFactory;)V
    .locals 0

    .prologue
    .line 80
    invoke-direct {p0, p1, p2}, Lnet/fortuna/ical4j/model/Property;-><init>(Ljava/lang/String;Lnet/fortuna/ical4j/model/PropertyFactory;)V

    .line 81
    return-void
.end method

.method private updateTimeZone(Lnet/fortuna/ical4j/model/TimeZone;)V
    .locals 3

    .prologue
    .line 188
    iput-object p1, p0, Lnet/fortuna/ical4j/model/property/DateProperty;->timeZone:Lnet/fortuna/ical4j/model/TimeZone;

    .line 189
    if-eqz p1, :cond_2

    .line 190
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/property/DateProperty;->getDate()Lnet/fortuna/ical4j/model/Date;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/property/DateProperty;->getDate()Lnet/fortuna/ical4j/model/Date;

    move-result-object v0

    instance-of v0, v0, Lnet/fortuna/ical4j/model/DateTime;

    if-nez v0, :cond_0

    .line 191
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "TimeZone is not applicable to current value"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 194
    :cond_0
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/property/DateProperty;->getDate()Lnet/fortuna/ical4j/model/Date;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 195
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/property/DateProperty;->getDate()Lnet/fortuna/ical4j/model/Date;

    move-result-object v0

    check-cast v0, Lnet/fortuna/ical4j/model/DateTime;

    invoke-virtual {v0, p1}, Lnet/fortuna/ical4j/model/DateTime;->setTimeZone(Lnet/fortuna/ical4j/model/TimeZone;)V

    .line 198
    :cond_1
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/property/DateProperty;->getParameters()Lnet/fortuna/ical4j/model/ParameterList;

    move-result-object v0

    new-instance v1, Lnet/fortuna/ical4j/model/parameter/TzId;

    invoke-virtual {p1}, Lnet/fortuna/ical4j/model/TimeZone;->getID()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lnet/fortuna/ical4j/model/parameter/TzId;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lnet/fortuna/ical4j/model/ParameterList;->replace(Lnet/fortuna/ical4j/model/Parameter;)Z

    .line 204
    :goto_0
    return-void

    .line 202
    :cond_2
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/property/DateProperty;->isUtc()Z

    move-result v0

    invoke-virtual {p0, v0}, Lnet/fortuna/ical4j/model/property/DateProperty;->setUtc(Z)V

    goto :goto_0
.end method


# virtual methods
.method public final getDate()Lnet/fortuna/ical4j/model/Date;
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lnet/fortuna/ical4j/model/property/DateProperty;->date:Lnet/fortuna/ical4j/model/Date;

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 155
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/property/DateProperty;->getDate()Lnet/fortuna/ical4j/model/Date;

    move-result-object v0

    invoke-static {v0}, Lnet/fortuna/ical4j/util/Strings;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 177
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/property/DateProperty;->getDate()Lnet/fortuna/ical4j/model/Date;

    move-result-object v0

    invoke-virtual {v0}, Lnet/fortuna/ical4j/model/Date;->hashCode()I

    move-result v0

    return v0
.end method

.method public final isUtc()Z
    .locals 1

    .prologue
    .line 224
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/property/DateProperty;->getDate()Lnet/fortuna/ical4j/model/Date;

    move-result-object v0

    instance-of v0, v0, Lnet/fortuna/ical4j/model/DateTime;

    if-eqz v0, :cond_0

    .line 225
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/property/DateProperty;->getDate()Lnet/fortuna/ical4j/model/Date;

    move-result-object v0

    check-cast v0, Lnet/fortuna/ical4j/model/DateTime;

    invoke-virtual {v0}, Lnet/fortuna/ical4j/model/DateTime;->isUtc()Z

    move-result v0

    .line 227
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final setDate(Lnet/fortuna/ical4j/model/Date;)V
    .locals 2

    .prologue
    .line 106
    iput-object p1, p0, Lnet/fortuna/ical4j/model/property/DateProperty;->date:Lnet/fortuna/ical4j/model/Date;

    .line 107
    instance-of v0, p1, Lnet/fortuna/ical4j/model/DateTime;

    if-eqz v0, :cond_1

    .line 108
    sget-object v0, Lnet/fortuna/ical4j/model/parameter/Value;->DATE:Lnet/fortuna/ical4j/model/parameter/Value;

    const-string v1, "VALUE"

    invoke-virtual {p0, v1}, Lnet/fortuna/ical4j/model/property/DateProperty;->getParameter(Ljava/lang/String;)Lnet/fortuna/ical4j/model/Parameter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/fortuna/ical4j/model/parameter/Value;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 109
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/property/DateProperty;->getParameters()Lnet/fortuna/ical4j/model/ParameterList;

    move-result-object v0

    sget-object v1, Lnet/fortuna/ical4j/model/parameter/Value;->DATE_TIME:Lnet/fortuna/ical4j/model/parameter/Value;

    invoke-virtual {v0, v1}, Lnet/fortuna/ical4j/model/ParameterList;->replace(Lnet/fortuna/ical4j/model/Parameter;)Z

    .line 111
    :cond_0
    check-cast p1, Lnet/fortuna/ical4j/model/DateTime;

    invoke-virtual {p1}, Lnet/fortuna/ical4j/model/DateTime;->getTimeZone()Lnet/fortuna/ical4j/model/TimeZone;

    move-result-object v0

    invoke-direct {p0, v0}, Lnet/fortuna/ical4j/model/property/DateProperty;->updateTimeZone(Lnet/fortuna/ical4j/model/TimeZone;)V

    .line 125
    :goto_0
    return-void

    .line 114
    :cond_1
    if-eqz p1, :cond_2

    .line 115
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/property/DateProperty;->getParameters()Lnet/fortuna/ical4j/model/ParameterList;

    move-result-object v0

    sget-object v1, Lnet/fortuna/ical4j/model/parameter/Value;->DATE:Lnet/fortuna/ical4j/model/parameter/Value;

    invoke-virtual {v0, v1}, Lnet/fortuna/ical4j/model/ParameterList;->replace(Lnet/fortuna/ical4j/model/Parameter;)Z

    .line 123
    :cond_2
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lnet/fortuna/ical4j/model/property/DateProperty;->updateTimeZone(Lnet/fortuna/ical4j/model/TimeZone;)V

    goto :goto_0
.end method

.method public setTimeZone(Lnet/fortuna/ical4j/model/TimeZone;)V
    .locals 0

    .prologue
    .line 163
    invoke-direct {p0, p1}, Lnet/fortuna/ical4j/model/property/DateProperty;->updateTimeZone(Lnet/fortuna/ical4j/model/TimeZone;)V

    .line 164
    return-void
.end method

.method public final setUtc(Z)V
    .locals 2

    .prologue
    .line 213
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/property/DateProperty;->getDate()Lnet/fortuna/ical4j/model/Date;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/property/DateProperty;->getDate()Lnet/fortuna/ical4j/model/Date;

    move-result-object v0

    instance-of v0, v0, Lnet/fortuna/ical4j/model/DateTime;

    if-eqz v0, :cond_0

    .line 214
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/property/DateProperty;->getDate()Lnet/fortuna/ical4j/model/Date;

    move-result-object v0

    check-cast v0, Lnet/fortuna/ical4j/model/DateTime;

    invoke-virtual {v0, p1}, Lnet/fortuna/ical4j/model/DateTime;->setUtc(Z)V

    .line 216
    :cond_0
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/property/DateProperty;->getParameters()Lnet/fortuna/ical4j/model/ParameterList;

    move-result-object v0

    const-string v1, "TZID"

    invoke-virtual {p0, v1}, Lnet/fortuna/ical4j/model/property/DateProperty;->getParameter(Ljava/lang/String;)Lnet/fortuna/ical4j/model/Parameter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/fortuna/ical4j/model/ParameterList;->remove(Lnet/fortuna/ical4j/model/Parameter;)Z

    .line 217
    return-void
.end method

.method public setValue(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    .line 136
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 139
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v2, 0x8

    if-ne v0, v2, :cond_1

    const/4 v0, 0x1

    .line 141
    :goto_0
    if-nez v0, :cond_0

    sget-object v0, Lnet/fortuna/ical4j/model/parameter/Value;->DATE:Lnet/fortuna/ical4j/model/parameter/Value;

    const-string v2, "VALUE"

    invoke-virtual {p0, v2}, Lnet/fortuna/ical4j/model/property/DateProperty;->getParameter(Ljava/lang/String;)Lnet/fortuna/ical4j/model/Parameter;

    move-result-object v2

    invoke-virtual {v0, v2}, Lnet/fortuna/ical4j/model/parameter/Value;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 143
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lnet/fortuna/ical4j/model/property/DateProperty;->updateTimeZone(Lnet/fortuna/ical4j/model/TimeZone;)V

    .line 144
    new-instance v0, Lnet/fortuna/ical4j/model/Date;

    invoke-direct {v0, v1}, Lnet/fortuna/ical4j/model/Date;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lnet/fortuna/ical4j/model/property/DateProperty;->date:Lnet/fortuna/ical4j/model/Date;

    .line 149
    :goto_1
    return-void

    .line 139
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 147
    :cond_2
    new-instance v0, Lnet/fortuna/ical4j/model/DateTime;

    iget-object v2, p0, Lnet/fortuna/ical4j/model/property/DateProperty;->timeZone:Lnet/fortuna/ical4j/model/TimeZone;

    invoke-direct {v0, v1, v2}, Lnet/fortuna/ical4j/model/DateTime;-><init>(Ljava/lang/String;Lnet/fortuna/ical4j/model/TimeZone;)V

    iput-object v0, p0, Lnet/fortuna/ical4j/model/property/DateProperty;->date:Lnet/fortuna/ical4j/model/Date;

    goto :goto_1
.end method

.method public validate()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/fortuna/ical4j/model/ValidationException;
        }
    .end annotation

    .prologue
    .line 235
    invoke-static {}, Lnet/fortuna/ical4j/util/ParameterValidator;->getInstance()Lnet/fortuna/ical4j/util/ParameterValidator;

    move-result-object v0

    const-string v1, "VALUE"

    .line 236
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/property/DateProperty;->getParameters()Lnet/fortuna/ical4j/model/ParameterList;

    move-result-object v2

    .line 235
    invoke-virtual {v0, v1, v2}, Lnet/fortuna/ical4j/util/ParameterValidator;->assertOneOrLess(Ljava/lang/String;Lnet/fortuna/ical4j/model/ParameterList;)V

    .line 238
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/property/DateProperty;->isUtc()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 239
    invoke-static {}, Lnet/fortuna/ical4j/util/ParameterValidator;->getInstance()Lnet/fortuna/ical4j/util/ParameterValidator;

    move-result-object v0

    const-string v1, "TZID"

    .line 240
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/property/DateProperty;->getParameters()Lnet/fortuna/ical4j/model/ParameterList;

    move-result-object v2

    .line 239
    invoke-virtual {v0, v1, v2}, Lnet/fortuna/ical4j/util/ParameterValidator;->assertNone(Ljava/lang/String;Lnet/fortuna/ical4j/model/ParameterList;)V

    .line 247
    :goto_0
    const-string v0, "VALUE"

    invoke-virtual {p0, v0}, Lnet/fortuna/ical4j/model/property/DateProperty;->getParameter(Ljava/lang/String;)Lnet/fortuna/ical4j/model/Parameter;

    move-result-object v0

    check-cast v0, Lnet/fortuna/ical4j/model/parameter/Value;

    .line 249
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/property/DateProperty;->getDate()Lnet/fortuna/ical4j/model/Date;

    move-result-object v1

    instance-of v1, v1, Lnet/fortuna/ical4j/model/DateTime;

    if-eqz v1, :cond_3

    .line 251
    if-eqz v0, :cond_1

    sget-object v1, Lnet/fortuna/ical4j/model/parameter/Value;->DATE_TIME:Lnet/fortuna/ical4j/model/parameter/Value;

    invoke-virtual {v1, v0}, Lnet/fortuna/ical4j/model/parameter/Value;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 252
    new-instance v1, Lnet/fortuna/ical4j/model/ValidationException;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x34

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "VALUE parameter ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "] is invalid for DATE-TIME instance"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lnet/fortuna/ical4j/model/ValidationException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 243
    :cond_0
    invoke-static {}, Lnet/fortuna/ical4j/util/ParameterValidator;->getInstance()Lnet/fortuna/ical4j/util/ParameterValidator;

    move-result-object v0

    const-string v1, "TZID"

    .line 244
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/property/DateProperty;->getParameters()Lnet/fortuna/ical4j/model/ParameterList;

    move-result-object v2

    .line 243
    invoke-virtual {v0, v1, v2}, Lnet/fortuna/ical4j/util/ParameterValidator;->assertOneOrLess(Ljava/lang/String;Lnet/fortuna/ical4j/model/ParameterList;)V

    goto :goto_0

    .line 256
    :cond_1
    iget-object v0, p0, Lnet/fortuna/ical4j/model/property/DateProperty;->date:Lnet/fortuna/ical4j/model/Date;

    check-cast v0, Lnet/fortuna/ical4j/model/DateTime;

    .line 259
    const-string v1, "TZID"

    invoke-virtual {p0, v1}, Lnet/fortuna/ical4j/model/property/DateProperty;->getParameter(Ljava/lang/String;)Lnet/fortuna/ical4j/model/Parameter;

    move-result-object v1

    .line 260
    invoke-virtual {v0}, Lnet/fortuna/ical4j/model/DateTime;->getTimeZone()Lnet/fortuna/ical4j/model/TimeZone;

    move-result-object v2

    if-eqz v2, :cond_5

    if-eqz v1, :cond_2

    .line 261
    invoke-virtual {v1}, Lnet/fortuna/ical4j/model/Parameter;->getValue()Ljava/lang/String;

    move-result-object v2

    .line 262
    invoke-virtual {v0}, Lnet/fortuna/ical4j/model/DateTime;->getTimeZone()Lnet/fortuna/ical4j/model/TimeZone;

    move-result-object v3

    invoke-virtual {v3}, Lnet/fortuna/ical4j/model/TimeZone;->getID()Ljava/lang/String;

    move-result-object v3

    .line 261
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 264
    :cond_2
    new-instance v2, Lnet/fortuna/ical4j/model/ValidationException;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 266
    invoke-virtual {v0}, Lnet/fortuna/ical4j/model/DateTime;->getTimeZone()Lnet/fortuna/ical4j/model/TimeZone;

    move-result-object v0

    invoke-virtual {v0}, Lnet/fortuna/ical4j/model/TimeZone;->getID()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x30

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v4, v5

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "TZID parameter ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "] does not match the timezone ["

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Lnet/fortuna/ical4j/model/ValidationException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 269
    :cond_3
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/property/DateProperty;->getDate()Lnet/fortuna/ical4j/model/Date;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 271
    if-nez v0, :cond_4

    .line 272
    new-instance v0, Lnet/fortuna/ical4j/model/ValidationException;

    sget-object v1, Lnet/fortuna/ical4j/model/parameter/Value;->DATE:Lnet/fortuna/ical4j/model/parameter/Value;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x36

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "VALUE parameter ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] must be specified for DATE instance"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lnet/fortuna/ical4j/model/ValidationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 275
    :cond_4
    sget-object v1, Lnet/fortuna/ical4j/model/parameter/Value;->DATE:Lnet/fortuna/ical4j/model/parameter/Value;

    invoke-virtual {v1, v0}, Lnet/fortuna/ical4j/model/parameter/Value;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 276
    new-instance v1, Lnet/fortuna/ical4j/model/ValidationException;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x2f

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "VALUE parameter ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "] is invalid for DATE instance"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lnet/fortuna/ical4j/model/ValidationException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 280
    :cond_5
    return-void
.end method
