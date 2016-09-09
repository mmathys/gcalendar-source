.class Lcom/google/android/calendar/task/ParsedOpeningHours$Interval;
.super Ljava/lang/Object;
.source "ParsedOpeningHours.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/calendar/task/ParsedOpeningHours;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Interval"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/google/android/calendar/task/ParsedOpeningHours$Interval;",
        ">;"
    }
.end annotation


# instance fields
.field public end:I

.field public start:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    .prologue
    .line 434
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 435
    iput p1, p0, Lcom/google/android/calendar/task/ParsedOpeningHours$Interval;->start:I

    .line 436
    iput p2, p0, Lcom/google/android/calendar/task/ParsedOpeningHours$Interval;->end:I

    .line 437
    return-void
.end method


# virtual methods
.method public compareTo(Lcom/google/android/calendar/task/ParsedOpeningHours$Interval;)I
    .locals 2

    .prologue
    .line 458
    iget v0, p0, Lcom/google/android/calendar/task/ParsedOpeningHours$Interval;->start:I

    iget v1, p1, Lcom/google/android/calendar/task/ParsedOpeningHours$Interval;->start:I

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/google/android/calendar/task/ParsedOpeningHours$Interval;->start:I

    iget v1, p1, Lcom/google/android/calendar/task/ParsedOpeningHours$Interval;->start:I

    sub-int/2addr v0, v1

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/google/android/calendar/task/ParsedOpeningHours$Interval;->end:I

    iget v1, p1, Lcom/google/android/calendar/task/ParsedOpeningHours$Interval;->end:I

    sub-int/2addr v0, v1

    goto :goto_0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 430
    check-cast p1, Lcom/google/android/calendar/task/ParsedOpeningHours$Interval;

    invoke-virtual {p0, p1}, Lcom/google/android/calendar/task/ParsedOpeningHours$Interval;->compareTo(Lcom/google/android/calendar/task/ParsedOpeningHours$Interval;)I

    move-result v0

    return v0
.end method

.method public contains(I)Z
    .locals 1

    .prologue
    .line 440
    iget v0, p0, Lcom/google/android/calendar/task/ParsedOpeningHours$Interval;->start:I

    if-gt v0, p1, :cond_0

    iget v0, p0, Lcom/google/android/calendar/task/ParsedOpeningHours$Interval;->end:I

    if-ge p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 463
    if-ne p1, p0, :cond_1

    .line 470
    :cond_0
    :goto_0
    return v0

    .line 466
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_3

    :cond_2
    move v0, v1

    .line 467
    goto :goto_0

    .line 469
    :cond_3
    check-cast p1, Lcom/google/android/calendar/task/ParsedOpeningHours$Interval;

    .line 470
    iget v2, p0, Lcom/google/android/calendar/task/ParsedOpeningHours$Interval;->start:I

    iget v3, p1, Lcom/google/android/calendar/task/ParsedOpeningHours$Interval;->start:I

    if-ne v2, v3, :cond_4

    iget v2, p0, Lcom/google/android/calendar/task/ParsedOpeningHours$Interval;->end:I

    iget v3, p1, Lcom/google/android/calendar/task/ParsedOpeningHours$Interval;->end:I

    if-eq v2, v3, :cond_0

    :cond_4
    move v0, v1

    goto :goto_0
.end method

.method public isAdjacentOrOverlapping(Lcom/google/android/calendar/task/ParsedOpeningHours$Interval;)Z
    .locals 2

    .prologue
    .line 449
    iget v0, p0, Lcom/google/android/calendar/task/ParsedOpeningHours$Interval;->end:I

    iget v1, p1, Lcom/google/android/calendar/task/ParsedOpeningHours$Interval;->start:I

    if-lt v0, v1, :cond_0

    iget v0, p1, Lcom/google/android/calendar/task/ParsedOpeningHours$Interval;->end:I

    iget v1, p0, Lcom/google/android/calendar/task/ParsedOpeningHours$Interval;->start:I

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
