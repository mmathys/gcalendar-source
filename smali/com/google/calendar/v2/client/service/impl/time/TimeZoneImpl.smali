.class public Lcom/google/calendar/v2/client/service/impl/time/TimeZoneImpl;
.super Ljava/lang/Object;
.source "TimeZoneImpl.java"

# interfaces
.implements Lcom/google/calendar/v2/client/service/api/common/UniquelyIdentifiable;
.implements Lcom/google/calendar/v2/client/service/api/time/TimeZone;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/calendar/v2/client/service/impl/time/TimeZoneImpl$Builder;,
        Lcom/google/calendar/v2/client/service/impl/time/TimeZoneImpl$Transition;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/calendar/v2/client/service/api/common/UniquelyIdentifiable",
        "<",
        "Ljava/lang/String;",
        ">;",
        "Lcom/google/calendar/v2/client/service/api/time/TimeZone;"
    }
.end annotation


# instance fields
.field final id:Ljava/lang/String;

.field final standardOffset:I

.field final transitions:[Lcom/google/calendar/v2/client/service/impl/time/TimeZoneImpl$Transition;


# direct methods
.method private constructor <init>(Lcom/google/calendar/v2/client/service/impl/time/TimeZoneImpl$Builder;)V
    .locals 2

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    # getter for: Lcom/google/calendar/v2/client/service/impl/time/TimeZoneImpl$Builder;->id:Ljava/lang/String;
    invoke-static {p1}, Lcom/google/calendar/v2/client/service/impl/time/TimeZoneImpl$Builder;->access$000(Lcom/google/calendar/v2/client/service/impl/time/TimeZoneImpl$Builder;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/google/calendar/v2/client/service/impl/time/TimeZoneImpl;->id:Ljava/lang/String;

    .line 53
    # getter for: Lcom/google/calendar/v2/client/service/impl/time/TimeZoneImpl$Builder;->standardOffset:I
    invoke-static {p1}, Lcom/google/calendar/v2/client/service/impl/time/TimeZoneImpl$Builder;->access$100(Lcom/google/calendar/v2/client/service/impl/time/TimeZoneImpl$Builder;)I

    move-result v0

    iput v0, p0, Lcom/google/calendar/v2/client/service/impl/time/TimeZoneImpl;->standardOffset:I

    .line 54
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/calendar/v2/client/service/impl/time/TimeZoneImpl$Transition;

    .line 55
    # getter for: Lcom/google/calendar/v2/client/service/impl/time/TimeZoneImpl$Builder;->transitions:Ljava/util/List;
    invoke-static {p1}, Lcom/google/calendar/v2/client/service/impl/time/TimeZoneImpl$Builder;->access$200(Lcom/google/calendar/v2/client/service/impl/time/TimeZoneImpl$Builder;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/calendar/v2/client/service/impl/time/TimeZoneImpl$Transition;

    iput-object v0, p0, Lcom/google/calendar/v2/client/service/impl/time/TimeZoneImpl;->transitions:[Lcom/google/calendar/v2/client/service/impl/time/TimeZoneImpl$Transition;

    .line 56
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/calendar/v2/client/service/impl/time/TimeZoneImpl$Builder;Lcom/google/calendar/v2/client/service/impl/time/TimeZoneImpl$1;)V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0, p1}, Lcom/google/calendar/v2/client/service/impl/time/TimeZoneImpl;-><init>(Lcom/google/calendar/v2/client/service/impl/time/TimeZoneImpl$Builder;)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 89
    if-ne p0, p1, :cond_1

    .line 96
    :cond_0
    :goto_0
    return v0

    .line 92
    :cond_1
    instance-of v2, p1, Lcom/google/calendar/v2/client/service/impl/time/TimeZoneImpl;

    if-nez v2, :cond_2

    move v0, v1

    .line 93
    goto :goto_0

    .line 95
    :cond_2
    check-cast p1, Lcom/google/calendar/v2/client/service/impl/time/TimeZoneImpl;

    .line 96
    iget-object v2, p0, Lcom/google/calendar/v2/client/service/impl/time/TimeZoneImpl;->id:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/calendar/v2/client/service/impl/time/TimeZoneImpl;->id:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget v2, p0, Lcom/google/calendar/v2/client/service/impl/time/TimeZoneImpl;->standardOffset:I

    .line 97
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lcom/google/calendar/v2/client/service/impl/time/TimeZoneImpl;->standardOffset:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/google/calendar/v2/client/service/impl/time/TimeZoneImpl;->transitions:[Lcom/google/calendar/v2/client/service/impl/time/TimeZoneImpl$Transition;

    iget-object v3, p1, Lcom/google/calendar/v2/client/service/impl/time/TimeZoneImpl;->transitions:[Lcom/google/calendar/v2/client/service/impl/time/TimeZoneImpl$Transition;

    .line 98
    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/google/calendar/v2/client/service/impl/time/TimeZoneImpl;->id:Ljava/lang/String;

    return-object v0
.end method

.method public bridge synthetic getKey()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 17
    invoke-virtual {p0}, Lcom/google/calendar/v2/client/service/impl/time/TimeZoneImpl;->getKey()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/google/calendar/v2/client/service/impl/time/TimeZoneImpl;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getOffset(J)I
    .locals 5

    .prologue
    const/4 v1, -0x1

    .line 60
    move v0, v1

    .line 61
    :goto_0
    add-int/lit8 v2, v0, 0x1

    iget-object v3, p0, Lcom/google/calendar/v2/client/service/impl/time/TimeZoneImpl;->transitions:[Lcom/google/calendar/v2/client/service/impl/time/TimeZoneImpl$Transition;

    array-length v3, v3

    if-ge v2, v3, :cond_0

    iget-object v2, p0, Lcom/google/calendar/v2/client/service/impl/time/TimeZoneImpl;->transitions:[Lcom/google/calendar/v2/client/service/impl/time/TimeZoneImpl$Transition;

    add-int/lit8 v3, v0, 0x1

    aget-object v2, v2, v3

    iget-wide v2, v2, Lcom/google/calendar/v2/client/service/impl/time/TimeZoneImpl$Transition;->time:J

    cmp-long v2, v2, p1

    if-gtz v2, :cond_0

    .line 62
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 64
    :cond_0
    if-ne v0, v1, :cond_1

    .line 65
    iget v0, p0, Lcom/google/calendar/v2/client/service/impl/time/TimeZoneImpl;->standardOffset:I

    .line 67
    :goto_1
    return v0

    :cond_1
    iget v1, p0, Lcom/google/calendar/v2/client/service/impl/time/TimeZoneImpl;->standardOffset:I

    iget-object v2, p0, Lcom/google/calendar/v2/client/service/impl/time/TimeZoneImpl;->transitions:[Lcom/google/calendar/v2/client/service/impl/time/TimeZoneImpl$Transition;

    aget-object v0, v2, v0

    iget v0, v0, Lcom/google/calendar/v2/client/service/impl/time/TimeZoneImpl$Transition;->adjustment:I

    add-int/2addr v0, v1

    goto :goto_1
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 83
    iget-object v0, p0, Lcom/google/calendar/v2/client/service/impl/time/TimeZoneImpl;->id:Ljava/lang/String;

    iget v1, p0, Lcom/google/calendar/v2/client/service/impl/time/TimeZoneImpl;->standardOffset:I

    .line 84
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/google/calendar/v2/client/service/impl/time/TimeZoneImpl;->transitions:[Lcom/google/calendar/v2/client/service/impl/time/TimeZoneImpl$Transition;

    invoke-static {v2}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 83
    invoke-static {v0, v1, v2}, Lcom/google/calendar/v2/common/ObjectUtil;->hashCode(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
