.class public Lnet/fortuna/ical4j/model/property/RecurrenceId;
.super Lnet/fortuna/ical4j/model/property/DateProperty;
.source "RecurrenceId.java"


# static fields
.field private static final serialVersionUID:J = 0x3dda0837d4fba07eL


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 139
    const-string v0, "RECURRENCE-ID"

    invoke-static {}, Lnet/fortuna/ical4j/model/PropertyFactoryImpl;->getInstance()Lnet/fortuna/ical4j/model/PropertyFactoryImpl;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lnet/fortuna/ical4j/model/property/DateProperty;-><init>(Ljava/lang/String;Lnet/fortuna/ical4j/model/PropertyFactory;)V

    .line 140
    new-instance v0, Lnet/fortuna/ical4j/model/DateTime;

    invoke-direct {v0}, Lnet/fortuna/ical4j/model/DateTime;-><init>()V

    invoke-virtual {p0, v0}, Lnet/fortuna/ical4j/model/property/RecurrenceId;->setDate(Lnet/fortuna/ical4j/model/Date;)V

    .line 141
    return-void
.end method


# virtual methods
.method public final validate()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/fortuna/ical4j/model/ValidationException;
        }
    .end annotation

    .prologue
    .line 207
    invoke-super {p0}, Lnet/fortuna/ical4j/model/property/DateProperty;->validate()V

    .line 214
    invoke-static {}, Lnet/fortuna/ical4j/util/ParameterValidator;->getInstance()Lnet/fortuna/ical4j/util/ParameterValidator;

    move-result-object v0

    const-string v1, "RANGE"

    .line 215
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/property/RecurrenceId;->getParameters()Lnet/fortuna/ical4j/model/ParameterList;

    move-result-object v2

    .line 214
    invoke-virtual {v0, v1, v2}, Lnet/fortuna/ical4j/util/ParameterValidator;->assertOneOrLess(Ljava/lang/String;Lnet/fortuna/ical4j/model/ParameterList;)V

    .line 220
    return-void
.end method
