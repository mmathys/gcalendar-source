.class public abstract Lnet/fortuna/ical4j/model/property/DateListProperty;
.super Lnet/fortuna/ical4j/model/Property;
.source "DateListProperty.java"


# static fields
.field private static final serialVersionUID:J = 0x48a218e5be08c16fL


# instance fields
.field private dates:Lnet/fortuna/ical4j/model/DateList;

.field private timeZone:Lnet/fortuna/ical4j/model/TimeZone;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lnet/fortuna/ical4j/model/DateList;Lnet/fortuna/ical4j/model/PropertyFactory;)V
    .locals 1

    .prologue
    .line 87
    new-instance v0, Lnet/fortuna/ical4j/model/ParameterList;

    invoke-direct {v0}, Lnet/fortuna/ical4j/model/ParameterList;-><init>()V

    invoke-direct {p0, p1, v0, p2, p3}, Lnet/fortuna/ical4j/model/property/DateListProperty;-><init>(Ljava/lang/String;Lnet/fortuna/ical4j/model/ParameterList;Lnet/fortuna/ical4j/model/DateList;Lnet/fortuna/ical4j/model/PropertyFactory;)V

    .line 88
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lnet/fortuna/ical4j/model/ParameterList;Lnet/fortuna/ical4j/model/DateList;Lnet/fortuna/ical4j/model/PropertyFactory;)V
    .locals 2

    .prologue
    .line 97
    invoke-direct {p0, p1, p2, p4}, Lnet/fortuna/ical4j/model/Property;-><init>(Ljava/lang/String;Lnet/fortuna/ical4j/model/ParameterList;Lnet/fortuna/ical4j/model/PropertyFactory;)V

    .line 98
    iput-object p3, p0, Lnet/fortuna/ical4j/model/property/DateListProperty;->dates:Lnet/fortuna/ical4j/model/DateList;

    .line 99
    if-eqz p3, :cond_0

    sget-object v0, Lnet/fortuna/ical4j/model/parameter/Value;->DATE_TIME:Lnet/fortuna/ical4j/model/parameter/Value;

    invoke-virtual {p3}, Lnet/fortuna/ical4j/model/DateList;->getType()Lnet/fortuna/ical4j/model/parameter/Value;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/fortuna/ical4j/model/parameter/Value;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 100
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/property/DateListProperty;->getParameters()Lnet/fortuna/ical4j/model/ParameterList;

    move-result-object v0

    invoke-virtual {p3}, Lnet/fortuna/ical4j/model/DateList;->getType()Lnet/fortuna/ical4j/model/parameter/Value;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/fortuna/ical4j/model/ParameterList;->replace(Lnet/fortuna/ical4j/model/Parameter;)Z

    .line 102
    :cond_0
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lnet/fortuna/ical4j/model/PropertyFactory;)V
    .locals 2

    .prologue
    .line 71
    new-instance v0, Lnet/fortuna/ical4j/model/DateList;

    sget-object v1, Lnet/fortuna/ical4j/model/parameter/Value;->DATE_TIME:Lnet/fortuna/ical4j/model/parameter/Value;

    invoke-direct {v0, v1}, Lnet/fortuna/ical4j/model/DateList;-><init>(Lnet/fortuna/ical4j/model/parameter/Value;)V

    invoke-direct {p0, p1, v0, p2}, Lnet/fortuna/ical4j/model/property/DateListProperty;-><init>(Ljava/lang/String;Lnet/fortuna/ical4j/model/DateList;Lnet/fortuna/ical4j/model/PropertyFactory;)V

    .line 72
    return-void
.end method


# virtual methods
.method public final getDates()Lnet/fortuna/ical4j/model/DateList;
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lnet/fortuna/ical4j/model/property/DateListProperty;->dates:Lnet/fortuna/ical4j/model/DateList;

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lnet/fortuna/ical4j/model/property/DateListProperty;->dates:Lnet/fortuna/ical4j/model/DateList;

    invoke-static {v0}, Lnet/fortuna/ical4j/util/Strings;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setTimeZone(Lnet/fortuna/ical4j/model/TimeZone;)V
    .locals 2

    .prologue
    .line 131
    iget-object v0, p0, Lnet/fortuna/ical4j/model/property/DateListProperty;->dates:Lnet/fortuna/ical4j/model/DateList;

    if-nez v0, :cond_0

    .line 132
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "TimeZone is not applicable to current value"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 135
    :cond_0
    iput-object p1, p0, Lnet/fortuna/ical4j/model/property/DateListProperty;->timeZone:Lnet/fortuna/ical4j/model/TimeZone;

    .line 136
    if-eqz p1, :cond_2

    .line 137
    sget-object v0, Lnet/fortuna/ical4j/model/parameter/Value;->DATE_TIME:Lnet/fortuna/ical4j/model/parameter/Value;

    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/property/DateListProperty;->getDates()Lnet/fortuna/ical4j/model/DateList;

    move-result-object v1

    invoke-virtual {v1}, Lnet/fortuna/ical4j/model/DateList;->getType()Lnet/fortuna/ical4j/model/parameter/Value;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/fortuna/ical4j/model/parameter/Value;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 138
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "TimeZone is not applicable to current value"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 141
    :cond_1
    iget-object v0, p0, Lnet/fortuna/ical4j/model/property/DateListProperty;->dates:Lnet/fortuna/ical4j/model/DateList;

    invoke-virtual {v0, p1}, Lnet/fortuna/ical4j/model/DateList;->setTimeZone(Lnet/fortuna/ical4j/model/TimeZone;)V

    .line 142
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/property/DateListProperty;->getParameters()Lnet/fortuna/ical4j/model/ParameterList;

    move-result-object v0

    const-string v1, "TZID"

    invoke-virtual {p0, v1}, Lnet/fortuna/ical4j/model/property/DateListProperty;->getParameter(Ljava/lang/String;)Lnet/fortuna/ical4j/model/Parameter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/fortuna/ical4j/model/ParameterList;->remove(Lnet/fortuna/ical4j/model/Parameter;)Z

    .line 143
    new-instance v0, Lnet/fortuna/ical4j/model/parameter/TzId;

    invoke-virtual {p1}, Lnet/fortuna/ical4j/model/TimeZone;->getID()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lnet/fortuna/ical4j/model/parameter/TzId;-><init>(Ljava/lang/String;)V

    .line 144
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/property/DateListProperty;->getParameters()Lnet/fortuna/ical4j/model/ParameterList;

    move-result-object v1

    invoke-virtual {v1, v0}, Lnet/fortuna/ical4j/model/ParameterList;->replace(Lnet/fortuna/ical4j/model/Parameter;)Z

    .line 150
    :goto_0
    return-void

    .line 148
    :cond_2
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lnet/fortuna/ical4j/model/property/DateListProperty;->setUtc(Z)V

    goto :goto_0
.end method

.method public final setUtc(Z)V
    .locals 2

    .prologue
    .line 166
    iget-object v0, p0, Lnet/fortuna/ical4j/model/property/DateListProperty;->dates:Lnet/fortuna/ical4j/model/DateList;

    if-eqz v0, :cond_0

    sget-object v0, Lnet/fortuna/ical4j/model/parameter/Value;->DATE_TIME:Lnet/fortuna/ical4j/model/parameter/Value;

    iget-object v1, p0, Lnet/fortuna/ical4j/model/property/DateListProperty;->dates:Lnet/fortuna/ical4j/model/DateList;

    invoke-virtual {v1}, Lnet/fortuna/ical4j/model/DateList;->getType()Lnet/fortuna/ical4j/model/parameter/Value;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/fortuna/ical4j/model/parameter/Value;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 167
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "TimeZone is not applicable to current value"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 170
    :cond_1
    iget-object v0, p0, Lnet/fortuna/ical4j/model/property/DateListProperty;->dates:Lnet/fortuna/ical4j/model/DateList;

    invoke-virtual {v0, p1}, Lnet/fortuna/ical4j/model/DateList;->setUtc(Z)V

    .line 171
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/property/DateListProperty;->getParameters()Lnet/fortuna/ical4j/model/ParameterList;

    move-result-object v0

    const-string v1, "TZID"

    invoke-virtual {p0, v1}, Lnet/fortuna/ical4j/model/property/DateListProperty;->getParameter(Ljava/lang/String;)Lnet/fortuna/ical4j/model/Parameter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/fortuna/ical4j/model/ParameterList;->remove(Lnet/fortuna/ical4j/model/Parameter;)Z

    .line 172
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
    .line 115
    new-instance v1, Lnet/fortuna/ical4j/model/DateList;

    const-string v0, "VALUE"

    invoke-virtual {p0, v0}, Lnet/fortuna/ical4j/model/property/DateListProperty;->getParameter(Ljava/lang/String;)Lnet/fortuna/ical4j/model/Parameter;

    move-result-object v0

    check-cast v0, Lnet/fortuna/ical4j/model/parameter/Value;

    iget-object v2, p0, Lnet/fortuna/ical4j/model/property/DateListProperty;->timeZone:Lnet/fortuna/ical4j/model/TimeZone;

    invoke-direct {v1, p1, v0, v2}, Lnet/fortuna/ical4j/model/DateList;-><init>(Ljava/lang/String;Lnet/fortuna/ical4j/model/parameter/Value;Lnet/fortuna/ical4j/model/TimeZone;)V

    iput-object v1, p0, Lnet/fortuna/ical4j/model/property/DateListProperty;->dates:Lnet/fortuna/ical4j/model/DateList;

    .line 117
    return-void
.end method
