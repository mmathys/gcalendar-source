.class public Lcom/google/calendar/v2/client/service/api/events/RecurrenceData$ByDay;
.super Ljava/lang/Object;
.source "RecurrenceData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/calendar/v2/client/service/api/events/RecurrenceData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ByDay"
.end annotation


# instance fields
.field private final offset:I

.field private final weekday:I


# direct methods
.method public constructor <init>(I)V
    .locals 1

    .prologue
    .line 72
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/calendar/v2/client/service/api/events/RecurrenceData$ByDay;-><init>(II)V

    .line 73
    return-void
.end method

.method public constructor <init>(II)V
    .locals 0

    .prologue
    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    iput p1, p0, Lcom/google/calendar/v2/client/service/api/events/RecurrenceData$ByDay;->weekday:I

    .line 81
    iput p2, p0, Lcom/google/calendar/v2/client/service/api/events/RecurrenceData$ByDay;->offset:I

    .line 82
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 98
    if-ne p0, p1, :cond_1

    .line 105
    :cond_0
    :goto_0
    return v0

    .line 101
    :cond_1
    instance-of v2, p1, Lcom/google/calendar/v2/client/service/api/events/RecurrenceData$ByDay;

    if-nez v2, :cond_2

    move v0, v1

    .line 102
    goto :goto_0

    .line 104
    :cond_2
    check-cast p1, Lcom/google/calendar/v2/client/service/api/events/RecurrenceData$ByDay;

    .line 105
    iget v2, p0, Lcom/google/calendar/v2/client/service/api/events/RecurrenceData$ByDay;->weekday:I

    iget v3, p1, Lcom/google/calendar/v2/client/service/api/events/RecurrenceData$ByDay;->weekday:I

    if-ne v2, v3, :cond_3

    iget v2, p0, Lcom/google/calendar/v2/client/service/api/events/RecurrenceData$ByDay;->offset:I

    iget v3, p1, Lcom/google/calendar/v2/client/service/api/events/RecurrenceData$ByDay;->offset:I

    if-eq v2, v3, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public getOffset()I
    .locals 1

    .prologue
    .line 93
    iget v0, p0, Lcom/google/calendar/v2/client/service/api/events/RecurrenceData$ByDay;->offset:I

    return v0
.end method

.method public getWeekday()I
    .locals 1

    .prologue
    .line 85
    iget v0, p0, Lcom/google/calendar/v2/client/service/api/events/RecurrenceData$ByDay;->weekday:I

    return v0
.end method

.method public hasOffset()Z
    .locals 1

    .prologue
    .line 89
    iget v0, p0, Lcom/google/calendar/v2/client/service/api/events/RecurrenceData$ByDay;->offset:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 110
    iget v0, p0, Lcom/google/calendar/v2/client/service/api/events/RecurrenceData$ByDay;->weekday:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget v1, p0, Lcom/google/calendar/v2/client/service/api/events/RecurrenceData$ByDay;->offset:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/calendar/v2/common/ObjectUtil;->hashCode(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
