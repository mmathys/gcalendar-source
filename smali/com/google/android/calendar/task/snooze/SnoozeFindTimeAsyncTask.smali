.class public Lcom/google/android/calendar/task/snooze/SnoozeFindTimeAsyncTask;
.super Landroid/os/AsyncTask;
.source "SnoozeFindTimeAsyncTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/calendar/task/snooze/SnoozeFindTimeAsyncTask$Listener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mAccountName:Ljava/lang/String;

.field private final mContext:Landroid/content/Context;

.field private final mDurationMillis:I

.field private final mIsWarmup:Z

.field private final mListener:Lcom/google/android/calendar/task/snooze/SnoozeFindTimeAsyncTask$Listener;

.field private final mNowDateTime:Lcom/google/calendar/v2/client/service/api/time/DateTime;

.field private final mSnoozeOption:I

.field private final mStartDateTime:Lcom/google/calendar/v2/client/service/api/time/DateTime;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    const-class v0, Lcom/google/android/calendar/task/snooze/SnoozeFindTimeAsyncTask;

    invoke-static {v0}, Lcom/android/calendarcommon2/LogUtils;->getLogTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/calendar/task/snooze/SnoozeFindTimeAsyncTask;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;IJILcom/google/calendar/v2/client/service/api/time/DateTime;Lcom/google/android/calendar/task/snooze/SnoozeFindTimeAsyncTask$Listener;)V
    .locals 2

    .prologue
    .line 82
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 83
    iput-object p1, p0, Lcom/google/android/calendar/task/snooze/SnoozeFindTimeAsyncTask;->mContext:Landroid/content/Context;

    .line 84
    iput-object p2, p0, Lcom/google/android/calendar/task/snooze/SnoozeFindTimeAsyncTask;->mAccountName:Ljava/lang/String;

    .line 85
    iput p3, p0, Lcom/google/android/calendar/task/snooze/SnoozeFindTimeAsyncTask;->mSnoozeOption:I

    .line 86
    iput p6, p0, Lcom/google/android/calendar/task/snooze/SnoozeFindTimeAsyncTask;->mDurationMillis:I

    .line 87
    iput-object p7, p0, Lcom/google/android/calendar/task/snooze/SnoozeFindTimeAsyncTask;->mNowDateTime:Lcom/google/calendar/v2/client/service/api/time/DateTime;

    .line 88
    iput-object p8, p0, Lcom/google/android/calendar/task/snooze/SnoozeFindTimeAsyncTask;->mListener:Lcom/google/android/calendar/task/snooze/SnoozeFindTimeAsyncTask$Listener;

    .line 89
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/calendar/task/snooze/SnoozeFindTimeAsyncTask;->mIsWarmup:Z

    .line 90
    new-instance v0, Lcom/android/calendar/time/DateTimeImpl;

    iget-object v1, p0, Lcom/google/android/calendar/task/snooze/SnoozeFindTimeAsyncTask;->mNowDateTime:Lcom/google/calendar/v2/client/service/api/time/DateTime;

    invoke-interface {v1}, Lcom/google/calendar/v2/client/service/api/time/DateTime;->getTimeZone()Lcom/google/calendar/v2/client/service/api/time/TimeZone;

    move-result-object v1

    invoke-direct {v0, p4, p5, v1}, Lcom/android/calendar/time/DateTimeImpl;-><init>(JLcom/google/calendar/v2/client/service/api/time/TimeZone;)V

    iput-object v0, p0, Lcom/google/android/calendar/task/snooze/SnoozeFindTimeAsyncTask;->mStartDateTime:Lcom/google/calendar/v2/client/service/api/time/DateTime;

    .line 91
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/google/calendar/v2/client/service/api/time/DateTime;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 101
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 102
    iput-object p1, p0, Lcom/google/android/calendar/task/snooze/SnoozeFindTimeAsyncTask;->mContext:Landroid/content/Context;

    .line 103
    iput-object p2, p0, Lcom/google/android/calendar/task/snooze/SnoozeFindTimeAsyncTask;->mAccountName:Ljava/lang/String;

    .line 104
    iput-object p3, p0, Lcom/google/android/calendar/task/snooze/SnoozeFindTimeAsyncTask;->mNowDateTime:Lcom/google/calendar/v2/client/service/api/time/DateTime;

    .line 105
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/calendar/task/snooze/SnoozeFindTimeAsyncTask;->mIsWarmup:Z

    .line 108
    iput v1, p0, Lcom/google/android/calendar/task/snooze/SnoozeFindTimeAsyncTask;->mSnoozeOption:I

    .line 109
    iput-object v2, p0, Lcom/google/android/calendar/task/snooze/SnoozeFindTimeAsyncTask;->mListener:Lcom/google/android/calendar/task/snooze/SnoozeFindTimeAsyncTask$Listener;

    .line 110
    iput v1, p0, Lcom/google/android/calendar/task/snooze/SnoozeFindTimeAsyncTask;->mDurationMillis:I

    .line 111
    iput-object v2, p0, Lcom/google/android/calendar/task/snooze/SnoozeFindTimeAsyncTask;->mStartDateTime:Lcom/google/calendar/v2/client/service/api/time/DateTime;

    .line 112
    return-void
.end method

.method private getAfterReminderDateTimeConstraint()Lcom/google/personalization/assist/annotate/scheduler/nano/DateTimeConstraint;
    .locals 3

    .prologue
    .line 363
    new-instance v0, Lcom/google/personalization/assist/annotate/scheduler/nano/DateTimeConstraint;

    invoke-direct {v0}, Lcom/google/personalization/assist/annotate/scheduler/nano/DateTimeConstraint;-><init>()V

    .line 364
    const/4 v1, 0x5

    iput v1, v0, Lcom/google/personalization/assist/annotate/scheduler/nano/DateTimeConstraint;->constraintType:I

    .line 365
    iget-object v1, p0, Lcom/google/android/calendar/task/snooze/SnoozeFindTimeAsyncTask;->mStartDateTime:Lcom/google/calendar/v2/client/service/api/time/DateTime;

    const/16 v2, 0x1e

    .line 366
    invoke-static {v2}, Lcom/google/calendar/v2/client/service/api/time/Period;->minutes(I)Lcom/google/calendar/v2/client/service/api/time/Period;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/google/calendar/v2/client/service/api/time/DateTime;->plusPeriod(Lcom/google/calendar/v2/client/service/api/time/Period;)Lcom/google/calendar/v2/client/service/api/time/DateTime;

    move-result-object v1

    .line 367
    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/google/android/calendar/task/snooze/SnoozeFindTimeAsyncTask;->getProtoDateTime(Lcom/google/calendar/v2/client/service/api/time/DateTime;Z)Lcom/google/caribou/tasks/nano/DateTime;

    move-result-object v1

    iput-object v1, v0, Lcom/google/personalization/assist/annotate/scheduler/nano/DateTimeConstraint;->datetime:Lcom/google/caribou/tasks/nano/DateTime;

    .line 368
    return-object v0
.end method

.method private getDateTimeConstraint()[Lcom/google/personalization/assist/annotate/scheduler/nano/DateTimeConstraint;
    .locals 7

    .prologue
    const/4 v6, 0x5

    const/4 v5, 0x3

    const/4 v0, 0x2

    const/4 v4, 0x0

    const/4 v1, 0x1

    .line 211
    iget v2, p0, Lcom/google/android/calendar/task/snooze/SnoozeFindTimeAsyncTask;->mSnoozeOption:I

    packed-switch v2, :pswitch_data_0

    .line 273
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Trying to get DateTimeConstraints for trivial case"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 214
    :pswitch_0
    invoke-virtual {p0}, Lcom/google/android/calendar/task/snooze/SnoozeFindTimeAsyncTask;->isReminderLaterToday()Z

    move-result v2

    .line 215
    if-eqz v2, :cond_1

    :goto_0
    new-array v0, v0, [Lcom/google/personalization/assist/annotate/scheduler/nano/DateTimeConstraint;

    .line 216
    invoke-direct {p0}, Lcom/google/android/calendar/task/snooze/SnoozeFindTimeAsyncTask;->getTodayDateTimeConstraint()Lcom/google/personalization/assist/annotate/scheduler/nano/DateTimeConstraint;

    move-result-object v3

    aput-object v3, v0, v4

    .line 217
    aget-object v3, v0, v4

    iput v5, v3, Lcom/google/personalization/assist/annotate/scheduler/nano/DateTimeConstraint;->constraintType:I

    .line 218
    if-eqz v2, :cond_0

    .line 219
    invoke-direct {p0}, Lcom/google/android/calendar/task/snooze/SnoozeFindTimeAsyncTask;->getAfterReminderDateTimeConstraint()Lcom/google/personalization/assist/annotate/scheduler/nano/DateTimeConstraint;

    move-result-object v2

    aput-object v2, v0, v1

    .line 276
    :cond_0
    :goto_1
    return-object v0

    :cond_1
    move v0, v1

    .line 215
    goto :goto_0

    .line 223
    :pswitch_1
    new-array v0, v1, [Lcom/google/personalization/assist/annotate/scheduler/nano/DateTimeConstraint;

    .line 224
    invoke-direct {p0}, Lcom/google/android/calendar/task/snooze/SnoozeFindTimeAsyncTask;->getTomorrowDateTimeConstraint()Lcom/google/personalization/assist/annotate/scheduler/nano/DateTimeConstraint;

    move-result-object v1

    aput-object v1, v0, v4

    .line 225
    aget-object v1, v0, v4

    iput v5, v1, Lcom/google/personalization/assist/annotate/scheduler/nano/DateTimeConstraint;->constraintType:I

    goto :goto_1

    .line 231
    :pswitch_2
    invoke-virtual {p0}, Lcom/google/android/calendar/task/snooze/SnoozeFindTimeAsyncTask;->isReminderLaterThisWeek()Z

    move-result v2

    .line 232
    if-eqz v2, :cond_2

    :goto_2
    new-array v0, v0, [Lcom/google/personalization/assist/annotate/scheduler/nano/DateTimeConstraint;

    .line 233
    invoke-direct {p0, v1}, Lcom/google/android/calendar/task/snooze/SnoozeFindTimeAsyncTask;->getNextDayOfWeekDateTimeConstraint(I)Lcom/google/personalization/assist/annotate/scheduler/nano/DateTimeConstraint;

    move-result-object v3

    aput-object v3, v0, v4

    .line 234
    aget-object v3, v0, v4

    iput v1, v3, Lcom/google/personalization/assist/annotate/scheduler/nano/DateTimeConstraint;->constraintType:I

    .line 235
    if-eqz v2, :cond_0

    .line 236
    invoke-direct {p0}, Lcom/google/android/calendar/task/snooze/SnoozeFindTimeAsyncTask;->getAfterReminderDateTimeConstraint()Lcom/google/personalization/assist/annotate/scheduler/nano/DateTimeConstraint;

    move-result-object v2

    aput-object v2, v0, v1

    goto :goto_1

    :cond_2
    move v0, v1

    .line 232
    goto :goto_2

    .line 242
    :pswitch_3
    iget-object v2, p0, Lcom/google/android/calendar/task/snooze/SnoozeFindTimeAsyncTask;->mNowDateTime:Lcom/google/calendar/v2/client/service/api/time/DateTime;

    invoke-interface {v2}, Lcom/google/calendar/v2/client/service/api/time/DateTime;->getDayOfWeek()I

    move-result v2

    const/4 v3, 0x6

    if-eq v2, v3, :cond_3

    iget-object v2, p0, Lcom/google/android/calendar/task/snooze/SnoozeFindTimeAsyncTask;->mNowDateTime:Lcom/google/calendar/v2/client/service/api/time/DateTime;

    .line 243
    invoke-interface {v2}, Lcom/google/calendar/v2/client/service/api/time/DateTime;->getDayOfWeek()I

    move-result v2

    const/4 v3, 0x7

    if-ne v2, v3, :cond_4

    .line 244
    :cond_3
    new-array v0, v1, [Lcom/google/personalization/assist/annotate/scheduler/nano/DateTimeConstraint;

    .line 245
    invoke-direct {p0, v1}, Lcom/google/android/calendar/task/snooze/SnoozeFindTimeAsyncTask;->getNextDayOfWeekDateTimeConstraint(I)Lcom/google/personalization/assist/annotate/scheduler/nano/DateTimeConstraint;

    move-result-object v2

    aput-object v2, v0, v4

    .line 246
    aget-object v2, v0, v4

    iput v1, v2, Lcom/google/personalization/assist/annotate/scheduler/nano/DateTimeConstraint;->constraintType:I

    goto :goto_1

    .line 248
    :cond_4
    new-array v0, v0, [Lcom/google/personalization/assist/annotate/scheduler/nano/DateTimeConstraint;

    .line 249
    const/4 v2, 0x6

    invoke-direct {p0, v2}, Lcom/google/android/calendar/task/snooze/SnoozeFindTimeAsyncTask;->getNextDayOfWeekDateTimeConstraint(I)Lcom/google/personalization/assist/annotate/scheduler/nano/DateTimeConstraint;

    move-result-object v2

    aput-object v2, v0, v4

    .line 250
    aget-object v2, v0, v4

    iput v6, v2, Lcom/google/personalization/assist/annotate/scheduler/nano/DateTimeConstraint;->constraintType:I

    .line 251
    invoke-direct {p0, v1}, Lcom/google/android/calendar/task/snooze/SnoozeFindTimeAsyncTask;->getNextDayOfWeekDateTimeConstraint(I)Lcom/google/personalization/assist/annotate/scheduler/nano/DateTimeConstraint;

    move-result-object v2

    aput-object v2, v0, v1

    .line 252
    aget-object v2, v0, v1

    iput v1, v2, Lcom/google/personalization/assist/annotate/scheduler/nano/DateTimeConstraint;->constraintType:I

    goto :goto_1

    .line 257
    :pswitch_4
    new-array v0, v0, [Lcom/google/personalization/assist/annotate/scheduler/nano/DateTimeConstraint;

    .line 258
    invoke-direct {p0, v1}, Lcom/google/android/calendar/task/snooze/SnoozeFindTimeAsyncTask;->getNextDayOfWeekDateTimeConstraint(I)Lcom/google/personalization/assist/annotate/scheduler/nano/DateTimeConstraint;

    move-result-object v2

    aput-object v2, v0, v4

    .line 259
    aget-object v2, v0, v4

    iput v6, v2, Lcom/google/personalization/assist/annotate/scheduler/nano/DateTimeConstraint;->constraintType:I

    .line 261
    iget-object v2, p0, Lcom/google/android/calendar/task/snooze/SnoozeFindTimeAsyncTask;->mNowDateTime:Lcom/google/calendar/v2/client/service/api/time/DateTime;

    .line 262
    invoke-static {v2, v1}, Lcom/android/calendar/time/DateTimeUtils;->roundUpToMidnightOfNextDayOfWeek(Lcom/google/calendar/v2/client/service/api/time/DateTime;I)Lcom/google/calendar/v2/client/service/api/time/DateTime;

    move-result-object v2

    .line 265
    invoke-static {v2, v1}, Lcom/android/calendar/time/DateTimeUtils;->roundUpToMidnightOfNextDayOfWeek(Lcom/google/calendar/v2/client/service/api/time/DateTime;I)Lcom/google/calendar/v2/client/service/api/time/DateTime;

    move-result-object v2

    .line 267
    new-instance v3, Lcom/google/personalization/assist/annotate/scheduler/nano/DateTimeConstraint;

    invoke-direct {v3}, Lcom/google/personalization/assist/annotate/scheduler/nano/DateTimeConstraint;-><init>()V

    aput-object v3, v0, v1

    .line 268
    aget-object v3, v0, v1

    invoke-direct {p0, v2, v1}, Lcom/google/android/calendar/task/snooze/SnoozeFindTimeAsyncTask;->getProtoDateTime(Lcom/google/calendar/v2/client/service/api/time/DateTime;Z)Lcom/google/caribou/tasks/nano/DateTime;

    move-result-object v2

    iput-object v2, v3, Lcom/google/personalization/assist/annotate/scheduler/nano/DateTimeConstraint;->datetime:Lcom/google/caribou/tasks/nano/DateTime;

    .line 269
    aget-object v2, v0, v1

    iput v1, v2, Lcom/google/personalization/assist/annotate/scheduler/nano/DateTimeConstraint;->constraintType:I

    goto/16 :goto_1

    .line 211
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private getFallbackSnoozeTime()J
    .locals 3

    .prologue
    const/4 v2, 0x7

    const/4 v1, 0x6

    .line 284
    iget v0, p0, Lcom/google/android/calendar/task/snooze/SnoozeFindTimeAsyncTask;->mSnoozeOption:I

    packed-switch v0, :pswitch_data_0

    .line 336
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Trying to get fallback snooze time for trivial case"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 288
    :pswitch_0
    invoke-virtual {p0}, Lcom/google/android/calendar/task/snooze/SnoozeFindTimeAsyncTask;->isReminderLaterToday()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/calendar/task/snooze/SnoozeFindTimeAsyncTask;->mStartDateTime:Lcom/google/calendar/v2/client/service/api/time/DateTime;

    .line 289
    :goto_0
    invoke-static {v0}, Lcom/android/calendar/time/DateTimeUtils;->getFutureDateTimeForTask(Lcom/google/calendar/v2/client/service/api/time/DateTime;)Lcom/google/calendar/v2/client/service/api/time/DateTime;

    move-result-object v0

    .line 339
    :cond_0
    :goto_1
    invoke-interface {v0}, Lcom/google/calendar/v2/client/service/api/time/DateTime;->getMillis()J

    move-result-wide v0

    return-wide v0

    .line 288
    :cond_1
    iget-object v0, p0, Lcom/google/android/calendar/task/snooze/SnoozeFindTimeAsyncTask;->mNowDateTime:Lcom/google/calendar/v2/client/service/api/time/DateTime;

    goto :goto_0

    .line 293
    :pswitch_1
    iget-object v0, p0, Lcom/google/android/calendar/task/snooze/SnoozeFindTimeAsyncTask;->mNowDateTime:Lcom/google/calendar/v2/client/service/api/time/DateTime;

    .line 294
    invoke-static {v0}, Lcom/android/calendar/time/DateTimeUtils;->roundUpToMidnight(Lcom/google/calendar/v2/client/service/api/time/DateTime;)Lcom/google/calendar/v2/client/service/api/time/DateTime;

    move-result-object v0

    .line 293
    invoke-static {v0}, Lcom/android/calendar/time/DateTimeUtils;->getTimeOnGivenFutureDateForTask(Lcom/google/calendar/v2/client/service/api/time/DateTime;)Lcom/google/calendar/v2/client/service/api/time/DateTime;

    move-result-object v0

    goto :goto_1

    .line 300
    :pswitch_2
    iget-object v0, p0, Lcom/google/android/calendar/task/snooze/SnoozeFindTimeAsyncTask;->mNowDateTime:Lcom/google/calendar/v2/client/service/api/time/DateTime;

    invoke-interface {v0}, Lcom/google/calendar/v2/client/service/api/time/DateTime;->getDayOfWeek()I

    move-result v0

    if-ne v0, v2, :cond_2

    .line 301
    iget-object v0, p0, Lcom/google/android/calendar/task/snooze/SnoozeFindTimeAsyncTask;->mNowDateTime:Lcom/google/calendar/v2/client/service/api/time/DateTime;

    invoke-static {v0}, Lcom/android/calendar/time/DateTimeUtils;->getFutureDateTimeForTask(Lcom/google/calendar/v2/client/service/api/time/DateTime;)Lcom/google/calendar/v2/client/service/api/time/DateTime;

    move-result-object v0

    .line 312
    :goto_2
    invoke-virtual {p0}, Lcom/google/android/calendar/task/snooze/SnoozeFindTimeAsyncTask;->isReminderLaterThisWeek()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/calendar/task/snooze/SnoozeFindTimeAsyncTask;->mStartDateTime:Lcom/google/calendar/v2/client/service/api/time/DateTime;

    invoke-interface {v1, v0}, Lcom/google/calendar/v2/client/service/api/time/DateTime;->isAfter(Lcom/google/calendar/v2/client/service/api/time/Instant;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 313
    iget-object v0, p0, Lcom/google/android/calendar/task/snooze/SnoozeFindTimeAsyncTask;->mStartDateTime:Lcom/google/calendar/v2/client/service/api/time/DateTime;

    invoke-static {v0}, Lcom/android/calendar/time/DateTimeUtils;->getFutureDateTimeForTask(Lcom/google/calendar/v2/client/service/api/time/DateTime;)Lcom/google/calendar/v2/client/service/api/time/DateTime;

    move-result-object v0

    goto :goto_1

    .line 302
    :cond_2
    iget-object v0, p0, Lcom/google/android/calendar/task/snooze/SnoozeFindTimeAsyncTask;->mNowDateTime:Lcom/google/calendar/v2/client/service/api/time/DateTime;

    invoke-interface {v0}, Lcom/google/calendar/v2/client/service/api/time/DateTime;->getDayOfWeek()I

    move-result v0

    if-ne v0, v1, :cond_3

    .line 303
    iget-object v0, p0, Lcom/google/android/calendar/task/snooze/SnoozeFindTimeAsyncTask;->mNowDateTime:Lcom/google/calendar/v2/client/service/api/time/DateTime;

    .line 304
    invoke-static {v0}, Lcom/android/calendar/time/DateTimeUtils;->roundUpToMidnight(Lcom/google/calendar/v2/client/service/api/time/DateTime;)Lcom/google/calendar/v2/client/service/api/time/DateTime;

    move-result-object v0

    .line 303
    invoke-static {v0}, Lcom/android/calendar/time/DateTimeUtils;->getTimeOnGivenFutureDateForTask(Lcom/google/calendar/v2/client/service/api/time/DateTime;)Lcom/google/calendar/v2/client/service/api/time/DateTime;

    move-result-object v0

    goto :goto_2

    .line 306
    :cond_3
    iget-object v0, p0, Lcom/google/android/calendar/task/snooze/SnoozeFindTimeAsyncTask;->mNowDateTime:Lcom/google/calendar/v2/client/service/api/time/DateTime;

    invoke-static {v0}, Lcom/android/calendar/time/DateTimeUtils;->roundUpToMidnight(Lcom/google/calendar/v2/client/service/api/time/DateTime;)Lcom/google/calendar/v2/client/service/api/time/DateTime;

    move-result-object v0

    .line 308
    invoke-static {v0}, Lcom/android/calendar/time/DateTimeUtils;->roundUpToMidnight(Lcom/google/calendar/v2/client/service/api/time/DateTime;)Lcom/google/calendar/v2/client/service/api/time/DateTime;

    move-result-object v0

    .line 307
    invoke-static {v0}, Lcom/android/calendar/time/DateTimeUtils;->getTimeOnGivenFutureDateForTask(Lcom/google/calendar/v2/client/service/api/time/DateTime;)Lcom/google/calendar/v2/client/service/api/time/DateTime;

    move-result-object v0

    goto :goto_2

    .line 319
    :pswitch_3
    iget-object v0, p0, Lcom/google/android/calendar/task/snooze/SnoozeFindTimeAsyncTask;->mNowDateTime:Lcom/google/calendar/v2/client/service/api/time/DateTime;

    invoke-interface {v0}, Lcom/google/calendar/v2/client/service/api/time/DateTime;->getDayOfWeek()I

    move-result v0

    if-eq v0, v1, :cond_4

    iget-object v0, p0, Lcom/google/android/calendar/task/snooze/SnoozeFindTimeAsyncTask;->mNowDateTime:Lcom/google/calendar/v2/client/service/api/time/DateTime;

    .line 320
    invoke-interface {v0}, Lcom/google/calendar/v2/client/service/api/time/DateTime;->getDayOfWeek()I

    move-result v0

    if-ne v0, v2, :cond_5

    .line 321
    :cond_4
    iget-object v0, p0, Lcom/google/android/calendar/task/snooze/SnoozeFindTimeAsyncTask;->mNowDateTime:Lcom/google/calendar/v2/client/service/api/time/DateTime;

    invoke-static {v0}, Lcom/android/calendar/time/DateTimeUtils;->getFutureDateTimeForTask(Lcom/google/calendar/v2/client/service/api/time/DateTime;)Lcom/google/calendar/v2/client/service/api/time/DateTime;

    move-result-object v0

    goto :goto_1

    .line 323
    :cond_5
    iget-object v0, p0, Lcom/google/android/calendar/task/snooze/SnoozeFindTimeAsyncTask;->mNowDateTime:Lcom/google/calendar/v2/client/service/api/time/DateTime;

    .line 324
    invoke-static {v0, v1}, Lcom/android/calendar/time/DateTimeUtils;->roundUpToMidnightOfNextDayOfWeek(Lcom/google/calendar/v2/client/service/api/time/DateTime;I)Lcom/google/calendar/v2/client/service/api/time/DateTime;

    move-result-object v0

    .line 323
    invoke-static {v0}, Lcom/android/calendar/time/DateTimeUtils;->getTimeOnGivenFutureDateForTask(Lcom/google/calendar/v2/client/service/api/time/DateTime;)Lcom/google/calendar/v2/client/service/api/time/DateTime;

    move-result-object v0

    goto :goto_1

    .line 330
    :pswitch_4
    iget-object v0, p0, Lcom/google/android/calendar/task/snooze/SnoozeFindTimeAsyncTask;->mNowDateTime:Lcom/google/calendar/v2/client/service/api/time/DateTime;

    const/4 v1, 0x1

    .line 331
    invoke-static {v0, v1}, Lcom/android/calendar/time/DateTimeUtils;->roundUpToMidnightOfNextDayOfWeek(Lcom/google/calendar/v2/client/service/api/time/DateTime;I)Lcom/google/calendar/v2/client/service/api/time/DateTime;

    move-result-object v0

    .line 330
    invoke-static {v0}, Lcom/android/calendar/time/DateTimeUtils;->getTimeOnGivenFutureDateForTask(Lcom/google/calendar/v2/client/service/api/time/DateTime;)Lcom/google/calendar/v2/client/service/api/time/DateTime;

    move-result-object v0

    goto/16 :goto_1

    .line 284
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private getMillisFromProtoDateTime(Lcom/google/caribou/tasks/nano/DateTime;)J
    .locals 4

    .prologue
    .line 404
    iget-wide v0, p1, Lcom/google/caribou/tasks/nano/DateTime;->absoluteTimeMs:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 405
    iget-wide v0, p1, Lcom/google/caribou/tasks/nano/DateTime;->absoluteTimeMs:J

    .line 411
    :goto_0
    return-wide v0

    .line 407
    :cond_0
    iget-object v0, p0, Lcom/google/android/calendar/task/snooze/SnoozeFindTimeAsyncTask;->mNowDateTime:Lcom/google/calendar/v2/client/service/api/time/DateTime;

    iget v1, p1, Lcom/google/caribou/tasks/nano/DateTime;->year:I

    iget v2, p1, Lcom/google/caribou/tasks/nano/DateTime;->month:I

    iget v3, p1, Lcom/google/caribou/tasks/nano/DateTime;->day:I

    invoke-interface {v0, v1, v2, v3}, Lcom/google/calendar/v2/client/service/api/time/DateTime;->withDate(III)Lcom/google/calendar/v2/client/service/api/time/DateTime;

    move-result-object v0

    const/4 v1, 0x0

    .line 408
    invoke-interface {v0, v1}, Lcom/google/calendar/v2/client/service/api/time/DateTime;->withMillisOfDay(I)Lcom/google/calendar/v2/client/service/api/time/DateTime;

    move-result-object v0

    .line 409
    iget-object v1, p1, Lcom/google/caribou/tasks/nano/DateTime;->time:Lcom/google/caribou/tasks/nano/DateTime$Time;

    iget v1, v1, Lcom/google/caribou/tasks/nano/DateTime$Time;->hour:I

    iget-object v2, p1, Lcom/google/caribou/tasks/nano/DateTime;->time:Lcom/google/caribou/tasks/nano/DateTime$Time;

    iget v2, v2, Lcom/google/caribou/tasks/nano/DateTime$Time;->minute:I

    iget-object v3, p1, Lcom/google/caribou/tasks/nano/DateTime;->time:Lcom/google/caribou/tasks/nano/DateTime$Time;

    iget v3, v3, Lcom/google/caribou/tasks/nano/DateTime$Time;->second:I

    invoke-interface {v0, v1, v2, v3}, Lcom/google/calendar/v2/client/service/api/time/DateTime;->withTime(III)Lcom/google/calendar/v2/client/service/api/time/DateTime;

    move-result-object v0

    .line 411
    invoke-interface {v0}, Lcom/google/calendar/v2/client/service/api/time/DateTime;->getMillis()J

    move-result-wide v0

    goto :goto_0
.end method

.method private getNextDayOfWeekDateTimeConstraint(I)Lcom/google/personalization/assist/annotate/scheduler/nano/DateTimeConstraint;
    .locals 3

    .prologue
    .line 356
    new-instance v0, Lcom/google/personalization/assist/annotate/scheduler/nano/DateTimeConstraint;

    invoke-direct {v0}, Lcom/google/personalization/assist/annotate/scheduler/nano/DateTimeConstraint;-><init>()V

    .line 357
    iget-object v1, p0, Lcom/google/android/calendar/task/snooze/SnoozeFindTimeAsyncTask;->mNowDateTime:Lcom/google/calendar/v2/client/service/api/time/DateTime;

    invoke-static {v1, p1}, Lcom/android/calendar/time/DateTimeUtils;->roundUpToMidnightOfNextDayOfWeek(Lcom/google/calendar/v2/client/service/api/time/DateTime;I)Lcom/google/calendar/v2/client/service/api/time/DateTime;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {p0, v1, v2}, Lcom/google/android/calendar/task/snooze/SnoozeFindTimeAsyncTask;->getProtoDateTime(Lcom/google/calendar/v2/client/service/api/time/DateTime;Z)Lcom/google/caribou/tasks/nano/DateTime;

    move-result-object v1

    iput-object v1, v0, Lcom/google/personalization/assist/annotate/scheduler/nano/DateTimeConstraint;->datetime:Lcom/google/caribou/tasks/nano/DateTime;

    .line 359
    return-object v0
.end method

.method private getProtoDateTime(Lcom/google/calendar/v2/client/service/api/time/DateTime;Z)Lcom/google/caribou/tasks/nano/DateTime;
    .locals 3

    .prologue
    .line 386
    new-instance v0, Lcom/google/caribou/tasks/nano/DateTime;

    invoke-direct {v0}, Lcom/google/caribou/tasks/nano/DateTime;-><init>()V

    .line 388
    invoke-interface {p1}, Lcom/google/calendar/v2/client/service/api/time/DateTime;->getYear()I

    move-result v1

    iput v1, v0, Lcom/google/caribou/tasks/nano/DateTime;->year:I

    .line 389
    invoke-interface {p1}, Lcom/google/calendar/v2/client/service/api/time/DateTime;->getMonthOfYear()I

    move-result v1

    iput v1, v0, Lcom/google/caribou/tasks/nano/DateTime;->month:I

    .line 390
    invoke-interface {p1}, Lcom/google/calendar/v2/client/service/api/time/DateTime;->getDayOfMonth()I

    move-result v1

    iput v1, v0, Lcom/google/caribou/tasks/nano/DateTime;->day:I

    .line 391
    if-eqz p2, :cond_0

    .line 392
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/google/caribou/tasks/nano/DateTime;->allDay:Z

    .line 400
    :goto_0
    return-object v0

    .line 394
    :cond_0
    new-instance v1, Lcom/google/caribou/tasks/nano/DateTime$Time;

    invoke-direct {v1}, Lcom/google/caribou/tasks/nano/DateTime$Time;-><init>()V

    iput-object v1, v0, Lcom/google/caribou/tasks/nano/DateTime;->time:Lcom/google/caribou/tasks/nano/DateTime$Time;

    .line 395
    iget-object v1, v0, Lcom/google/caribou/tasks/nano/DateTime;->time:Lcom/google/caribou/tasks/nano/DateTime$Time;

    invoke-interface {p1}, Lcom/google/calendar/v2/client/service/api/time/DateTime;->getHourOfDay()I

    move-result v2

    iput v2, v1, Lcom/google/caribou/tasks/nano/DateTime$Time;->hour:I

    .line 396
    iget-object v1, v0, Lcom/google/caribou/tasks/nano/DateTime;->time:Lcom/google/caribou/tasks/nano/DateTime$Time;

    invoke-interface {p1}, Lcom/google/calendar/v2/client/service/api/time/DateTime;->getMinuteOfHour()I

    move-result v2

    iput v2, v1, Lcom/google/caribou/tasks/nano/DateTime$Time;->minute:I

    .line 397
    iget-object v1, v0, Lcom/google/caribou/tasks/nano/DateTime;->time:Lcom/google/caribou/tasks/nano/DateTime$Time;

    invoke-interface {p1}, Lcom/google/calendar/v2/client/service/api/time/DateTime;->getSecondOfMinute()I

    move-result v2

    iput v2, v1, Lcom/google/caribou/tasks/nano/DateTime$Time;->second:I

    .line 398
    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/google/caribou/tasks/nano/DateTime;->allDay:Z

    goto :goto_0
.end method

.method private getScheduleRequest()Lcom/google/personalization/assist/annotate/scheduler/nano/ScheduleRequest;
    .locals 4

    .prologue
    .line 184
    new-instance v0, Lcom/google/personalization/assist/annotate/scheduler/nano/ScheduleRequest;

    invoke-direct {v0}, Lcom/google/personalization/assist/annotate/scheduler/nano/ScheduleRequest;-><init>()V

    .line 185
    new-instance v1, Lcom/google/personalization/timesuggest/nano/Intention;

    invoke-direct {v1}, Lcom/google/personalization/timesuggest/nano/Intention;-><init>()V

    iput-object v1, v0, Lcom/google/personalization/assist/annotate/scheduler/nano/ScheduleRequest;->intention:Lcom/google/personalization/timesuggest/nano/Intention;

    .line 186
    iget-object v1, v0, Lcom/google/personalization/assist/annotate/scheduler/nano/ScheduleRequest;->intention:Lcom/google/personalization/timesuggest/nano/Intention;

    const/4 v2, 0x1

    iput v2, v1, Lcom/google/personalization/timesuggest/nano/Intention;->type:I

    .line 187
    iget-object v1, v0, Lcom/google/personalization/assist/annotate/scheduler/nano/ScheduleRequest;->intention:Lcom/google/personalization/timesuggest/nano/Intention;

    iget v2, p0, Lcom/google/android/calendar/task/snooze/SnoozeFindTimeAsyncTask;->mDurationMillis:I

    const v3, 0xea60

    div-int/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, v1, Lcom/google/personalization/timesuggest/nano/Intention;->durationMinutes:Ljava/lang/Integer;

    .line 188
    iget-object v1, p0, Lcom/google/android/calendar/task/snooze/SnoozeFindTimeAsyncTask;->mNowDateTime:Lcom/google/calendar/v2/client/service/api/time/DateTime;

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/google/android/calendar/task/snooze/SnoozeFindTimeAsyncTask;->getProtoDateTime(Lcom/google/calendar/v2/client/service/api/time/DateTime;Z)Lcom/google/caribou/tasks/nano/DateTime;

    move-result-object v1

    iput-object v1, v0, Lcom/google/personalization/assist/annotate/scheduler/nano/ScheduleRequest;->currentDatetime:Lcom/google/caribou/tasks/nano/DateTime;

    .line 189
    new-instance v1, Lcom/google/personalization/assist/annotate/scheduler/nano/SchedulingConstraint;

    invoke-direct {v1}, Lcom/google/personalization/assist/annotate/scheduler/nano/SchedulingConstraint;-><init>()V

    iput-object v1, v0, Lcom/google/personalization/assist/annotate/scheduler/nano/ScheduleRequest;->timeConstraint:Lcom/google/personalization/assist/annotate/scheduler/nano/SchedulingConstraint;

    .line 190
    iget-object v1, v0, Lcom/google/personalization/assist/annotate/scheduler/nano/ScheduleRequest;->timeConstraint:Lcom/google/personalization/assist/annotate/scheduler/nano/SchedulingConstraint;

    invoke-direct {p0}, Lcom/google/android/calendar/task/snooze/SnoozeFindTimeAsyncTask;->getDateTimeConstraint()[Lcom/google/personalization/assist/annotate/scheduler/nano/DateTimeConstraint;

    move-result-object v2

    iput-object v2, v1, Lcom/google/personalization/assist/annotate/scheduler/nano/SchedulingConstraint;->timeConstraint:[Lcom/google/personalization/assist/annotate/scheduler/nano/DateTimeConstraint;

    .line 192
    return-object v0
.end method

.method private getTodayDateTimeConstraint()Lcom/google/personalization/assist/annotate/scheduler/nano/DateTimeConstraint;
    .locals 3

    .prologue
    .line 343
    new-instance v0, Lcom/google/personalization/assist/annotate/scheduler/nano/DateTimeConstraint;

    invoke-direct {v0}, Lcom/google/personalization/assist/annotate/scheduler/nano/DateTimeConstraint;-><init>()V

    .line 344
    iget-object v1, p0, Lcom/google/android/calendar/task/snooze/SnoozeFindTimeAsyncTask;->mNowDateTime:Lcom/google/calendar/v2/client/service/api/time/DateTime;

    const/4 v2, 0x1

    invoke-direct {p0, v1, v2}, Lcom/google/android/calendar/task/snooze/SnoozeFindTimeAsyncTask;->getProtoDateTime(Lcom/google/calendar/v2/client/service/api/time/DateTime;Z)Lcom/google/caribou/tasks/nano/DateTime;

    move-result-object v1

    iput-object v1, v0, Lcom/google/personalization/assist/annotate/scheduler/nano/DateTimeConstraint;->datetime:Lcom/google/caribou/tasks/nano/DateTime;

    .line 345
    return-object v0
.end method

.method private getTomorrowDateTimeConstraint()Lcom/google/personalization/assist/annotate/scheduler/nano/DateTimeConstraint;
    .locals 3

    .prologue
    .line 349
    new-instance v0, Lcom/google/personalization/assist/annotate/scheduler/nano/DateTimeConstraint;

    invoke-direct {v0}, Lcom/google/personalization/assist/annotate/scheduler/nano/DateTimeConstraint;-><init>()V

    .line 350
    iget-object v1, p0, Lcom/google/android/calendar/task/snooze/SnoozeFindTimeAsyncTask;->mNowDateTime:Lcom/google/calendar/v2/client/service/api/time/DateTime;

    .line 351
    invoke-static {v1}, Lcom/android/calendar/time/DateTimeUtils;->roundUpToMidnight(Lcom/google/calendar/v2/client/service/api/time/DateTime;)Lcom/google/calendar/v2/client/service/api/time/DateTime;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {p0, v1, v2}, Lcom/google/android/calendar/task/snooze/SnoozeFindTimeAsyncTask;->getProtoDateTime(Lcom/google/calendar/v2/client/service/api/time/DateTime;Z)Lcom/google/caribou/tasks/nano/DateTime;

    move-result-object v1

    iput-object v1, v0, Lcom/google/personalization/assist/annotate/scheduler/nano/DateTimeConstraint;->datetime:Lcom/google/caribou/tasks/nano/DateTime;

    .line 352
    return-object v0
.end method

.method private getWarmupScheduleRequest()Lcom/google/personalization/assist/annotate/scheduler/nano/ScheduleRequest;
    .locals 3

    .prologue
    .line 199
    new-instance v0, Lcom/google/personalization/assist/annotate/scheduler/nano/ScheduleRequest;

    invoke-direct {v0}, Lcom/google/personalization/assist/annotate/scheduler/nano/ScheduleRequest;-><init>()V

    .line 200
    new-instance v1, Lcom/google/personalization/timesuggest/nano/Intention;

    invoke-direct {v1}, Lcom/google/personalization/timesuggest/nano/Intention;-><init>()V

    iput-object v1, v0, Lcom/google/personalization/assist/annotate/scheduler/nano/ScheduleRequest;->intention:Lcom/google/personalization/timesuggest/nano/Intention;

    .line 201
    iget-object v1, v0, Lcom/google/personalization/assist/annotate/scheduler/nano/ScheduleRequest;->intention:Lcom/google/personalization/timesuggest/nano/Intention;

    const/4 v2, 0x3

    iput v2, v1, Lcom/google/personalization/timesuggest/nano/Intention;->type:I

    .line 202
    iget-object v1, p0, Lcom/google/android/calendar/task/snooze/SnoozeFindTimeAsyncTask;->mNowDateTime:Lcom/google/calendar/v2/client/service/api/time/DateTime;

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/google/android/calendar/task/snooze/SnoozeFindTimeAsyncTask;->getProtoDateTime(Lcom/google/calendar/v2/client/service/api/time/DateTime;Z)Lcom/google/caribou/tasks/nano/DateTime;

    move-result-object v1

    iput-object v1, v0, Lcom/google/personalization/assist/annotate/scheduler/nano/ScheduleRequest;->currentDatetime:Lcom/google/caribou/tasks/nano/DateTime;

    .line 203
    return-object v0
.end method

.method private onTaskDoneOrCancelled(Ljava/lang/Long;)V
    .locals 4

    .prologue
    .line 170
    iget-boolean v0, p0, Lcom/google/android/calendar/task/snooze/SnoozeFindTimeAsyncTask;->mIsWarmup:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/calendar/task/snooze/SnoozeFindTimeAsyncTask;->mListener:Lcom/google/android/calendar/task/snooze/SnoozeFindTimeAsyncTask$Listener;

    if-nez v0, :cond_1

    .line 178
    :cond_0
    :goto_0
    return-void

    .line 173
    :cond_1
    if-nez p1, :cond_2

    .line 174
    sget-object v0, Lcom/google/android/calendar/task/snooze/SnoozeFindTimeAsyncTask;->TAG:Ljava/lang/String;

    const-string v1, "Failed to find time from the server, using client fallback"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/calendarcommon2/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 175
    invoke-direct {p0}, Lcom/google/android/calendar/task/snooze/SnoozeFindTimeAsyncTask;->getFallbackSnoozeTime()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    .line 177
    :cond_2
    iget-object v0, p0, Lcom/google/android/calendar/task/snooze/SnoozeFindTimeAsyncTask;->mListener:Lcom/google/android/calendar/task/snooze/SnoozeFindTimeAsyncTask$Listener;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-interface {v0, v2, v3}, Lcom/google/android/calendar/task/snooze/SnoozeFindTimeAsyncTask$Listener;->onSnoozeTimeFound(J)V

    goto :goto_0
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Long;
    .locals 6

    .prologue
    const/4 v0, 0x0

    const/4 v5, 0x0

    .line 135
    new-instance v1, Lcom/google/android/calendar/net/taskassist/TaskAssistService;

    iget-object v2, p0, Lcom/google/android/calendar/task/snooze/SnoozeFindTimeAsyncTask;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/google/android/calendar/task/snooze/SnoozeFindTimeAsyncTask;->mAccountName:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lcom/google/android/calendar/net/taskassist/TaskAssistService;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 137
    :try_start_0
    iget-boolean v2, p0, Lcom/google/android/calendar/task/snooze/SnoozeFindTimeAsyncTask;->mIsWarmup:Z

    if-eqz v2, :cond_0

    .line 138
    invoke-direct {p0}, Lcom/google/android/calendar/task/snooze/SnoozeFindTimeAsyncTask;->getWarmupScheduleRequest()Lcom/google/personalization/assist/annotate/scheduler/nano/ScheduleRequest;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/calendar/net/taskassist/TaskAssistService;->schedule(Lcom/google/personalization/assist/annotate/scheduler/nano/ScheduleRequest;)Lcom/google/personalization/assist/annotate/scheduler/nano/ScheduleResponse;

    .line 150
    :goto_0
    return-object v0

    .line 141
    :cond_0
    invoke-direct {p0}, Lcom/google/android/calendar/task/snooze/SnoozeFindTimeAsyncTask;->getScheduleRequest()Lcom/google/personalization/assist/annotate/scheduler/nano/ScheduleRequest;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/calendar/net/taskassist/TaskAssistService;->schedule(Lcom/google/personalization/assist/annotate/scheduler/nano/ScheduleRequest;)Lcom/google/personalization/assist/annotate/scheduler/nano/ScheduleResponse;

    move-result-object v1

    .line 142
    if-eqz v1, :cond_1

    iget-object v2, v1, Lcom/google/personalization/assist/annotate/scheduler/nano/ScheduleResponse;->suggestion:Lcom/google/personalization/assist/annotate/scheduler/nano/TimeSuggestion;

    if-eqz v2, :cond_1

    iget-object v2, v1, Lcom/google/personalization/assist/annotate/scheduler/nano/ScheduleResponse;->suggestion:Lcom/google/personalization/assist/annotate/scheduler/nano/TimeSuggestion;

    iget-object v2, v2, Lcom/google/personalization/assist/annotate/scheduler/nano/TimeSuggestion;->suggestedDatetime:Lcom/google/caribou/tasks/nano/DateTime;

    if-eqz v2, :cond_1

    .line 144
    iget-object v1, v1, Lcom/google/personalization/assist/annotate/scheduler/nano/ScheduleResponse;->suggestion:Lcom/google/personalization/assist/annotate/scheduler/nano/TimeSuggestion;

    iget-object v1, v1, Lcom/google/personalization/assist/annotate/scheduler/nano/TimeSuggestion;->suggestedDatetime:Lcom/google/caribou/tasks/nano/DateTime;

    invoke-direct {p0, v1}, Lcom/google/android/calendar/task/snooze/SnoozeFindTimeAsyncTask;->getMillisFromProtoDateTime(Lcom/google/caribou/tasks/nano/DateTime;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
    :try_end_0
    .catch Lcom/google/android/calendar/net/exceptions/GrpcServiceException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 146
    :catch_0
    move-exception v1

    .line 147
    sget-object v2, Lcom/google/android/calendar/task/snooze/SnoozeFindTimeAsyncTask;->TAG:Ljava/lang/String;

    const-string v3, "TaskAssist schedule call failed with exception"

    new-array v4, v5, [Ljava/lang/Object;

    invoke-static {v2, v1, v3, v4}, Lcom/android/calendarcommon2/LogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 149
    :cond_1
    sget-object v1, Lcom/google/android/calendar/task/snooze/SnoozeFindTimeAsyncTask;->TAG:Ljava/lang/String;

    const-string v2, "TaskAssist schedule call returned invalid data"

    new-array v3, v5, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/android/calendarcommon2/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 36
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/google/android/calendar/task/snooze/SnoozeFindTimeAsyncTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method protected isReminderLaterThisWeek()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 379
    iget-object v1, p0, Lcom/google/android/calendar/task/snooze/SnoozeFindTimeAsyncTask;->mStartDateTime:Lcom/google/calendar/v2/client/service/api/time/DateTime;

    iget-object v2, p0, Lcom/google/android/calendar/task/snooze/SnoozeFindTimeAsyncTask;->mNowDateTime:Lcom/google/calendar/v2/client/service/api/time/DateTime;

    .line 380
    invoke-static {v2, v0}, Lcom/android/calendar/time/DateTimeUtils;->roundUpToMidnightOfNextDayOfWeek(Lcom/google/calendar/v2/client/service/api/time/DateTime;I)Lcom/google/calendar/v2/client/service/api/time/DateTime;

    move-result-object v2

    .line 379
    invoke-interface {v1, v2}, Lcom/google/calendar/v2/client/service/api/time/DateTime;->isBefore(Lcom/google/calendar/v2/client/service/api/time/Instant;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/calendar/task/snooze/SnoozeFindTimeAsyncTask;->mStartDateTime:Lcom/google/calendar/v2/client/service/api/time/DateTime;

    iget-object v2, p0, Lcom/google/android/calendar/task/snooze/SnoozeFindTimeAsyncTask;->mNowDateTime:Lcom/google/calendar/v2/client/service/api/time/DateTime;

    .line 381
    invoke-interface {v1, v2}, Lcom/google/calendar/v2/client/service/api/time/DateTime;->isAfter(Lcom/google/calendar/v2/client/service/api/time/Instant;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 379
    :goto_0
    return v0

    .line 381
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected isReminderLaterToday()Z
    .locals 2

    .prologue
    .line 373
    iget-object v0, p0, Lcom/google/android/calendar/task/snooze/SnoozeFindTimeAsyncTask;->mStartDateTime:Lcom/google/calendar/v2/client/service/api/time/DateTime;

    iget-object v1, p0, Lcom/google/android/calendar/task/snooze/SnoozeFindTimeAsyncTask;->mNowDateTime:Lcom/google/calendar/v2/client/service/api/time/DateTime;

    invoke-static {v1}, Lcom/android/calendar/time/DateTimeUtils;->roundUpToMidnight(Lcom/google/calendar/v2/client/service/api/time/DateTime;)Lcom/google/calendar/v2/client/service/api/time/DateTime;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/calendar/v2/client/service/api/time/DateTime;->isBefore(Lcom/google/calendar/v2/client/service/api/time/Instant;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/calendar/task/snooze/SnoozeFindTimeAsyncTask;->mStartDateTime:Lcom/google/calendar/v2/client/service/api/time/DateTime;

    iget-object v1, p0, Lcom/google/android/calendar/task/snooze/SnoozeFindTimeAsyncTask;->mNowDateTime:Lcom/google/calendar/v2/client/service/api/time/DateTime;

    .line 374
    invoke-interface {v0, v1}, Lcom/google/calendar/v2/client/service/api/time/DateTime;->isAfter(Lcom/google/calendar/v2/client/service/api/time/Instant;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 373
    :goto_0
    return v0

    .line 374
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onCancelled(Ljava/lang/Long;)V
    .locals 0

    .prologue
    .line 160
    invoke-direct {p0, p1}, Lcom/google/android/calendar/task/snooze/SnoozeFindTimeAsyncTask;->onTaskDoneOrCancelled(Ljava/lang/Long;)V

    .line 161
    return-void
.end method

.method protected bridge synthetic onCancelled(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 36
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p0, p1}, Lcom/google/android/calendar/task/snooze/SnoozeFindTimeAsyncTask;->onCancelled(Ljava/lang/Long;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Long;)V
    .locals 0

    .prologue
    .line 155
    invoke-direct {p0, p1}, Lcom/google/android/calendar/task/snooze/SnoozeFindTimeAsyncTask;->onTaskDoneOrCancelled(Ljava/lang/Long;)V

    .line 156
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 36
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p0, p1}, Lcom/google/android/calendar/task/snooze/SnoozeFindTimeAsyncTask;->onPostExecute(Ljava/lang/Long;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 7

    .prologue
    const-wide/16 v2, 0x5dc

    .line 116
    .line 117
    new-instance v0, Lcom/google/android/calendar/task/snooze/SnoozeFindTimeAsyncTask$1;

    move-object v1, p0

    move-wide v4, v2

    move-object v6, p0

    invoke-direct/range {v0 .. v6}, Lcom/google/android/calendar/task/snooze/SnoozeFindTimeAsyncTask$1;-><init>(Lcom/google/android/calendar/task/snooze/SnoozeFindTimeAsyncTask;JJLandroid/os/AsyncTask;)V

    .line 130
    invoke-virtual {v0}, Lcom/google/android/calendar/task/snooze/SnoozeFindTimeAsyncTask$1;->start()Landroid/os/CountDownTimer;

    .line 131
    return-void
.end method
