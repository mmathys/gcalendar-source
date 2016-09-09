.class public Lnet/fortuna/ical4j/model/property/Due;
.super Lnet/fortuna/ical4j/model/property/DateProperty;
.source "Due.java"


# static fields
.field private static final serialVersionUID:J = -0x2926e7de94a64326L


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 104
    const-string v0, "DUE"

    invoke-static {}, Lnet/fortuna/ical4j/model/PropertyFactoryImpl;->getInstance()Lnet/fortuna/ical4j/model/PropertyFactoryImpl;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lnet/fortuna/ical4j/model/property/DateProperty;-><init>(Ljava/lang/String;Lnet/fortuna/ical4j/model/PropertyFactory;)V

    .line 106
    new-instance v0, Lnet/fortuna/ical4j/model/DateTime;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lnet/fortuna/ical4j/model/DateTime;-><init>(Z)V

    invoke-virtual {p0, v0}, Lnet/fortuna/ical4j/model/property/Due;->setDate(Lnet/fortuna/ical4j/model/Date;)V

    .line 107
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
    .line 173
    invoke-super {p0}, Lnet/fortuna/ical4j/model/property/DateProperty;->validate()V

    .line 183
    return-void
.end method
