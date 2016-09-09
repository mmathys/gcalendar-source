.class public Lcom/google/calendar/v2/client/service/api/time/Interval;
.super Ljava/lang/Object;
.source "Interval.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/google/calendar/v2/client/service/api/time/Instant;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final end:Lcom/google/calendar/v2/client/service/api/time/Instant;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private final start:Lcom/google/calendar/v2/client/service/api/time/Instant;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Lcom/google/calendar/v2/client/service/api/time/Instant;Lcom/google/calendar/v2/client/service/api/time/Instant;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)V"
        }
    .end annotation

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/google/calendar/v2/client/service/api/time/Interval;->start:Lcom/google/calendar/v2/client/service/api/time/Instant;

    .line 23
    iput-object p2, p0, Lcom/google/calendar/v2/client/service/api/time/Interval;->end:Lcom/google/calendar/v2/client/service/api/time/Instant;

    .line 24
    return-void
.end method

.method public static between(Lcom/google/calendar/v2/client/service/api/time/Instant;Lcom/google/calendar/v2/client/service/api/time/Instant;)Lcom/google/calendar/v2/client/service/api/time/Interval;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/google/calendar/v2/client/service/api/time/Instant;",
            ">(TT;TT;)",
            "Lcom/google/calendar/v2/client/service/api/time/Interval",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 28
    new-instance v0, Lcom/google/calendar/v2/client/service/api/time/Interval;

    invoke-direct {v0, p0, p1}, Lcom/google/calendar/v2/client/service/api/time/Interval;-><init>(Lcom/google/calendar/v2/client/service/api/time/Instant;Lcom/google/calendar/v2/client/service/api/time/Instant;)V

    return-object v0
.end method


# virtual methods
.method public contains(Lcom/google/calendar/v2/client/service/api/time/Instant;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 40
    iget-object v0, p0, Lcom/google/calendar/v2/client/service/api/time/Interval;->start:Lcom/google/calendar/v2/client/service/api/time/Instant;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/calendar/v2/client/service/api/time/Interval;->start:Lcom/google/calendar/v2/client/service/api/time/Instant;

    invoke-interface {v0, p1}, Lcom/google/calendar/v2/client/service/api/time/Instant;->compareTo(Lcom/google/calendar/v2/client/service/api/time/Instant;)I

    move-result v0

    if-lez v0, :cond_0

    move v0, v1

    .line 41
    :goto_0
    iget-object v3, p0, Lcom/google/calendar/v2/client/service/api/time/Interval;->end:Lcom/google/calendar/v2/client/service/api/time/Instant;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/google/calendar/v2/client/service/api/time/Interval;->end:Lcom/google/calendar/v2/client/service/api/time/Instant;

    invoke-interface {v3, p1}, Lcom/google/calendar/v2/client/service/api/time/Instant;->compareTo(Lcom/google/calendar/v2/client/service/api/time/Instant;)I

    move-result v3

    if-gtz v3, :cond_1

    move v3, v1

    .line 42
    :goto_1
    if-nez v0, :cond_2

    if-nez v3, :cond_2

    :goto_2
    return v1

    :cond_0
    move v0, v2

    .line 40
    goto :goto_0

    :cond_1
    move v3, v2

    .line 41
    goto :goto_1

    :cond_2
    move v1, v2

    .line 42
    goto :goto_2
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 47
    instance-of v1, p1, Lcom/google/calendar/v2/client/service/api/time/Interval;

    if-nez v1, :cond_1

    .line 52
    :cond_0
    :goto_0
    return v0

    .line 51
    :cond_1
    check-cast p1, Lcom/google/calendar/v2/client/service/api/time/Interval;

    .line 52
    iget-object v1, p0, Lcom/google/calendar/v2/client/service/api/time/Interval;->start:Lcom/google/calendar/v2/client/service/api/time/Instant;

    invoke-virtual {p1}, Lcom/google/calendar/v2/client/service/api/time/Interval;->getStart()Lcom/google/calendar/v2/client/service/api/time/Instant;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/calendar/v2/client/service/api/time/Interval;->end:Lcom/google/calendar/v2/client/service/api/time/Instant;

    .line 53
    invoke-virtual {p1}, Lcom/google/calendar/v2/client/service/api/time/Interval;->getEnd()Lcom/google/calendar/v2/client/service/api/time/Instant;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getEnd()Lcom/google/calendar/v2/client/service/api/time/Instant;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 36
    iget-object v0, p0, Lcom/google/calendar/v2/client/service/api/time/Interval;->end:Lcom/google/calendar/v2/client/service/api/time/Instant;

    return-object v0
.end method

.method public getStart()Lcom/google/calendar/v2/client/service/api/time/Instant;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 32
    iget-object v0, p0, Lcom/google/calendar/v2/client/service/api/time/Interval;->start:Lcom/google/calendar/v2/client/service/api/time/Instant;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 58
    iget-object v0, p0, Lcom/google/calendar/v2/client/service/api/time/Interval;->start:Lcom/google/calendar/v2/client/service/api/time/Instant;

    iget-object v1, p0, Lcom/google/calendar/v2/client/service/api/time/Interval;->end:Lcom/google/calendar/v2/client/service/api/time/Instant;

    invoke-static {v0, v1}, Lcom/google/calendar/v2/common/ObjectUtil;->hashCode(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 63
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/base/MoreObjects;->toStringHelper(Ljava/lang/Class;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    const-string v1, "start"

    iget-object v2, p0, Lcom/google/calendar/v2/client/service/api/time/Interval;->start:Lcom/google/calendar/v2/client/service/api/time/Instant;

    .line 64
    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    const-string v1, "end"

    iget-object v2, p0, Lcom/google/calendar/v2/client/service/api/time/Interval;->end:Lcom/google/calendar/v2/client/service/api/time/Instant;

    .line 65
    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    .line 66
    invoke-virtual {v0}, Lcom/google/common/base/MoreObjects$ToStringHelper;->toString()Ljava/lang/String;

    move-result-object v0

    .line 63
    return-object v0
.end method
