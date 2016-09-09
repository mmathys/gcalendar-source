.class public Lcom/android/calendar/event/ReminderUtils;
.super Ljava/lang/Object;
.source "ReminderUtils.java"


# static fields
.field private static HOUR_12_FORMAT:Ljava/lang/String;

.field private static HOUR_24_FORMAT:Ljava/lang/String;

.field private static HOUR_MINUTE_12_FORMAT:Ljava/lang/String;

.field private static MINUTES_PER_DAY:I

.field private static MINUTES_PER_HOUR:I

.field private static MINUTES_PER_WEEK:I


# instance fields
.field private mCalendar:Ljava/util/Calendar;

.field private mContext:Landroid/content/Context;

.field private mNoReminder:Ljava/lang/String;

.field private mReminderMethodLabels:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 42
    const/16 v0, 0x2760

    sput v0, Lcom/android/calendar/event/ReminderUtils;->MINUTES_PER_WEEK:I

    .line 43
    const/16 v0, 0x5a0

    sput v0, Lcom/android/calendar/event/ReminderUtils;->MINUTES_PER_DAY:I

    .line 44
    const/16 v0, 0x3c

    sput v0, Lcom/android/calendar/event/ReminderUtils;->MINUTES_PER_HOUR:I

    .line 46
    const-string v0, "h a"

    sput-object v0, Lcom/android/calendar/event/ReminderUtils;->HOUR_12_FORMAT:Ljava/lang/String;

    .line 47
    const-string v0, "h:mm a"

    sput-object v0, Lcom/android/calendar/event/ReminderUtils;->HOUR_MINUTE_12_FORMAT:Ljava/lang/String;

    .line 48
    const-string v0, "H:mm"

    sput-object v0, Lcom/android/calendar/event/ReminderUtils;->HOUR_24_FORMAT:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 9

    .prologue
    const/4 v1, 0x0

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/calendar/event/ReminderUtils;->mReminderMethodLabels:Landroid/util/SparseArray;

    .line 52
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/event/ReminderUtils;->mCalendar:Ljava/util/Calendar;

    .line 56
    iput-object p1, p0, Lcom/android/calendar/event/ReminderUtils;->mContext:Landroid/content/Context;

    .line 57
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 59
    sget v0, Lcom/android/calendar/R$array;->reminder_methods_values:I

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v3

    .line 60
    sget v0, Lcom/android/calendar/R$array;->reminder_methods_labels:I

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    .line 62
    array-length v0, v3

    array-length v5, v4

    invoke-static {v0, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    move v0, v1

    .line 63
    :goto_0
    if-ge v0, v5, :cond_0

    .line 64
    iget-object v6, p0, Lcom/android/calendar/event/ReminderUtils;->mReminderMethodLabels:Landroid/util/SparseArray;

    aget v7, v3, v0

    aget-object v8, v4, v0

    invoke-virtual {v6, v7, v8}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 63
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 67
    :cond_0
    iget-object v0, p0, Lcom/android/calendar/event/ReminderUtils;->mReminderMethodLabels:Landroid/util/SparseArray;

    aget-object v3, v4, v1

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 70
    sget v0, Lcom/android/calendar/R$string;->no_reminder:I

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/event/ReminderUtils;->mNoReminder:Ljava/lang/String;

    .line 71
    return-void
.end method

.method public static constructTimeIntervalString(Landroid/content/res/Resources;I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 318
    sget v0, Lcom/android/calendar/event/ReminderUtils;->MINUTES_PER_WEEK:I

    if-lt p1, v0, :cond_0

    sget v0, Lcom/android/calendar/event/ReminderUtils;->MINUTES_PER_WEEK:I

    rem-int v0, p1, v0

    if-nez v0, :cond_0

    .line 319
    sget v0, Lcom/android/calendar/event/ReminderUtils;->MINUTES_PER_WEEK:I

    div-int/2addr p1, v0

    .line 320
    sget v0, Lcom/android/calendar/R$plurals;->Nweeks:I

    .line 339
    :goto_0
    invoke-static {p0, v0, p1}, Lcom/android/calendar/Utils;->createPluralString(Landroid/content/res/Resources;II)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 324
    :cond_0
    sget v0, Lcom/android/calendar/event/ReminderUtils;->MINUTES_PER_DAY:I

    if-lt p1, v0, :cond_1

    sget v0, Lcom/android/calendar/event/ReminderUtils;->MINUTES_PER_DAY:I

    rem-int v0, p1, v0

    if-nez v0, :cond_1

    .line 325
    sget v0, Lcom/android/calendar/event/ReminderUtils;->MINUTES_PER_DAY:I

    div-int/2addr p1, v0

    .line 326
    sget v0, Lcom/android/calendar/R$plurals;->Ndays:I

    goto :goto_0

    .line 330
    :cond_1
    sget v0, Lcom/android/calendar/event/ReminderUtils;->MINUTES_PER_HOUR:I

    if-lt p1, v0, :cond_2

    sget v0, Lcom/android/calendar/event/ReminderUtils;->MINUTES_PER_HOUR:I

    rem-int v0, p1, v0

    if-nez v0, :cond_2

    .line 331
    sget v0, Lcom/android/calendar/event/ReminderUtils;->MINUTES_PER_HOUR:I

    div-int/2addr p1, v0

    .line 332
    sget v0, Lcom/android/calendar/R$plurals;->Nhours:I

    goto :goto_0

    .line 337
    :cond_2
    sget v0, Lcom/android/calendar/R$plurals;->Nminutes:I

    goto :goto_0
.end method

.method public static deliveryMethodToMethod(Lcom/google/calendar/v2/client/service/api/common/Reminder$DeliveryMethod;)I
    .locals 1

    .prologue
    .line 298
    sget-object v0, Lcom/google/calendar/v2/client/service/api/common/Reminder$DeliveryMethod;->EMAIL:Lcom/google/calendar/v2/client/service/api/common/Reminder$DeliveryMethod;

    if-ne p0, v0, :cond_0

    .line 299
    const/4 v0, 0x2

    .line 303
    :goto_0
    return v0

    .line 300
    :cond_0
    sget-object v0, Lcom/google/calendar/v2/client/service/api/common/Reminder$DeliveryMethod;->SMS:Lcom/google/calendar/v2/client/service/api/common/Reminder$DeliveryMethod;

    if-ne p0, v0, :cond_1

    .line 301
    const/4 v0, 0x3

    goto :goto_0

    .line 303
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static findMinutesInReminderList(Ljava/util/ArrayList;I)I
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;I)I"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 184
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    .line 185
    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 187
    const-string v1, "ReminderUtils"

    const-string v2, "Cannot find minutes (%d) in list"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v0

    invoke-static {v1, v2, v3}, Lcom/android/calendarcommon2/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 190
    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public static methodToDeliveryMethod(I)Lcom/google/calendar/v2/client/service/api/common/Reminder$DeliveryMethod;
    .locals 1

    .prologue
    .line 286
    packed-switch p0, :pswitch_data_0

    .line 293
    sget-object v0, Lcom/google/calendar/v2/client/service/api/common/Reminder$DeliveryMethod;->ALERT:Lcom/google/calendar/v2/client/service/api/common/Reminder$DeliveryMethod;

    :goto_0
    return-object v0

    .line 288
    :pswitch_0
    sget-object v0, Lcom/google/calendar/v2/client/service/api/common/Reminder$DeliveryMethod;->EMAIL:Lcom/google/calendar/v2/client/service/api/common/Reminder$DeliveryMethod;

    goto :goto_0

    .line 290
    :pswitch_1
    sget-object v0, Lcom/google/calendar/v2/client/service/api/common/Reminder$DeliveryMethod;->SMS:Lcom/google/calendar/v2/client/service/api/common/Reminder$DeliveryMethod;

    goto :goto_0

    .line 286
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static reduceMethodList(Ljava/util/List;Ljava/util/ArrayList;Ljava/lang/String;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 225
    const-string v0, ","

    invoke-virtual {p2, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 226
    array-length v0, v2

    new-array v3, v0, [I

    move v0, v1

    .line 228
    :goto_0
    array-length v4, v3

    if-ge v0, v4, :cond_1

    .line 230
    :try_start_0
    aget-object v4, v2, v0

    const/16 v5, 0xa

    invoke-static {v4, v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v4

    aput v4, v3, v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 228
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 231
    :catch_0
    move-exception v3

    .line 232
    const-string v3, "ReminderUtils"

    const-string v4, "Bad allowed-strings list: \'%s\' in \'%s\'"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    aget-object v0, v2, v0

    aput-object v0, v5, v1

    const/4 v0, 0x1

    aput-object p2, v5, v0

    invoke-static {v3, v4, v5}, Lcom/android/calendarcommon2/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 253
    :cond_0
    return-void

    .line 239
    :cond_1
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_1
    if-ltz v1, :cond_0

    .line 240
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 243
    array-length v0, v3

    add-int/lit8 v0, v0, -0x1

    :goto_2
    if-ltz v0, :cond_2

    .line 244
    aget v4, v3, v0

    if-ne v2, v4, :cond_4

    .line 248
    :cond_2
    if-gez v0, :cond_3

    .line 249
    invoke-interface {p0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 250
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 239
    :cond_3
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_1

    .line 243
    :cond_4
    add-int/lit8 v0, v0, -0x1

    goto :goto_2
.end method

.method public static reminderEntriesToReminders(Ljava/util/List;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/calendar/event/CalendarEventModel$ReminderEntry;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/google/calendar/v2/client/service/api/common/Reminder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 257
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 258
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/event/CalendarEventModel$ReminderEntry;

    .line 259
    invoke-static {v0}, Lcom/android/calendar/event/ReminderUtils;->reminderEntryToReminder(Lcom/android/calendar/event/CalendarEventModel$ReminderEntry;)Lcom/google/calendar/v2/client/service/api/common/Reminder;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 261
    :cond_0
    return-object v1
.end method

.method public static reminderEntryToReminder(Lcom/android/calendar/event/CalendarEventModel$ReminderEntry;)Lcom/google/calendar/v2/client/service/api/common/Reminder;
    .locals 4

    .prologue
    .line 274
    invoke-virtual {p0}, Lcom/android/calendar/event/CalendarEventModel$ReminderEntry;->getMethod()I

    move-result v0

    invoke-static {v0}, Lcom/android/calendar/event/ReminderUtils;->methodToDeliveryMethod(I)Lcom/google/calendar/v2/client/service/api/common/Reminder$DeliveryMethod;

    move-result-object v0

    .line 275
    invoke-virtual {p0}, Lcom/android/calendar/event/CalendarEventModel$ReminderEntry;->getMinutes()I

    move-result v1

    int-to-long v2, v1

    invoke-static {v2, v3}, Lcom/google/calendar/v2/client/service/api/time/Duration;->standardMinutes(J)Lcom/google/calendar/v2/client/service/api/time/Duration;

    move-result-object v1

    .line 276
    new-instance v2, Lcom/google/calendar/v2/client/service/api/common/Reminder;

    invoke-direct {v2, v0, v1}, Lcom/google/calendar/v2/client/service/api/common/Reminder;-><init>(Lcom/google/calendar/v2/client/service/api/common/Reminder$DeliveryMethod;Lcom/google/calendar/v2/client/service/api/time/Duration;)V

    return-object v2
.end method

.method public static reminderToReminderEntry(Lcom/google/calendar/v2/client/service/api/common/Reminder;)Lcom/android/calendar/event/CalendarEventModel$ReminderEntry;
    .locals 2

    .prologue
    .line 280
    .line 281
    invoke-virtual {p0}, Lcom/google/calendar/v2/client/service/api/common/Reminder;->getBefore()Lcom/google/calendar/v2/client/service/api/time/Duration;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/calendar/v2/client/service/api/time/Duration;->toStandardRoundedMinutes()Lcom/google/calendar/v2/client/service/api/time/Period;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/calendar/v2/client/service/api/time/Period;->getMinutes()I

    move-result v0

    .line 282
    invoke-virtual {p0}, Lcom/google/calendar/v2/client/service/api/common/Reminder;->getDeliveryMethod()Lcom/google/calendar/v2/client/service/api/common/Reminder$DeliveryMethod;

    move-result-object v1

    invoke-static {v1}, Lcom/android/calendar/event/ReminderUtils;->deliveryMethodToMethod(Lcom/google/calendar/v2/client/service/api/common/Reminder$DeliveryMethod;)I

    move-result v1

    .line 280
    invoke-static {v0, v1}, Lcom/android/calendar/event/CalendarEventModel$ReminderEntry;->valueOf(II)Lcom/android/calendar/event/CalendarEventModel$ReminderEntry;

    move-result-object v0

    return-object v0
.end method

.method public static remindersToReminderEntries(Ljava/util/List;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/calendar/v2/client/service/api/common/Reminder;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/android/calendar/event/CalendarEventModel$ReminderEntry;",
            ">;"
        }
    .end annotation

    .prologue
    .line 266
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 267
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/calendar/v2/client/service/api/common/Reminder;

    .line 268
    invoke-static {v0}, Lcom/android/calendar/event/ReminderUtils;->reminderToReminderEntry(Lcom/google/calendar/v2/client/service/api/common/Reminder;)Lcom/android/calendar/event/CalendarEventModel$ReminderEntry;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 270
    :cond_0
    return-object v1
.end method


# virtual methods
.method public constructGrooveNotificationLabel(I)Ljava/lang/String;
    .locals 2

    .prologue
    .line 97
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/calendar/event/ReminderUtils;->constructLabel(IIZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public constructLabel(IIZ)Ljava/lang/String;
    .locals 9

    .prologue
    const/4 v8, 0x2

    const/16 v4, 0xc

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 101
    iget-object v0, p0, Lcom/android/calendar/event/ReminderUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 102
    iget-object v0, p0, Lcom/android/calendar/event/ReminderUtils;->mReminderMethodLabels:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 103
    if-nez v0, :cond_1

    .line 104
    iget-object v1, p0, Lcom/android/calendar/event/ReminderUtils;->mNoReminder:Ljava/lang/String;

    .line 171
    :cond_0
    :goto_0
    return-object v1

    .line 110
    :cond_1
    if-eqz p3, :cond_7

    .line 111
    iget-object v1, p0, Lcom/android/calendar/event/ReminderUtils;->mCalendar:Ljava/util/Calendar;

    const/16 v2, 0xb

    invoke-virtual {v1, v2, v6}, Ljava/util/Calendar;->set(II)V

    .line 112
    iget-object v1, p0, Lcom/android/calendar/event/ReminderUtils;->mCalendar:Ljava/util/Calendar;

    invoke-virtual {v1, v4, v6}, Ljava/util/Calendar;->set(II)V

    .line 113
    iget-object v1, p0, Lcom/android/calendar/event/ReminderUtils;->mCalendar:Ljava/util/Calendar;

    neg-int v2, p1

    invoke-virtual {v1, v4, v2}, Ljava/util/Calendar;->add(II)V

    .line 114
    iget-object v1, p0, Lcom/android/calendar/event/ReminderUtils;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 115
    sget-object v1, Lcom/android/calendar/event/ReminderUtils;->HOUR_24_FORMAT:Ljava/lang/String;

    .line 119
    :goto_1
    new-instance v2, Ljava/text/SimpleDateFormat;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    invoke-direct {v2, v1, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 120
    iget-object v1, p0, Lcom/android/calendar/event/ReminderUtils;->mCalendar:Ljava/util/Calendar;

    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    .line 121
    if-gtz p1, :cond_4

    sget v1, Lcom/android/calendar/event/ReminderUtils;->MINUTES_PER_DAY:I

    neg-int v1, v1

    if-le p1, v1, :cond_4

    .line 122
    sget v1, Lcom/android/calendar/R$string;->on_the_day_at:I

    new-array v2, v7, [Ljava/lang/Object;

    aput-object v4, v2, v6

    invoke-virtual {v3, v1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 167
    :goto_2
    iget-object v2, p0, Lcom/android/calendar/event/ReminderUtils;->mReminderMethodLabels:Landroid/util/SparseArray;

    .line 168
    invoke-virtual {v2, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    .line 167
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 171
    sget v2, Lcom/android/calendar/R$string;->reminder_full_item:I

    new-array v4, v8, [Ljava/lang/Object;

    aput-object v1, v4, v6

    aput-object v0, v4, v7

    invoke-virtual {v3, v2, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 116
    :cond_2
    iget-object v1, p0, Lcom/android/calendar/event/ReminderUtils;->mCalendar:Ljava/util/Calendar;

    invoke-virtual {v1, v4}, Ljava/util/Calendar;->get(I)I

    move-result v1

    if-nez v1, :cond_3

    .line 117
    sget-object v1, Lcom/android/calendar/event/ReminderUtils;->HOUR_12_FORMAT:Ljava/lang/String;

    goto :goto_1

    :cond_3
    sget-object v1, Lcom/android/calendar/event/ReminderUtils;->HOUR_MINUTE_12_FORMAT:Ljava/lang/String;

    goto :goto_1

    .line 123
    :cond_4
    sget v1, Lcom/android/calendar/event/ReminderUtils;->MINUTES_PER_DAY:I

    if-gt p1, v1, :cond_5

    .line 124
    sget v1, Lcom/android/calendar/R$string;->the_day_before_at:I

    new-array v2, v7, [Ljava/lang/Object;

    aput-object v4, v2, v6

    invoke-virtual {v3, v1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    .line 134
    :cond_5
    sget v1, Lcom/android/calendar/event/ReminderUtils;->MINUTES_PER_DAY:I

    add-int/2addr v1, p1

    .line 138
    sget v2, Lcom/android/calendar/event/ReminderUtils;->MINUTES_PER_WEEK:I

    if-le v1, v2, :cond_6

    sget v2, Lcom/android/calendar/event/ReminderUtils;->MINUTES_PER_WEEK:I

    rem-int v2, v1, v2

    sget v5, Lcom/android/calendar/event/ReminderUtils;->MINUTES_PER_DAY:I

    if-ge v2, v5, :cond_6

    .line 140
    sget v2, Lcom/android/calendar/event/ReminderUtils;->MINUTES_PER_WEEK:I

    div-int v2, v1, v2

    .line 141
    sget v1, Lcom/android/calendar/R$plurals;->Nweeks:I

    .line 148
    :goto_3
    invoke-virtual {v3, v1, v2}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v1

    .line 149
    new-array v5, v7, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v5, v6

    invoke-static {v1, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 150
    sget v2, Lcom/android/calendar/R$string;->all_day_reminder_time:I

    new-array v5, v8, [Ljava/lang/Object;

    aput-object v1, v5, v6

    aput-object v4, v5, v7

    invoke-virtual {v3, v2, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    .line 145
    :cond_6
    sget v2, Lcom/android/calendar/event/ReminderUtils;->MINUTES_PER_DAY:I

    div-int v2, v1, v2

    .line 146
    sget v1, Lcom/android/calendar/R$plurals;->Ndays:I

    goto :goto_3

    .line 156
    :cond_7
    if-nez p1, :cond_8

    .line 157
    sget v1, Lcom/android/calendar/R$string;->at_time_of_event:I

    invoke-virtual {v3, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    .line 158
    :cond_8
    if-gez p1, :cond_9

    .line 159
    iget-object v1, p0, Lcom/android/calendar/event/ReminderUtils;->mNoReminder:Ljava/lang/String;

    goto/16 :goto_0

    .line 161
    :cond_9
    sget v1, Lcom/android/calendar/R$string;->timed_reminder_time:I

    new-array v2, v7, [Ljava/lang/Object;

    .line 162
    invoke-static {v3, p1}, Lcom/android/calendar/event/ReminderUtils;->constructTimeIntervalString(Landroid/content/res/Resources;I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v6

    .line 161
    invoke-virtual {v3, v1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_2
.end method

.method public constructLabel(Lcom/google/calendar/v2/client/service/api/common/Reminder;Z)Ljava/lang/String;
    .locals 2

    .prologue
    .line 90
    invoke-virtual {p1}, Lcom/google/calendar/v2/client/service/api/common/Reminder;->getBefore()Lcom/google/calendar/v2/client/service/api/time/Duration;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/calendar/v2/client/service/api/time/Duration;->toStandardRoundedMinutes()Lcom/google/calendar/v2/client/service/api/time/Period;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/calendar/v2/client/service/api/time/Period;->getMinutes()I

    move-result v0

    .line 91
    invoke-virtual {p1}, Lcom/google/calendar/v2/client/service/api/common/Reminder;->getDeliveryMethod()Lcom/google/calendar/v2/client/service/api/common/Reminder$DeliveryMethod;

    move-result-object v1

    invoke-static {v1}, Lcom/android/calendar/event/ReminderUtils;->deliveryMethodToMethod(Lcom/google/calendar/v2/client/service/api/common/Reminder$DeliveryMethod;)I

    move-result v1

    .line 90
    invoke-virtual {p0, v0, v1, p2}, Lcom/android/calendar/event/ReminderUtils;->constructLabel(IIZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public constructNotificationLabel(Lcom/android/calendar/event/CalendarEventModel$ReminderEntry;Z)Ljava/lang/String;
    .locals 2

    .prologue
    .line 86
    invoke-virtual {p1}, Lcom/android/calendar/event/CalendarEventModel$ReminderEntry;->getMinutes()I

    move-result v0

    invoke-virtual {p1}, Lcom/android/calendar/event/CalendarEventModel$ReminderEntry;->getMethod()I

    move-result v1

    invoke-virtual {p0, v0, v1, p2}, Lcom/android/calendar/event/ReminderUtils;->constructLabel(IIZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
