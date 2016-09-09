.class public Lcom/google/android/calendar/task/ArpTaskDataManager$TaskMonthData;
.super Ljava/lang/Object;
.source "ArpTaskDataManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/calendar/task/ArpTaskDataManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TaskMonthData"
.end annotation


# instance fields
.field private final mNumDays:I

.field private final mStartJulianDay:I


# direct methods
.method public constructor <init>(I)V
    .locals 4

    .prologue
    const/4 v3, 0x5

    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 109
    new-instance v0, Lcom/android/calendar/time/Time;

    invoke-direct {v0}, Lcom/android/calendar/time/Time;-><init>()V

    .line 110
    invoke-virtual {v0, p1}, Lcom/android/calendar/time/Time;->setJulianDay(I)J

    .line 111
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/calendar/time/Time;->toMillis(Z)J

    move-result-wide v0

    .line 112
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    .line 113
    invoke-virtual {v2, v0, v1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 115
    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v0

    .line 116
    add-int/lit8 v0, v0, -0x1

    sub-int v0, p1, v0

    iput v0, p0, Lcom/google/android/calendar/task/ArpTaskDataManager$TaskMonthData;->mStartJulianDay:I

    .line 117
    invoke-virtual {v2, v3}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result v0

    iput v0, p0, Lcom/google/android/calendar/task/ArpTaskDataManager$TaskMonthData;->mNumDays:I

    .line 118
    return-void
.end method

.method public constructor <init>(II)V
    .locals 1

    .prologue
    .line 120
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 121
    iput p1, p0, Lcom/google/android/calendar/task/ArpTaskDataManager$TaskMonthData;->mStartJulianDay:I

    .line 122
    sub-int v0, p2, p1

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/calendar/task/ArpTaskDataManager$TaskMonthData;->mNumDays:I

    .line 123
    return-void
.end method


# virtual methods
.method public getEndJulianDay()I
    .locals 2

    .prologue
    .line 130
    invoke-virtual {p0}, Lcom/google/android/calendar/task/ArpTaskDataManager$TaskMonthData;->getStartJulianDay()I

    move-result v0

    iget v1, p0, Lcom/google/android/calendar/task/ArpTaskDataManager$TaskMonthData;->mNumDays:I

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method public getStartJulianDay()I
    .locals 1

    .prologue
    .line 126
    iget v0, p0, Lcom/google/android/calendar/task/ArpTaskDataManager$TaskMonthData;->mStartJulianDay:I

    return v0
.end method
