.class public Lcom/android/calendarcommon2/RecurrenceProcessor$DaySet;
.super Ljava/lang/Object;
.source "RecurrenceProcessor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendarcommon2/RecurrenceProcessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DaySet"
.end annotation


# instance fields
.field private mDays:I

.field private mMonth:I

.field private mR:Lcom/android/calendarcommon2/EventRecurrence;

.field private mTime:Landroid/text/format/Time;

.field private mYear:I


# direct methods
.method public constructor <init>(Z)V
    .locals 2

    .prologue
    .line 419
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 420
    new-instance v0, Landroid/text/format/Time;

    const-string v1, "UTC"

    invoke-direct {v0, v1}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/calendarcommon2/RecurrenceProcessor$DaySet;->mTime:Landroid/text/format/Time;

    .line 421
    return-void
.end method

.method private static generateDaysList(Landroid/text/format/Time;Lcom/android/calendarcommon2/EventRecurrence;)I
    .locals 11

    .prologue
    const/4 v2, 0x0

    const/4 v4, 0x1

    .line 496
    .line 504
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroid/text/format/Time;->getActualMaximum(I)I

    move-result v6

    .line 507
    iget v7, p1, Lcom/android/calendarcommon2/EventRecurrence;->bydayCount:I

    .line 508
    if-lez v7, :cond_7

    .line 510
    iget v0, p0, Landroid/text/format/Time;->monthDay:I

    .line 511
    :goto_0
    const/16 v1, 0x8

    if-lt v0, v1, :cond_0

    .line 512
    add-int/lit8 v0, v0, -0x7

    goto :goto_0

    .line 514
    :cond_0
    iget v1, p0, Landroid/text/format/Time;->weekDay:I

    .line 515
    if-lt v1, v0, :cond_2

    .line 516
    sub-int v0, v1, v0

    add-int/lit8 v0, v0, 0x1

    .line 525
    :goto_1
    iget-object v8, p1, Lcom/android/calendarcommon2/EventRecurrence;->byday:[I

    .line 526
    iget-object v9, p1, Lcom/android/calendarcommon2/EventRecurrence;->bydayNum:[I

    move v5, v2

    move v1, v2

    .line 527
    :goto_2
    if-ge v5, v7, :cond_8

    .line 528
    aget v10, v9, v5

    .line 529
    aget v3, v8, v5

    invoke-static {v3}, Lcom/android/calendarcommon2/EventRecurrence;->day2TimeDay(I)I

    move-result v3

    sub-int/2addr v3, v0

    add-int/lit8 v3, v3, 0x1

    .line 530
    if-gtz v3, :cond_1

    .line 531
    add-int/lit8 v3, v3, 0x7

    .line 533
    :cond_1
    if-nez v10, :cond_3

    .line 535
    :goto_3
    if-gt v3, v6, :cond_4

    .line 538
    shl-int v10, v4, v3

    or-int/2addr v1, v10

    .line 535
    add-int/lit8 v3, v3, 0x7

    goto :goto_3

    .line 518
    :cond_2
    sub-int v0, v1, v0

    add-int/lit8 v0, v0, 0x8

    goto :goto_1

    .line 541
    :cond_3
    if-lez v10, :cond_5

    .line 544
    add-int/lit8 v10, v10, -0x1

    mul-int/lit8 v10, v10, 0x7

    add-int/2addr v3, v10

    .line 545
    if-gt v3, v6, :cond_4

    .line 549
    shl-int v3, v4, v3

    or-int/2addr v1, v3

    .line 527
    :cond_4
    :goto_4
    add-int/lit8 v3, v5, 0x1

    move v5, v3

    goto :goto_2

    .line 555
    :cond_5
    :goto_5
    if-gt v3, v6, :cond_6

    add-int/lit8 v3, v3, 0x7

    goto :goto_5

    .line 561
    :cond_6
    mul-int/lit8 v10, v10, 0x7

    add-int/2addr v3, v10

    .line 562
    if-lt v3, v4, :cond_4

    .line 565
    shl-int v3, v4, v3

    or-int/2addr v1, v3

    goto :goto_4

    :cond_7
    move v1, v2

    .line 575
    :cond_8
    iget v0, p1, Lcom/android/calendarcommon2/EventRecurrence;->freq:I

    const/4 v3, 0x5

    if-le v0, v3, :cond_f

    .line 576
    iget v5, p1, Lcom/android/calendarcommon2/EventRecurrence;->bymonthdayCount:I

    .line 577
    if-eqz v5, :cond_f

    .line 578
    iget-object v7, p1, Lcom/android/calendarcommon2/EventRecurrence;->bymonthday:[I

    .line 579
    iget v0, p1, Lcom/android/calendarcommon2/EventRecurrence;->bydayCount:I

    if-nez v0, :cond_b

    move v0, v1

    .line 580
    :goto_6
    if-ge v2, v5, :cond_10

    .line 581
    aget v1, v7, v2

    .line 582
    if-ltz v1, :cond_a

    .line 583
    shl-int v1, v4, v1

    or-int/2addr v0, v1

    .line 580
    :cond_9
    :goto_7
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 585
    :cond_a
    add-int/2addr v1, v6

    add-int/lit8 v1, v1, 0x1

    .line 586
    if-lt v1, v4, :cond_9

    if-gt v1, v6, :cond_9

    .line 587
    shl-int v1, v4, v1

    or-int/2addr v0, v1

    goto :goto_7

    :cond_b
    move v3, v4

    move v0, v1

    .line 594
    :goto_8
    if-gt v3, v6, :cond_10

    .line 596
    shl-int v1, v4, v3

    and-int/2addr v1, v0

    if-eqz v1, :cond_c

    move v1, v2

    .line 597
    :goto_9
    if-ge v1, v5, :cond_e

    .line 598
    aget v8, v7, v1

    if-ne v8, v3, :cond_d

    .line 594
    :cond_c
    :goto_a
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_8

    .line 597
    :cond_d
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 602
    :cond_e
    shl-int v1, v4, v3

    xor-int/lit8 v1, v1, -0x1

    and-int/2addr v0, v1

    goto :goto_a

    :cond_f
    move v0, v1

    .line 609
    :cond_10
    return v0
.end method


# virtual methods
.method get(Landroid/text/format/Time;I)Z
    .locals 5

    .prologue
    const/4 v3, 0x1

    .line 432
    iget v2, p1, Landroid/text/format/Time;->year:I

    .line 433
    iget v1, p1, Landroid/text/format/Time;->month:I

    .line 435
    const/4 v0, 0x0

    .line 443
    if-lt p2, v3, :cond_0

    const/16 v4, 0x1c

    if-le p2, v4, :cond_1

    .line 445
    :cond_0
    iget-object v0, p0, Lcom/android/calendarcommon2/RecurrenceProcessor$DaySet;->mTime:Landroid/text/format/Time;

    .line 446
    invoke-virtual {v0, p2, v1, v2}, Landroid/text/format/Time;->set(III)V

    .line 447
    invoke-static {v0}, Lcom/android/calendarcommon2/RecurrenceProcessor;->unsafeNormalize(Landroid/text/format/Time;)V

    .line 448
    iget v2, v0, Landroid/text/format/Time;->year:I

    .line 449
    iget v1, v0, Landroid/text/format/Time;->month:I

    .line 450
    iget p2, v0, Landroid/text/format/Time;->monthDay:I

    .line 463
    :cond_1
    iget v4, p0, Lcom/android/calendarcommon2/RecurrenceProcessor$DaySet;->mYear:I

    if-ne v2, v4, :cond_2

    iget v4, p0, Lcom/android/calendarcommon2/RecurrenceProcessor$DaySet;->mMonth:I

    if-eq v1, v4, :cond_4

    .line 464
    :cond_2
    if-nez v0, :cond_3

    .line 465
    iget-object v0, p0, Lcom/android/calendarcommon2/RecurrenceProcessor$DaySet;->mTime:Landroid/text/format/Time;

    .line 466
    invoke-virtual {v0, p2, v1, v2}, Landroid/text/format/Time;->set(III)V

    .line 467
    invoke-static {v0}, Lcom/android/calendarcommon2/RecurrenceProcessor;->unsafeNormalize(Landroid/text/format/Time;)V

    .line 475
    :cond_3
    iput v2, p0, Lcom/android/calendarcommon2/RecurrenceProcessor$DaySet;->mYear:I

    .line 476
    iput v1, p0, Lcom/android/calendarcommon2/RecurrenceProcessor$DaySet;->mMonth:I

    .line 477
    iget-object v1, p0, Lcom/android/calendarcommon2/RecurrenceProcessor$DaySet;->mR:Lcom/android/calendarcommon2/EventRecurrence;

    invoke-static {v0, v1}, Lcom/android/calendarcommon2/RecurrenceProcessor$DaySet;->generateDaysList(Landroid/text/format/Time;Lcom/android/calendarcommon2/EventRecurrence;)I

    move-result v0

    iput v0, p0, Lcom/android/calendarcommon2/RecurrenceProcessor$DaySet;->mDays:I

    .line 482
    :cond_4
    iget v0, p0, Lcom/android/calendarcommon2/RecurrenceProcessor$DaySet;->mDays:I

    shl-int v1, v3, p2

    and-int/2addr v0, v1

    if-eqz v0, :cond_5

    move v0, v3

    :goto_0
    return v0

    :cond_5
    const/4 v0, 0x0

    goto :goto_0
.end method

.method setRecurrence(Lcom/android/calendarcommon2/EventRecurrence;)V
    .locals 1

    .prologue
    .line 425
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/calendarcommon2/RecurrenceProcessor$DaySet;->mYear:I

    .line 426
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/calendarcommon2/RecurrenceProcessor$DaySet;->mMonth:I

    .line 427
    iput-object p1, p0, Lcom/android/calendarcommon2/RecurrenceProcessor$DaySet;->mR:Lcom/android/calendarcommon2/EventRecurrence;

    .line 428
    return-void
.end method
