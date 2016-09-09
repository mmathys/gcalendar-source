.class public Lcom/android/timezonepicker/TimeZoneInfo;
.super Ljava/lang/Object;
.source "TimeZoneInfo.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/android/timezonepicker/TimeZoneInfo;",
        ">;"
    }
.end annotation


# static fields
.field public static NUM_OF_TRANSITIONS:I

.field private static final TAG:Ljava/lang/String;

.field public static is24HourFormat:Z

.field private static mFormatter:Ljava/util/Formatter;

.field private static mGmtDisplayNameCache:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field

.field private static mGmtDisplayNameUpdateTime:J

.field private static mSB:Ljava/lang/StringBuilder;

.field private static final mSpannableFactory:Landroid/text/Spannable$Factory;

.field public static time:J


# instance fields
.field public mCountry:Ljava/lang/String;

.field public mDisplayName:Ljava/lang/String;

.field mLocalTimeCache:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mLocalTimeCacheReferenceTime:J

.field mRawoffset:I

.field mTz:Ljava/util/TimeZone;

.field public mTzId:Ljava/lang/String;

.field private recycledTime:Landroid/text/format/Time;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 40
    const/4 v0, 0x0

    sput-object v0, Lcom/android/timezonepicker/TimeZoneInfo;->TAG:Ljava/lang/String;

    .line 41
    const/4 v0, 0x6

    sput v0, Lcom/android/timezonepicker/TimeZoneInfo;->NUM_OF_TRANSITIONS:I

    .line 42
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    sput-wide v0, Lcom/android/timezonepicker/TimeZoneInfo;->time:J

    .line 44
    invoke-static {}, Landroid/text/Spannable$Factory;->getInstance()Landroid/text/Spannable$Factory;

    move-result-object v0

    sput-object v0, Lcom/android/timezonepicker/TimeZoneInfo;->mSpannableFactory:Landroid/text/Spannable$Factory;

    .line 53
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x32

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    sput-object v0, Lcom/android/timezonepicker/TimeZoneInfo;->mSB:Ljava/lang/StringBuilder;

    .line 54
    new-instance v0, Ljava/util/Formatter;

    sget-object v1, Lcom/android/timezonepicker/TimeZoneInfo;->mSB:Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;Ljava/util/Locale;)V

    sput-object v0, Lcom/android/timezonepicker/TimeZoneInfo;->mFormatter:Ljava/util/Formatter;

    .line 66
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/android/timezonepicker/TimeZoneInfo;->mGmtDisplayNameCache:Landroid/util/SparseArray;

    return-void
.end method

.method public constructor <init>(Ljava/util/TimeZone;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    new-instance v0, Landroid/text/format/Time;

    invoke-direct {v0}, Landroid/text/format/Time;-><init>()V

    iput-object v0, p0, Lcom/android/timezonepicker/TimeZoneInfo;->recycledTime:Landroid/text/format/Time;

    .line 63
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/timezonepicker/TimeZoneInfo;->mLocalTimeCache:Landroid/util/SparseArray;

    .line 64
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/timezonepicker/TimeZoneInfo;->mLocalTimeCacheReferenceTime:J

    .line 57
    iput-object p1, p0, Lcom/android/timezonepicker/TimeZoneInfo;->mTz:Ljava/util/TimeZone;

    .line 58
    invoke-virtual {p1}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/timezonepicker/TimeZoneInfo;->mTzId:Ljava/lang/String;

    .line 59
    iput-object p2, p0, Lcom/android/timezonepicker/TimeZoneInfo;->mCountry:Ljava/lang/String;

    .line 60
    invoke-virtual {p1}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v0

    iput v0, p0, Lcom/android/timezonepicker/TimeZoneInfo;->mRawoffset:I

    .line 61
    return-void
.end method


# virtual methods
.method public compareTo(Lcom/android/timezonepicker/TimeZoneInfo;)I
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v0, -0x1

    .line 248
    invoke-virtual {p0}, Lcom/android/timezonepicker/TimeZoneInfo;->getNowOffsetMillis()I

    move-result v2

    invoke-virtual {p1}, Lcom/android/timezonepicker/TimeZoneInfo;->getNowOffsetMillis()I

    move-result v3

    if-eq v2, v3, :cond_2

    .line 249
    invoke-virtual {p1}, Lcom/android/timezonepicker/TimeZoneInfo;->getNowOffsetMillis()I

    move-result v2

    invoke-virtual {p0}, Lcom/android/timezonepicker/TimeZoneInfo;->getNowOffsetMillis()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 274
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 249
    goto :goto_0

    .line 256
    :cond_2
    iget-object v2, p0, Lcom/android/timezonepicker/TimeZoneInfo;->mCountry:Ljava/lang/String;

    if-nez v2, :cond_3

    iget-object v2, p1, Lcom/android/timezonepicker/TimeZoneInfo;->mCountry:Ljava/lang/String;

    if-eqz v2, :cond_3

    move v0, v1

    .line 257
    goto :goto_0

    .line 259
    :cond_3
    iget-object v1, p0, Lcom/android/timezonepicker/TimeZoneInfo;->mCountry:Ljava/lang/String;

    if-eqz v1, :cond_4

    iget-object v1, p1, Lcom/android/timezonepicker/TimeZoneInfo;->mCountry:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 262
    :cond_4
    iget-object v0, p0, Lcom/android/timezonepicker/TimeZoneInfo;->mCountry:Ljava/lang/String;

    if-eqz v0, :cond_5

    iget-object v0, p1, Lcom/android/timezonepicker/TimeZoneInfo;->mCountry:Ljava/lang/String;

    if-eqz v0, :cond_5

    .line 263
    iget-object v0, p0, Lcom/android/timezonepicker/TimeZoneInfo;->mCountry:Ljava/lang/String;

    iget-object v1, p1, Lcom/android/timezonepicker/TimeZoneInfo;->mCountry:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    .line 264
    if-nez v0, :cond_0

    .line 270
    :cond_5
    iget-object v0, p0, Lcom/android/timezonepicker/TimeZoneInfo;->mDisplayName:Ljava/lang/String;

    if-eqz v0, :cond_6

    iget-object v0, p1, Lcom/android/timezonepicker/TimeZoneInfo;->mDisplayName:Ljava/lang/String;

    if-eqz v0, :cond_6

    .line 271
    iget-object v0, p0, Lcom/android/timezonepicker/TimeZoneInfo;->mDisplayName:Ljava/lang/String;

    iget-object v1, p1, Lcom/android/timezonepicker/TimeZoneInfo;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    .line 274
    :cond_6
    iget-object v0, p0, Lcom/android/timezonepicker/TimeZoneInfo;->mTz:Ljava/util/TimeZone;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/TimeZone;->getDisplayName(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p1, Lcom/android/timezonepicker/TimeZoneInfo;->mTz:Ljava/util/TimeZone;

    .line 275
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/TimeZone;->getDisplayName(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    .line 274
    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 36
    check-cast p1, Lcom/android/timezonepicker/TimeZoneInfo;

    invoke-virtual {p0, p1}, Lcom/android/timezonepicker/TimeZoneInfo;->compareTo(Lcom/android/timezonepicker/TimeZoneInfo;)I

    move-result v0

    return v0
.end method

.method public declared-synchronized getGmtDisplayName(Landroid/content/Context;)Ljava/lang/CharSequence;
    .locals 14

    .prologue
    const-wide/32 v12, 0x7b98a00

    const-wide/32 v6, 0xea60

    const/4 v8, 0x0

    .line 130
    monitor-enter p0

    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/32 v2, 0xea60

    div-long v4, v0, v2

    .line 131
    mul-long v2, v4, v6

    .line 132
    iget-object v0, p0, Lcom/android/timezonepicker/TimeZoneInfo;->mTz:Ljava/util/TimeZone;

    invoke-virtual {v0, v2, v3}, Ljava/util/TimeZone;->getOffset(J)I

    move-result v10

    .line 135
    iget-object v0, p0, Lcom/android/timezonepicker/TimeZoneInfo;->mTz:Ljava/util/TimeZone;

    invoke-virtual {v0}, Ljava/util/TimeZone;->useDaylightTime()Z

    move-result v11

    .line 136
    if-eqz v11, :cond_3

    .line 137
    int-to-long v0, v10

    add-long/2addr v0, v12

    long-to-int v0, v0

    move v9, v0

    .line 142
    :goto_0
    const/4 v0, 0x0

    .line 143
    sget-wide v6, Lcom/android/timezonepicker/TimeZoneInfo;->mGmtDisplayNameUpdateTime:J

    cmp-long v1, v6, v4

    if-eqz v1, :cond_4

    .line 144
    sput-wide v4, Lcom/android/timezonepicker/TimeZoneInfo;->mGmtDisplayNameUpdateTime:J

    .line 145
    sget-object v1, Lcom/android/timezonepicker/TimeZoneInfo;->mGmtDisplayNameCache:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->clear()V

    .line 150
    :goto_1
    if-nez v0, :cond_2

    .line 151
    sget-object v0, Lcom/android/timezonepicker/TimeZoneInfo;->mSB:Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 153
    const v6, 0x80001

    .line 154
    sget-boolean v0, Lcom/android/timezonepicker/TimeZoneInfo;->is24HourFormat:Z

    if-eqz v0, :cond_0

    .line 155
    const v6, 0x80081

    .line 159
    :cond_0
    sget-object v1, Lcom/android/timezonepicker/TimeZoneInfo;->mFormatter:Ljava/util/Formatter;

    iget-object v7, p0, Lcom/android/timezonepicker/TimeZoneInfo;->mTzId:Ljava/lang/String;

    move-object v0, p1

    move-wide v4, v2

    invoke-static/range {v0 .. v7}, Landroid/text/format/DateUtils;->formatDateRange(Landroid/content/Context;Ljava/util/Formatter;JJILjava/lang/String;)Ljava/util/Formatter;

    .line 160
    sget-object v0, Lcom/android/timezonepicker/TimeZoneInfo;->mSB:Ljava/lang/StringBuilder;

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 161
    sget-object v0, Lcom/android/timezonepicker/TimeZoneInfo;->mSB:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    .line 162
    sget-object v0, Lcom/android/timezonepicker/TimeZoneInfo;->mSB:Ljava/lang/StringBuilder;

    invoke-static {v0, v10}, Lcom/android/timezonepicker/TimeZonePickerUtils;->appendGmtOffset(Ljava/lang/StringBuilder;I)V

    .line 163
    sget-object v0, Lcom/android/timezonepicker/TimeZoneInfo;->mSB:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    .line 167
    if-eqz v11, :cond_5

    .line 168
    sget-object v0, Lcom/android/timezonepicker/TimeZoneInfo;->mSB:Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 169
    sget-object v0, Lcom/android/timezonepicker/TimeZoneInfo;->mSB:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v8

    .line 170
    sget-object v0, Lcom/android/timezonepicker/TimeZoneInfo;->mSB:Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/timezonepicker/TimeZonePickerUtils;->getDstSymbol()C

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 171
    sget-object v0, Lcom/android/timezonepicker/TimeZoneInfo;->mSB:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    move v1, v0

    .line 175
    :goto_2
    sget-object v0, Lcom/android/timezonepicker/TimeZoneInfo;->mSpannableFactory:Landroid/text/Spannable$Factory;

    sget-object v4, Lcom/android/timezonepicker/TimeZoneInfo;->mSB:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Landroid/text/Spannable$Factory;->newSpannable(Ljava/lang/CharSequence;)Landroid/text/Spannable;

    move-result-object v0

    .line 176
    new-instance v4, Landroid/text/style/ForegroundColorSpan;

    const v5, -0x777778

    invoke-direct {v4, v5}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    const/16 v5, 0x21

    invoke-interface {v0, v4, v2, v3, v5}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 179
    if-eqz v11, :cond_1

    .line 180
    new-instance v2, Landroid/text/style/ForegroundColorSpan;

    const v3, -0x404041

    invoke-direct {v2, v3}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    const/16 v3, 0x21

    invoke-interface {v0, v2, v8, v1, v3}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 184
    :cond_1
    sget-object v1, Lcom/android/timezonepicker/TimeZoneInfo;->mGmtDisplayNameCache:Landroid/util/SparseArray;

    invoke-virtual {v1, v9, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 186
    :cond_2
    monitor-exit p0

    return-object v0

    .line 139
    :cond_3
    int-to-long v0, v10

    sub-long/2addr v0, v12

    long-to-int v0, v0

    move v9, v0

    goto/16 :goto_0

    .line 147
    :cond_4
    :try_start_1
    sget-object v0, Lcom/android/timezonepicker/TimeZoneInfo;->mGmtDisplayNameCache:Landroid/util/SparseArray;

    invoke-virtual {v0, v9}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_1

    .line 130
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_5
    move v1, v8

    goto :goto_2
.end method

.method public getLocalTime(J)Ljava/lang/String;
    .locals 7

    .prologue
    .line 70
    iget-object v0, p0, Lcom/android/timezonepicker/TimeZoneInfo;->recycledTime:Landroid/text/format/Time;

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    .line 71
    iget-object v0, p0, Lcom/android/timezonepicker/TimeZoneInfo;->recycledTime:Landroid/text/format/Time;

    invoke-virtual {v0, p1, p2}, Landroid/text/format/Time;->set(J)V

    .line 73
    iget-object v0, p0, Lcom/android/timezonepicker/TimeZoneInfo;->recycledTime:Landroid/text/format/Time;

    iget v0, v0, Landroid/text/format/Time;->year:I

    mul-int/lit16 v0, v0, 0x16e

    iget-object v1, p0, Lcom/android/timezonepicker/TimeZoneInfo;->recycledTime:Landroid/text/format/Time;

    iget v1, v1, Landroid/text/format/Time;->yearDay:I

    add-int/2addr v1, v0

    .line 75
    iget-object v0, p0, Lcom/android/timezonepicker/TimeZoneInfo;->recycledTime:Landroid/text/format/Time;

    iget-object v2, p0, Lcom/android/timezonepicker/TimeZoneInfo;->mTzId:Ljava/lang/String;

    iput-object v2, v0, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    .line 76
    iget-object v0, p0, Lcom/android/timezonepicker/TimeZoneInfo;->recycledTime:Landroid/text/format/Time;

    invoke-virtual {v0, p1, p2}, Landroid/text/format/Time;->set(J)V

    .line 78
    const/4 v0, 0x0

    .line 80
    iget-object v2, p0, Lcom/android/timezonepicker/TimeZoneInfo;->recycledTime:Landroid/text/format/Time;

    iget v2, v2, Landroid/text/format/Time;->hour:I

    mul-int/lit8 v2, v2, 0x3c

    iget-object v3, p0, Lcom/android/timezonepicker/TimeZoneInfo;->recycledTime:Landroid/text/format/Time;

    iget v3, v3, Landroid/text/format/Time;->minute:I

    add-int/2addr v2, v3

    .line 83
    iget-wide v4, p0, Lcom/android/timezonepicker/TimeZoneInfo;->mLocalTimeCacheReferenceTime:J

    cmp-long v3, v4, p1

    if-eqz v3, :cond_2

    .line 84
    iput-wide p1, p0, Lcom/android/timezonepicker/TimeZoneInfo;->mLocalTimeCacheReferenceTime:J

    .line 85
    iget-object v3, p0, Lcom/android/timezonepicker/TimeZoneInfo;->mLocalTimeCache:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->clear()V

    .line 90
    :goto_0
    if-nez v0, :cond_1

    .line 91
    const-string v0, "%I:%M %p"

    .line 92
    iget-object v3, p0, Lcom/android/timezonepicker/TimeZoneInfo;->recycledTime:Landroid/text/format/Time;

    iget v3, v3, Landroid/text/format/Time;->year:I

    mul-int/lit16 v3, v3, 0x16e

    iget-object v4, p0, Lcom/android/timezonepicker/TimeZoneInfo;->recycledTime:Landroid/text/format/Time;

    iget v4, v4, Landroid/text/format/Time;->yearDay:I

    add-int/2addr v3, v4

    if-eq v1, v3, :cond_4

    .line 93
    sget-boolean v0, Lcom/android/timezonepicker/TimeZoneInfo;->is24HourFormat:Z

    if-eqz v0, :cond_3

    .line 94
    const-string v0, "%b %d %H:%M"

    .line 103
    :cond_0
    :goto_1
    iget-object v1, p0, Lcom/android/timezonepicker/TimeZoneInfo;->recycledTime:Landroid/text/format/Time;

    invoke-virtual {v1, v0}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 104
    iget-object v1, p0, Lcom/android/timezonepicker/TimeZoneInfo;->mLocalTimeCache:Landroid/util/SparseArray;

    invoke-virtual {v1, v2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 107
    :cond_1
    return-object v0

    .line 87
    :cond_2
    iget-object v0, p0, Lcom/android/timezonepicker/TimeZoneInfo;->mLocalTimeCache:Landroid/util/SparseArray;

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0

    .line 96
    :cond_3
    const-string v0, "%b %d %I:%M %p"

    goto :goto_1

    .line 98
    :cond_4
    sget-boolean v1, Lcom/android/timezonepicker/TimeZoneInfo;->is24HourFormat:Z

    if-eqz v1, :cond_0

    .line 99
    const-string v0, "%H:%M"

    goto :goto_1
.end method

.method public getNowOffsetMillis()I
    .locals 4

    .prologue
    .line 117
    iget-object v0, p0, Lcom/android/timezonepicker/TimeZoneInfo;->mTz:Ljava/util/TimeZone;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/util/TimeZone;->getOffset(J)I

    move-result v0

    return v0
.end method

.method public hasSameRules(Lcom/android/timezonepicker/TimeZoneInfo;)Z
    .locals 2

    .prologue
    .line 190
    iget-object v0, p0, Lcom/android/timezonepicker/TimeZoneInfo;->mTz:Ljava/util/TimeZone;

    iget-object v1, p1, Lcom/android/timezonepicker/TimeZoneInfo;->mTz:Ljava/util/TimeZone;

    invoke-virtual {v0, v1}, Ljava/util/TimeZone;->hasSameRules(Ljava/util/TimeZone;)Z

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 8

    .prologue
    const v7, 0x4a5bba00    # 3600000.0f

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/16 v4, 0x2c

    .line 195
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 197
    iget-object v1, p0, Lcom/android/timezonepicker/TimeZoneInfo;->mCountry:Ljava/lang/String;

    .line 198
    iget-object v2, p0, Lcom/android/timezonepicker/TimeZoneInfo;->mTz:Ljava/util/TimeZone;

    .line 200
    iget-object v3, p0, Lcom/android/timezonepicker/TimeZoneInfo;->mTzId:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 201
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 202
    invoke-virtual {v2, v5, v6}, Ljava/util/TimeZone;->getDisplayName(ZI)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 203
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 204
    invoke-virtual {v2, v5, v5}, Ljava/util/TimeZone;->getDisplayName(ZI)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 205
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 206
    invoke-virtual {v2}, Ljava/util/TimeZone;->useDaylightTime()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 207
    invoke-virtual {v2, v6, v6}, Ljava/util/TimeZone;->getDisplayName(ZI)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 208
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 209
    invoke-virtual {v2, v6, v5}, Ljava/util/TimeZone;->getDisplayName(ZI)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 213
    :goto_0
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 214
    invoke-virtual {v2}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v7

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 215
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 216
    invoke-virtual {v2}, Ljava/util/TimeZone;->getDSTSavings()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v7

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 217
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 218
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 219
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 222
    const-wide v2, 0x13bf5fb8600L

    invoke-virtual {p0, v2, v3}, Lcom/android/timezonepicker/TimeZoneInfo;->getLocalTime(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 223
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 226
    const-wide v2, 0x13d6debc200L

    invoke-virtual {p0, v2, v3}, Lcom/android/timezonepicker/TimeZoneInfo;->getLocalTime(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 227
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 230
    const-wide v2, 0x13f9a1a9200L

    invoke-virtual {p0, v2, v3}, Lcom/android/timezonepicker/TimeZoneInfo;->getLocalTime(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 231
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 234
    const-wide v2, 0x1421388c600L

    invoke-virtual {p0, v2, v3}, Lcom/android/timezonepicker/TimeZoneInfo;->getLocalTime(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 235
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 237
    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 238
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 211
    :cond_0
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0
.end method
