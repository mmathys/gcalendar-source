.class public Lnet/fortuna/ical4j/model/property/TzOffsetTo;
.super Lnet/fortuna/ical4j/model/Property;
.source "TzOffsetTo.java"


# static fields
.field private static final serialVersionUID:J = 0x71fd8b683389bf04L


# instance fields
.field private offset:Lnet/fortuna/ical4j/model/UtcOffset;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 58
    const-string v0, "TZOFFSETTO"

    invoke-static {}, Lnet/fortuna/ical4j/model/PropertyFactoryImpl;->getInstance()Lnet/fortuna/ical4j/model/PropertyFactoryImpl;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lnet/fortuna/ical4j/model/Property;-><init>(Ljava/lang/String;Lnet/fortuna/ical4j/model/PropertyFactory;)V

    .line 59
    return-void
.end method


# virtual methods
.method public final getOffset()Lnet/fortuna/ical4j/model/UtcOffset;
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lnet/fortuna/ical4j/model/property/TzOffsetTo;->offset:Lnet/fortuna/ical4j/model/UtcOffset;

    return-object v0
.end method

.method public final getValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lnet/fortuna/ical4j/model/property/TzOffsetTo;->offset:Lnet/fortuna/ical4j/model/UtcOffset;

    if-eqz v0, :cond_0

    .line 114
    iget-object v0, p0, Lnet/fortuna/ical4j/model/property/TzOffsetTo;->offset:Lnet/fortuna/ical4j/model/UtcOffset;

    invoke-virtual {v0}, Lnet/fortuna/ical4j/model/UtcOffset;->toString()Ljava/lang/String;

    move-result-object v0

    .line 116
    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public final setValue(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 106
    new-instance v0, Lnet/fortuna/ical4j/model/UtcOffset;

    invoke-direct {v0, p1}, Lnet/fortuna/ical4j/model/UtcOffset;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lnet/fortuna/ical4j/model/property/TzOffsetTo;->offset:Lnet/fortuna/ical4j/model/UtcOffset;

    .line 107
    return-void
.end method

.method public final validate()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/fortuna/ical4j/model/ValidationException;
        }
    .end annotation

    .prologue
    .line 131
    return-void
.end method
