.class public Lnet/fortuna/ical4j/model/property/PercentComplete;
.super Lnet/fortuna/ical4j/model/Property;
.source "PercentComplete.java"


# static fields
.field private static final serialVersionUID:J = 0x6c1506b052f995b0L


# instance fields
.field private percentage:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 57
    const-string v0, "PERCENT-COMPLETE"

    invoke-static {}, Lnet/fortuna/ical4j/model/PropertyFactoryImpl;->getInstance()Lnet/fortuna/ical4j/model/PropertyFactoryImpl;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lnet/fortuna/ical4j/model/Property;-><init>(Ljava/lang/String;Lnet/fortuna/ical4j/model/PropertyFactory;)V

    .line 58
    return-void
.end method


# virtual methods
.method public final getPercentage()I
    .locals 1

    .prologue
    .line 90
    iget v0, p0, Lnet/fortuna/ical4j/model/property/PercentComplete;->percentage:I

    return v0
.end method

.method public final getValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 104
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/property/PercentComplete;->getPercentage()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final setValue(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 97
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lnet/fortuna/ical4j/model/property/PercentComplete;->percentage:I

    .line 98
    return-void
.end method

.method public final validate()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/fortuna/ical4j/model/ValidationException;
        }
    .end annotation

    .prologue
    .line 118
    iget v0, p0, Lnet/fortuna/ical4j/model/property/PercentComplete;->percentage:I

    if-ltz v0, :cond_0

    iget v0, p0, Lnet/fortuna/ical4j/model/property/PercentComplete;->percentage:I

    const/16 v1, 0x64

    if-le v0, v1, :cond_1

    .line 119
    :cond_0
    new-instance v0, Lnet/fortuna/ical4j/model/ValidationException;

    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/property/PercentComplete;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lnet/fortuna/ical4j/model/property/PercentComplete;->percentage:I

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x20

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " with invalid value: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lnet/fortuna/ical4j/model/ValidationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 121
    :cond_1
    return-void
.end method
