.class public Lnet/fortuna/ical4j/model/property/DtStart;
.super Lnet/fortuna/ical4j/model/property/DateProperty;
.source "DtStart.java"


# static fields
.field private static final serialVersionUID:J = -0x4f33aeeac057d307L


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 117
    const-string v0, "DTSTART"

    invoke-static {}, Lnet/fortuna/ical4j/model/PropertyFactoryImpl;->getInstance()Lnet/fortuna/ical4j/model/PropertyFactoryImpl;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lnet/fortuna/ical4j/model/property/DateProperty;-><init>(Ljava/lang/String;Lnet/fortuna/ical4j/model/PropertyFactory;)V

    .line 118
    return-void
.end method

.method public constructor <init>(Lnet/fortuna/ical4j/model/Date;)V
    .locals 2

    .prologue
    .line 165
    const-string v0, "DTSTART"

    invoke-static {}, Lnet/fortuna/ical4j/model/PropertyFactoryImpl;->getInstance()Lnet/fortuna/ical4j/model/PropertyFactoryImpl;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lnet/fortuna/ical4j/model/property/DateProperty;-><init>(Ljava/lang/String;Lnet/fortuna/ical4j/model/PropertyFactory;)V

    .line 166
    invoke-virtual {p0, p1}, Lnet/fortuna/ical4j/model/property/DtStart;->setDate(Lnet/fortuna/ical4j/model/Date;)V

    .line 167
    return-void
.end method


# virtual methods
.method public final validate()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/fortuna/ical4j/model/ValidationException;
        }
    .end annotation

    .prologue
    .line 194
    invoke-super {p0}, Lnet/fortuna/ical4j/model/property/DateProperty;->validate()V

    .line 204
    return-void
.end method
