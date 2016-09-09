.class public Lnet/fortuna/ical4j/model/property/RDate;
.super Lnet/fortuna/ical4j/model/property/DateListProperty;
.source "RDate.java"


# static fields
.field private static final serialVersionUID:J = -0x2e145d84bfcd3161L


# instance fields
.field private periods:Lnet/fortuna/ical4j/model/PeriodList;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 143
    const-string v0, "RDATE"

    invoke-static {}, Lnet/fortuna/ical4j/model/PropertyFactoryImpl;->getInstance()Lnet/fortuna/ical4j/model/PropertyFactoryImpl;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lnet/fortuna/ical4j/model/property/DateListProperty;-><init>(Ljava/lang/String;Lnet/fortuna/ical4j/model/PropertyFactory;)V

    .line 144
    new-instance v0, Lnet/fortuna/ical4j/model/PeriodList;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lnet/fortuna/ical4j/model/PeriodList;-><init>(ZZ)V

    iput-object v0, p0, Lnet/fortuna/ical4j/model/property/RDate;->periods:Lnet/fortuna/ical4j/model/PeriodList;

    .line 145
    return-void
.end method


# virtual methods
.method public final getPeriods()Lnet/fortuna/ical4j/model/PeriodList;
    .locals 1

    .prologue
    .line 230
    iget-object v0, p0, Lnet/fortuna/ical4j/model/property/RDate;->periods:Lnet/fortuna/ical4j/model/PeriodList;

    return-object v0
.end method

.method public final getValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 249
    iget-object v0, p0, Lnet/fortuna/ical4j/model/property/RDate;->periods:Lnet/fortuna/ical4j/model/PeriodList;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lnet/fortuna/ical4j/model/property/RDate;->periods:Lnet/fortuna/ical4j/model/PeriodList;

    invoke-virtual {v0}, Lnet/fortuna/ical4j/model/PeriodList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/fortuna/ical4j/model/property/RDate;->periods:Lnet/fortuna/ical4j/model/PeriodList;

    invoke-virtual {v0}, Lnet/fortuna/ical4j/model/PeriodList;->isUnmodifiable()Z

    move-result v0

    if-nez v0, :cond_1

    .line 250
    :cond_0
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/property/RDate;->getPeriods()Lnet/fortuna/ical4j/model/PeriodList;

    move-result-object v0

    invoke-static {v0}, Lnet/fortuna/ical4j/util/Strings;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 252
    :goto_0
    return-object v0

    :cond_1
    invoke-super {p0}, Lnet/fortuna/ical4j/model/property/DateListProperty;->getValue()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public final setTimeZone(Lnet/fortuna/ical4j/model/TimeZone;)V
    .locals 1

    .prologue
    .line 259
    iget-object v0, p0, Lnet/fortuna/ical4j/model/property/RDate;->periods:Lnet/fortuna/ical4j/model/PeriodList;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lnet/fortuna/ical4j/model/property/RDate;->periods:Lnet/fortuna/ical4j/model/PeriodList;

    invoke-virtual {v0}, Lnet/fortuna/ical4j/model/PeriodList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/fortuna/ical4j/model/property/RDate;->periods:Lnet/fortuna/ical4j/model/PeriodList;

    invoke-virtual {v0}, Lnet/fortuna/ical4j/model/PeriodList;->isUnmodifiable()Z

    move-result v0

    if-nez v0, :cond_1

    .line 260
    :cond_0
    iget-object v0, p0, Lnet/fortuna/ical4j/model/property/RDate;->periods:Lnet/fortuna/ical4j/model/PeriodList;

    invoke-virtual {v0, p1}, Lnet/fortuna/ical4j/model/PeriodList;->setTimeZone(Lnet/fortuna/ical4j/model/TimeZone;)V

    .line 265
    :goto_0
    return-void

    .line 263
    :cond_1
    invoke-super {p0, p1}, Lnet/fortuna/ical4j/model/property/DateListProperty;->setTimeZone(Lnet/fortuna/ical4j/model/TimeZone;)V

    goto :goto_0
.end method

.method public final setValue(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    .line 237
    sget-object v0, Lnet/fortuna/ical4j/model/parameter/Value;->PERIOD:Lnet/fortuna/ical4j/model/parameter/Value;

    const-string v1, "VALUE"

    invoke-virtual {p0, v1}, Lnet/fortuna/ical4j/model/property/RDate;->getParameter(Ljava/lang/String;)Lnet/fortuna/ical4j/model/Parameter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/fortuna/ical4j/model/parameter/Value;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 238
    new-instance v0, Lnet/fortuna/ical4j/model/PeriodList;

    invoke-direct {v0, p1}, Lnet/fortuna/ical4j/model/PeriodList;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lnet/fortuna/ical4j/model/property/RDate;->periods:Lnet/fortuna/ical4j/model/PeriodList;

    .line 243
    :goto_0
    return-void

    .line 241
    :cond_0
    invoke-super {p0, p1}, Lnet/fortuna/ical4j/model/property/DateListProperty;->setValue(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final validate()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/fortuna/ical4j/model/ValidationException;
        }
    .end annotation

    .prologue
    .line 206
    invoke-static {}, Lnet/fortuna/ical4j/util/ParameterValidator;->getInstance()Lnet/fortuna/ical4j/util/ParameterValidator;

    move-result-object v0

    const-string v1, "VALUE"

    .line 207
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/property/RDate;->getParameters()Lnet/fortuna/ical4j/model/ParameterList;

    move-result-object v2

    .line 206
    invoke-virtual {v0, v1, v2}, Lnet/fortuna/ical4j/util/ParameterValidator;->assertOneOrLess(Ljava/lang/String;Lnet/fortuna/ical4j/model/ParameterList;)V

    .line 209
    const-string v0, "VALUE"

    invoke-virtual {p0, v0}, Lnet/fortuna/ical4j/model/property/RDate;->getParameter(Ljava/lang/String;)Lnet/fortuna/ical4j/model/Parameter;

    move-result-object v0

    .line 211
    if-eqz v0, :cond_0

    sget-object v1, Lnet/fortuna/ical4j/model/parameter/Value;->DATE_TIME:Lnet/fortuna/ical4j/model/parameter/Value;

    invoke-virtual {v1, v0}, Lnet/fortuna/ical4j/model/parameter/Value;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lnet/fortuna/ical4j/model/parameter/Value;->DATE:Lnet/fortuna/ical4j/model/parameter/Value;

    .line 212
    invoke-virtual {v1, v0}, Lnet/fortuna/ical4j/model/parameter/Value;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lnet/fortuna/ical4j/model/parameter/Value;->PERIOD:Lnet/fortuna/ical4j/model/parameter/Value;

    .line 213
    invoke-virtual {v1, v0}, Lnet/fortuna/ical4j/model/parameter/Value;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 214
    new-instance v0, Lnet/fortuna/ical4j/model/ValidationException;

    const-string v1, "Parameter [VALUE] is invalid"

    invoke-direct {v0, v1}, Lnet/fortuna/ical4j/model/ValidationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 218
    :cond_0
    invoke-static {}, Lnet/fortuna/ical4j/util/ParameterValidator;->getInstance()Lnet/fortuna/ical4j/util/ParameterValidator;

    move-result-object v0

    const-string v1, "TZID"

    .line 219
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/property/RDate;->getParameters()Lnet/fortuna/ical4j/model/ParameterList;

    move-result-object v2

    .line 218
    invoke-virtual {v0, v1, v2}, Lnet/fortuna/ical4j/util/ParameterValidator;->assertOneOrLess(Ljava/lang/String;Lnet/fortuna/ical4j/model/ParameterList;)V

    .line 224
    return-void
.end method
