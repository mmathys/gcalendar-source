.class public Lnet/fortuna/ical4j/model/property/Sequence;
.super Lnet/fortuna/ical4j/model/Property;
.source "Sequence.java"


# static fields
.field private static final serialVersionUID:J = -0x164d1d550f27bb45L


# instance fields
.field private sequenceNo:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 139
    const-string v0, "SEQUENCE"

    invoke-static {}, Lnet/fortuna/ical4j/model/PropertyFactoryImpl;->getInstance()Lnet/fortuna/ical4j/model/PropertyFactoryImpl;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lnet/fortuna/ical4j/model/Property;-><init>(Ljava/lang/String;Lnet/fortuna/ical4j/model/PropertyFactory;)V

    .line 140
    const/4 v0, 0x0

    iput v0, p0, Lnet/fortuna/ical4j/model/property/Sequence;->sequenceNo:I

    .line 141
    return-void
.end method

.method public constructor <init>(I)V
    .locals 2

    .prologue
    .line 164
    const-string v0, "SEQUENCE"

    invoke-static {}, Lnet/fortuna/ical4j/model/PropertyFactoryImpl;->getInstance()Lnet/fortuna/ical4j/model/PropertyFactoryImpl;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lnet/fortuna/ical4j/model/Property;-><init>(Ljava/lang/String;Lnet/fortuna/ical4j/model/PropertyFactory;)V

    .line 165
    iput p1, p0, Lnet/fortuna/ical4j/model/property/Sequence;->sequenceNo:I

    .line 166
    return-void
.end method


# virtual methods
.method public final getSequenceNo()I
    .locals 1

    .prologue
    .line 181
    iget v0, p0, Lnet/fortuna/ical4j/model/property/Sequence;->sequenceNo:I

    return v0
.end method

.method public final getValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 195
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/property/Sequence;->getSequenceNo()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final setValue(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 188
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lnet/fortuna/ical4j/model/property/Sequence;->sequenceNo:I

    .line 189
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
    .line 203
    return-void
.end method
