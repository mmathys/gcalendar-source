.class public Lnet/fortuna/ical4j/model/property/FreeBusy;
.super Lnet/fortuna/ical4j/model/Property;
.source "FreeBusy.java"


# static fields
.field private static final serialVersionUID:J = -0x590a0cf0d34bd147L


# instance fields
.field private periods:Lnet/fortuna/ical4j/model/PeriodList;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 119
    const-string v0, "FREEBUSY"

    invoke-static {}, Lnet/fortuna/ical4j/model/PropertyFactoryImpl;->getInstance()Lnet/fortuna/ical4j/model/PropertyFactoryImpl;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lnet/fortuna/ical4j/model/Property;-><init>(Ljava/lang/String;Lnet/fortuna/ical4j/model/PropertyFactory;)V

    .line 120
    new-instance v0, Lnet/fortuna/ical4j/model/PeriodList;

    invoke-direct {v0}, Lnet/fortuna/ical4j/model/PeriodList;-><init>()V

    iput-object v0, p0, Lnet/fortuna/ical4j/model/property/FreeBusy;->periods:Lnet/fortuna/ical4j/model/PeriodList;

    .line 121
    return-void
.end method


# virtual methods
.method public final getPeriods()Lnet/fortuna/ical4j/model/PeriodList;
    .locals 1

    .prologue
    .line 190
    iget-object v0, p0, Lnet/fortuna/ical4j/model/property/FreeBusy;->periods:Lnet/fortuna/ical4j/model/PeriodList;

    return-object v0
.end method

.method public final getValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 204
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/property/FreeBusy;->getPeriods()Lnet/fortuna/ical4j/model/PeriodList;

    move-result-object v0

    invoke-virtual {v0}, Lnet/fortuna/ical4j/model/PeriodList;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final setValue(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    .line 197
    new-instance v0, Lnet/fortuna/ical4j/model/PeriodList;

    invoke-direct {v0, p1}, Lnet/fortuna/ical4j/model/PeriodList;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lnet/fortuna/ical4j/model/property/FreeBusy;->periods:Lnet/fortuna/ical4j/model/PeriodList;

    .line 198
    return-void
.end method

.method public final validate()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/fortuna/ical4j/model/ValidationException;
        }
    .end annotation

    .prologue
    .line 174
    invoke-static {}, Lnet/fortuna/ical4j/util/ParameterValidator;->getInstance()Lnet/fortuna/ical4j/util/ParameterValidator;

    move-result-object v0

    const-string v1, "FBTYPE"

    .line 175
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/property/FreeBusy;->getParameters()Lnet/fortuna/ical4j/model/ParameterList;

    move-result-object v2

    .line 174
    invoke-virtual {v0, v1, v2}, Lnet/fortuna/ical4j/util/ParameterValidator;->assertOneOrLess(Ljava/lang/String;Lnet/fortuna/ical4j/model/ParameterList;)V

    .line 181
    iget-object v0, p0, Lnet/fortuna/ical4j/model/property/FreeBusy;->periods:Lnet/fortuna/ical4j/model/PeriodList;

    invoke-virtual {v0}, Lnet/fortuna/ical4j/model/PeriodList;->isUtc()Z

    move-result v0

    if-nez v0, :cond_0

    .line 182
    new-instance v0, Lnet/fortuna/ical4j/model/ValidationException;

    const-string v1, "Periods must be in UTC format"

    invoke-direct {v0, v1}, Lnet/fortuna/ical4j/model/ValidationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 184
    :cond_0
    return-void
.end method
