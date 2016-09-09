.class Lcom/android/calendar/timely/TimelineHoliday$HolidayFilter;
.super Ljava/lang/Object;
.source "TimelineHoliday.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/timely/TimelineHoliday;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "HolidayFilter"
.end annotation


# instance fields
.field final mHolidays:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/calendar/timely/TimelineHoliday;",
            ">;>;"
        }
    .end annotation
.end field

.field final prime:I


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    const/16 v0, 0x1f

    iput v0, p0, Lcom/android/calendar/timely/TimelineHoliday$HolidayFilter;->prime:I

    .line 49
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/calendar/timely/TimelineHoliday$HolidayFilter;->mHolidays:Landroid/util/SparseArray;

    return-void
.end method

.method private getHashCode(Lcom/android/calendar/timely/TimelineEvent;)I
    .locals 2

    .prologue
    .line 108
    invoke-direct {p0, p1}, Lcom/android/calendar/timely/TimelineHoliday$HolidayFilter;->getShortHashCode(Lcom/android/calendar/timely/TimelineEvent;)I

    move-result v0

    .line 109
    mul-int/lit8 v1, v0, 0x1f

    invoke-virtual {p1}, Lcom/android/calendar/timely/TimelineEvent;->getOwnerAccount()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 110
    const/4 v0, 0x0

    :goto_0
    add-int/2addr v0, v1

    .line 111
    return v0

    .line 110
    :cond_0
    invoke-virtual {p1}, Lcom/android/calendar/timely/TimelineEvent;->getOwnerAccount()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0
.end method

.method private getShortHashCode(Lcom/android/calendar/timely/TimelineEvent;)I
    .locals 2

    .prologue
    .line 118
    iget v0, p1, Lcom/android/calendar/timely/TimelineEvent;->endDay:I

    iget v1, p1, Lcom/android/calendar/timely/TimelineEvent;->endDay:I

    ushr-int/lit8 v1, v1, 0x10

    xor-int/2addr v0, v1

    .line 119
    mul-int/lit8 v1, v0, 0x1f

    invoke-virtual {p1}, Lcom/android/calendar/timely/TimelineEvent;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 120
    const/4 v0, 0x0

    :goto_0
    add-int/2addr v0, v1

    .line 121
    return v0

    .line 120
    :cond_0
    invoke-virtual {p1}, Lcom/android/calendar/timely/TimelineEvent;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0
.end method


# virtual methods
.method public deDuplicate(Lcom/android/calendar/timely/TimelineEvent;)Lcom/android/calendar/timely/TimelineHoliday;
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 64
    invoke-direct {p0, p1}, Lcom/android/calendar/timely/TimelineHoliday$HolidayFilter;->getHashCode(Lcom/android/calendar/timely/TimelineEvent;)I

    move-result v3

    .line 65
    invoke-direct {p0, p1}, Lcom/android/calendar/timely/TimelineHoliday$HolidayFilter;->getShortHashCode(Lcom/android/calendar/timely/TimelineEvent;)I

    move-result v4

    .line 67
    iget-object v0, p0, Lcom/android/calendar/timely/TimelineHoliday$HolidayFilter;->mHolidays:Landroid/util/SparseArray;

    invoke-virtual {p1}, Lcom/android/calendar/timely/TimelineEvent;->getStartDay()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/SparseArray;

    .line 68
    if-nez v0, :cond_1

    .line 69
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 70
    iget-object v1, p0, Lcom/android/calendar/timely/TimelineHoliday$HolidayFilter;->mHolidays:Landroid/util/SparseArray;

    invoke-virtual {p1}, Lcom/android/calendar/timely/TimelineEvent;->getStartDay()I

    move-result v2

    invoke-virtual {v1, v2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 90
    :cond_0
    new-instance v1, Lcom/android/calendar/timely/TimelineHoliday;

    invoke-direct {v1, p1}, Lcom/android/calendar/timely/TimelineHoliday;-><init>(Lcom/android/calendar/timely/TimelineEvent;)V

    .line 91
    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 92
    invoke-virtual {v0, v4, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    move-object v0, v1

    .line 94
    :goto_0
    return-object v0

    .line 71
    :cond_1
    invoke-virtual {v0, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_2

    move-object v0, v2

    .line 75
    goto :goto_0

    .line 76
    :cond_2
    invoke-virtual {v0, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 79
    invoke-virtual {v0, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/calendar/timely/TimelineHoliday;

    .line 80
    invoke-virtual {v1, p1}, Lcom/android/calendar/timely/TimelineHoliday;->addIdenticalHoliday(Lcom/android/calendar/timely/TimelineEvent;)V

    .line 84
    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    move-object v0, v2

    .line 86
    goto :goto_0
.end method
