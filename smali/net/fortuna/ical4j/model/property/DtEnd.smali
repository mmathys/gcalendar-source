.class public Lnet/fortuna/ical4j/model/property/DtEnd;
.super Lnet/fortuna/ical4j/model/property/DateProperty;
.source "DtEnd.java"


# static fields
.field private static final serialVersionUID:J = 0x7083548512a54109L


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 119
    const-string v0, "DTEND"

    invoke-static {}, Lnet/fortuna/ical4j/model/PropertyFactoryImpl;->getInstance()Lnet/fortuna/ical4j/model/PropertyFactoryImpl;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lnet/fortuna/ical4j/model/property/DateProperty;-><init>(Ljava/lang/String;Lnet/fortuna/ical4j/model/PropertyFactory;)V

    .line 120
    return-void
.end method

.method public constructor <init>(Lnet/fortuna/ical4j/model/Date;)V
    .locals 2

    .prologue
    .line 168
    const-string v0, "DTEND"

    invoke-static {}, Lnet/fortuna/ical4j/model/PropertyFactoryImpl;->getInstance()Lnet/fortuna/ical4j/model/PropertyFactoryImpl;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lnet/fortuna/ical4j/model/property/DateProperty;-><init>(Ljava/lang/String;Lnet/fortuna/ical4j/model/PropertyFactory;)V

    .line 169
    invoke-virtual {p0, p1}, Lnet/fortuna/ical4j/model/property/DtEnd;->setDate(Lnet/fortuna/ical4j/model/Date;)V

    .line 170
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
    .line 197
    invoke-super {p0}, Lnet/fortuna/ical4j/model/property/DateProperty;->validate()V

    .line 207
    return-void
.end method
