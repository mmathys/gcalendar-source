.class public Lnet/fortuna/ical4j/model/property/DtStamp;
.super Lnet/fortuna/ical4j/model/property/UtcProperty;
.source "DtStamp.java"


# static fields
.field private static final serialVersionUID:J = 0x6935d34b9b8beac6L


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 94
    const-string v0, "DTSTAMP"

    invoke-static {}, Lnet/fortuna/ical4j/model/PropertyFactoryImpl;->getInstance()Lnet/fortuna/ical4j/model/PropertyFactoryImpl;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lnet/fortuna/ical4j/model/property/UtcProperty;-><init>(Ljava/lang/String;Lnet/fortuna/ical4j/model/PropertyFactory;)V

    .line 95
    return-void
.end method

.method public constructor <init>(Lnet/fortuna/ical4j/model/DateTime;)V
    .locals 2

    .prologue
    .line 120
    const-string v0, "DTSTAMP"

    invoke-static {}, Lnet/fortuna/ical4j/model/PropertyFactoryImpl;->getInstance()Lnet/fortuna/ical4j/model/PropertyFactoryImpl;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lnet/fortuna/ical4j/model/property/UtcProperty;-><init>(Ljava/lang/String;Lnet/fortuna/ical4j/model/PropertyFactory;)V

    .line 122
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lnet/fortuna/ical4j/model/DateTime;->setUtc(Z)V

    .line 123
    invoke-virtual {p0, p1}, Lnet/fortuna/ical4j/model/property/DtStamp;->setDate(Lnet/fortuna/ical4j/model/Date;)V

    .line 124
    return-void
.end method
