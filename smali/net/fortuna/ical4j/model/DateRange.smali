.class public Lnet/fortuna/ical4j/model/DateRange;
.super Ljava/lang/Object;
.source "DateRange.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x655c79dbc8a6fbf6L


# instance fields
.field private final rangeEnd:Ljava/util/Date;

.field private final rangeStart:Ljava/util/Date;


# direct methods
.method public constructor <init>(Ljava/util/Date;Ljava/util/Date;)V
    .locals 2

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    if-nez p1, :cond_0

    .line 65
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Range start is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 67
    :cond_0
    if-nez p2, :cond_1

    .line 68
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Range end is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 70
    :cond_1
    invoke-virtual {p2, p1}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 71
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Range start must be before range end"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 73
    :cond_2
    iput-object p1, p0, Lnet/fortuna/ical4j/model/DateRange;->rangeStart:Ljava/util/Date;

    .line 74
    iput-object p2, p0, Lnet/fortuna/ical4j/model/DateRange;->rangeEnd:Ljava/util/Date;

    .line 75
    return-void
.end method


# virtual methods
.method public getRangeEnd()Ljava/util/Date;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lnet/fortuna/ical4j/model/DateRange;->rangeEnd:Ljava/util/Date;

    return-object v0
.end method

.method public getRangeStart()Ljava/util/Date;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lnet/fortuna/ical4j/model/DateRange;->rangeStart:Ljava/util/Date;

    return-object v0
.end method
