.class public Lcom/google/android/gms/internal/zzur;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/reminders/RemindersApi;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/zzur$zzb;
    }
.end annotation


# static fields
.field private static final zzbze:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/16 v0, 0xf

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "/"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, " "

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "("

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, ")"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "{"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "}"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "&"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "|"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "\""

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "\t"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "\r"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "\n"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "\u0000"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "."

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "-"

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/gms/internal/zzur;->zzbze:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static zza(Lcom/google/android/gms/reminders/model/DateTime;)V
    .locals 6

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-interface {p0}, Lcom/google/android/gms/reminders/model/DateTime;->getYear()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-interface {p0}, Lcom/google/android/gms/reminders/model/DateTime;->getMonth()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-interface {p0}, Lcom/google/android/gms/reminders/model/DateTime;->getDay()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_5

    move v3, v2

    :goto_0
    if-nez v3, :cond_0

    invoke-interface {p0}, Lcom/google/android/gms/reminders/model/DateTime;->getYear()Ljava/lang/Integer;

    move-result-object v0

    if-nez v0, :cond_6

    invoke-interface {p0}, Lcom/google/android/gms/reminders/model/DateTime;->getMonth()Ljava/lang/Integer;

    move-result-object v0

    if-nez v0, :cond_6

    invoke-interface {p0}, Lcom/google/android/gms/reminders/model/DateTime;->getDay()Ljava/lang/Integer;

    move-result-object v0

    if-nez v0, :cond_6

    :cond_0
    move v0, v2

    :goto_1
    const-string v4, "Invalid DateTime, year/month/day must all be set or unset together."

    invoke-static {v0, v4}, Lcom/google/android/gms/common/internal/zzx;->zzb(ZLjava/lang/Object;)V

    if-eqz v3, :cond_1

    invoke-interface {p0}, Lcom/google/android/gms/reminders/model/DateTime;->getMonth()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-lt v0, v2, :cond_7

    invoke-interface {p0}, Lcom/google/android/gms/reminders/model/DateTime;->getMonth()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v4, 0xc

    if-gt v0, v4, :cond_7

    move v0, v2

    :goto_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid month "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {p0}, Lcom/google/android/gms/reminders/model/DateTime;->getMonth()Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", should be in range [1, 12]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/google/android/gms/common/internal/zzx;->zzb(ZLjava/lang/Object;)V

    invoke-interface {p0}, Lcom/google/android/gms/reminders/model/DateTime;->getDay()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-lt v0, v2, :cond_8

    move v0, v2

    :goto_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid day "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {p0}, Lcom/google/android/gms/reminders/model/DateTime;->getDay()Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", should be >=1"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/google/android/gms/common/internal/zzx;->zzb(ZLjava/lang/Object;)V

    :cond_1
    invoke-interface {p0}, Lcom/google/android/gms/reminders/model/DateTime;->getAbsoluteTimeMs()Ljava/lang/Long;

    move-result-object v0

    if-nez v0, :cond_2

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {p0}, Lcom/google/android/gms/reminders/model/DateTime;->getUnspecifiedFutureTime()Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    if-eqz v3, :cond_9

    :cond_2
    move v0, v2

    :goto_4
    const-string v4, "Invalid DateTime, must either contain an absolute time, a year/month/day, or be set to an unspecified future time."

    invoke-static {v0, v4}, Lcom/google/android/gms/common/internal/zzx;->zzb(ZLjava/lang/Object;)V

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {p0}, Lcom/google/android/gms/reminders/model/DateTime;->getUnspecifiedFutureTime()Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p0}, Lcom/google/android/gms/reminders/model/DateTime;->getAbsoluteTimeMs()Ljava/lang/Long;

    move-result-object v0

    if-nez v0, :cond_4

    if-nez v3, :cond_4

    :cond_3
    move v1, v2

    :cond_4
    const-string v0, "Invalid DateTime, unspecified_future_time cannot be set together with absolute_time or year/month/day"

    invoke-static {v1, v0}, Lcom/google/android/gms/common/internal/zzx;->zzb(ZLjava/lang/Object;)V

    invoke-interface {p0}, Lcom/google/android/gms/reminders/model/DateTime;->getTime()Lcom/google/android/gms/reminders/model/Time;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/zzur;->zzb(Lcom/google/android/gms/reminders/model/Time;)V

    return-void

    :cond_5
    move v3, v1

    goto/16 :goto_0

    :cond_6
    move v0, v1

    goto/16 :goto_1

    :cond_7
    move v0, v1

    goto/16 :goto_2

    :cond_8
    move v0, v1

    goto :goto_3

    :cond_9
    move v0, v1

    goto :goto_4
.end method

.method private static zza(Lcom/google/android/gms/reminders/model/Location;)V
    .locals 2

    if-nez p0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-interface {p0}, Lcom/google/android/gms/reminders/model/Location;->getLocationType()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Lcom/google/android/gms/reminders/model/Location;->getLat()Ljava/lang/Double;

    move-result-object v0

    if-nez v0, :cond_2

    invoke-interface {p0}, Lcom/google/android/gms/reminders/model/Location;->getLng()Ljava/lang/Double;

    move-result-object v0

    if-nez v0, :cond_2

    invoke-interface {p0}, Lcom/google/android/gms/reminders/model/Location;->getDisplayAddress()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    invoke-interface {p0}, Lcom/google/android/gms/reminders/model/Location;->getGeoFeatureId()Lcom/google/android/gms/reminders/model/FeatureIdProto;

    move-result-object v0

    if-nez v0, :cond_2

    const/4 v0, 0x1

    :goto_1
    const-string v1, "If providing a locationType you cannot provide lat/lng, address, or any other location identifying attributes."

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/zzx;->zzb(ZLjava/lang/Object;)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private static zza(Lcom/google/android/gms/reminders/model/Recurrence;)V
    .locals 5

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-interface {p0}, Lcom/google/android/gms/reminders/model/Recurrence;->getFrequency()Ljava/lang/Integer;

    move-result-object v0

    const-string v3, "Must provide Recurrence.frequency on create"

    invoke-static {v0, v3}, Lcom/google/android/gms/common/internal/zzx;->zzb(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {p0}, Lcom/google/android/gms/reminders/model/Recurrence;->getRecurrenceStart()Lcom/google/android/gms/reminders/model/RecurrenceStart;

    move-result-object v0

    const-string v3, "Must provide Recurrence.recurrence_start on create"

    invoke-static {v0, v3}, Lcom/google/android/gms/common/internal/zzx;->zzb(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {p0}, Lcom/google/android/gms/reminders/model/Recurrence;->getRecurrenceStart()Lcom/google/android/gms/reminders/model/RecurrenceStart;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/reminders/model/RecurrenceStart;->getStartDateTime()Lcom/google/android/gms/reminders/model/DateTime;

    move-result-object v0

    const-string v3, "Must provide RecurrenceStart.start_date_time on create"

    invoke-static {v0, v3}, Lcom/google/android/gms/common/internal/zzx;->zzb(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {p0}, Lcom/google/android/gms/reminders/model/Recurrence;->getRecurrenceStart()Lcom/google/android/gms/reminders/model/RecurrenceStart;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/reminders/model/RecurrenceStart;->getStartDateTime()Lcom/google/android/gms/reminders/model/DateTime;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/zzur;->zza(Lcom/google/android/gms/reminders/model/DateTime;)V

    invoke-interface {p0}, Lcom/google/android/gms/reminders/model/Recurrence;->getRecurrenceEnd()Lcom/google/android/gms/reminders/model/RecurrenceEnd;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Lcom/google/android/gms/reminders/model/Recurrence;->getRecurrenceEnd()Lcom/google/android/gms/reminders/model/RecurrenceEnd;

    move-result-object v3

    invoke-interface {v3}, Lcom/google/android/gms/reminders/model/RecurrenceEnd;->getAutoRenew()Ljava/lang/Boolean;

    move-result-object v0

    if-nez v0, :cond_1

    move v0, v1

    :goto_0
    const-string v4, "RecurrenceEnd.auto_renew is readonly"

    invoke-static {v0, v4}, Lcom/google/android/gms/common/internal/zzx;->zzb(ZLjava/lang/Object;)V

    invoke-interface {v3}, Lcom/google/android/gms/reminders/model/RecurrenceEnd;->getAutoRenewUntil()Lcom/google/android/gms/reminders/model/DateTime;

    move-result-object v0

    if-nez v0, :cond_2

    move v0, v1

    :goto_1
    const-string v4, "RecurrenceEnd.auto_renew_until is readonly"

    invoke-static {v0, v4}, Lcom/google/android/gms/common/internal/zzx;->zzb(ZLjava/lang/Object;)V

    invoke-interface {v3}, Lcom/google/android/gms/reminders/model/RecurrenceEnd;->getNumOccurrences()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-interface {v3}, Lcom/google/android/gms/reminders/model/RecurrenceEnd;->getNumOccurrences()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v3, 0x3e8

    if-gt v0, v3, :cond_3

    :goto_2
    const-string v0, "RecurrenceEnd.num_occurrences must be <= 1000"

    invoke-static {v1, v0}, Lcom/google/android/gms/common/internal/zzx;->zzb(ZLjava/lang/Object;)V

    :cond_0
    :goto_3
    return-void

    :cond_1
    move v0, v2

    goto :goto_0

    :cond_2
    move v0, v2

    goto :goto_1

    :cond_3
    move v1, v2

    goto :goto_2

    :cond_4
    invoke-interface {v3}, Lcom/google/android/gms/reminders/model/RecurrenceEnd;->getEndDateTime()Lcom/google/android/gms/reminders/model/DateTime;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Lcom/google/android/gms/reminders/model/RecurrenceEnd;->getEndDateTime()Lcom/google/android/gms/reminders/model/DateTime;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/zzur;->zza(Lcom/google/android/gms/reminders/model/DateTime;)V

    goto :goto_3
.end method

.method private static zza(Lcom/google/android/gms/reminders/model/Task;)V
    .locals 4

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-interface {p0}, Lcom/google/android/gms/reminders/model/Task;->getDueDate()Lcom/google/android/gms/reminders/model/DateTime;

    move-result-object v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    const-string v3, "task.due_date is determined by recurrence and should not be set"

    invoke-static {v0, v3}, Lcom/google/android/gms/common/internal/zzx;->zzb(ZLjava/lang/Object;)V

    invoke-interface {p0}, Lcom/google/android/gms/reminders/model/Task;->getTaskId()Lcom/google/android/gms/reminders/model/TaskId;

    move-result-object v0

    if-nez v0, :cond_1

    move v0, v1

    :goto_1
    const-string v3, "task.task_id field is readonly"

    invoke-static {v0, v3}, Lcom/google/android/gms/common/internal/zzx;->zzb(ZLjava/lang/Object;)V

    invoke-interface {p0}, Lcom/google/android/gms/reminders/model/Task;->getRecurrenceInfo()Lcom/google/android/gms/reminders/model/RecurrenceInfo;

    move-result-object v0

    if-nez v0, :cond_2

    move v0, v1

    :goto_2
    const-string v3, "task.recurrence_info field is readonly"

    invoke-static {v0, v3}, Lcom/google/android/gms/common/internal/zzx;->zzb(ZLjava/lang/Object;)V

    invoke-interface {p0}, Lcom/google/android/gms/reminders/model/Task;->getLocation()Lcom/google/android/gms/reminders/model/Location;

    move-result-object v0

    if-nez v0, :cond_3

    :goto_3
    const-string v0, "task.location not supported for recurrences."

    invoke-static {v1, v0}, Lcom/google/android/gms/common/internal/zzx;->zzb(ZLjava/lang/Object;)V

    return-void

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_1

    :cond_2
    move v0, v2

    goto :goto_2

    :cond_3
    move v1, v2

    goto :goto_3
.end method

.method private static zzb(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/Object;)Lcom/google/android/gms/internal/zzmo;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/common/api/GoogleApiClient;",
            "TT;)",
            "Lcom/google/android/gms/internal/zzmo",
            "<TT;>;"
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/android/gms/common/api/GoogleApiClient;->zzr(Ljava/lang/Object;)Lcom/google/android/gms/internal/zzmo;

    move-result-object v0

    goto :goto_0
.end method

.method private static zzb(Lcom/google/android/gms/reminders/model/Task;)Lcom/google/android/gms/reminders/model/Task;
    .locals 3

    const/4 v2, 0x0

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {p0}, Lcom/google/android/gms/reminders/model/Task;->getSnoozed()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {p0}, Lcom/google/android/gms/reminders/model/Task;->getPinned()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {p0}, Lcom/google/android/gms/reminders/model/Task;->getArchived()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {p0}, Lcom/google/android/gms/reminders/model/Task;->getDeleted()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    new-instance v0, Lcom/google/android/gms/reminders/model/Task$Builder;

    invoke-direct {v0, p0}, Lcom/google/android/gms/reminders/model/Task$Builder;-><init>(Lcom/google/android/gms/reminders/model/Task;)V

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/reminders/model/Task$Builder;->setArchived(Ljava/lang/Boolean;)Lcom/google/android/gms/reminders/model/Task$Builder;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/reminders/model/Task$Builder;->setDeleted(Ljava/lang/Boolean;)Lcom/google/android/gms/reminders/model/Task$Builder;

    invoke-virtual {v0}, Lcom/google/android/gms/reminders/model/Task$Builder;->build()Lcom/google/android/gms/reminders/model/Task;

    move-result-object p0

    :cond_2
    return-object p0
.end method

.method private static zzb(Lcom/google/android/gms/reminders/model/Time;)V
    .locals 6

    const/16 v5, 0x3c

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez p0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-interface {p0}, Lcom/google/android/gms/reminders/model/Time;->getHour()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ltz v0, :cond_1

    invoke-interface {p0}, Lcom/google/android/gms/reminders/model/Time;->getHour()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v3, 0x18

    if-ge v0, v3, :cond_1

    move v0, v1

    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid hour:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {p0}, Lcom/google/android/gms/reminders/model/Time;->getHour()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/google/android/gms/common/internal/zzx;->zzb(ZLjava/lang/Object;)V

    invoke-interface {p0}, Lcom/google/android/gms/reminders/model/Time;->getMinute()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ltz v0, :cond_2

    invoke-interface {p0}, Lcom/google/android/gms/reminders/model/Time;->getMinute()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ge v0, v5, :cond_2

    move v0, v1

    :goto_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid minute:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {p0}, Lcom/google/android/gms/reminders/model/Time;->getMinute()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/google/android/gms/common/internal/zzx;->zzb(ZLjava/lang/Object;)V

    invoke-interface {p0}, Lcom/google/android/gms/reminders/model/Time;->getSecond()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ltz v0, :cond_3

    invoke-interface {p0}, Lcom/google/android/gms/reminders/model/Time;->getSecond()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ge v0, v5, :cond_3

    :goto_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid second:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {p0}, Lcom/google/android/gms/reminders/model/Time;->getSecond()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/google/android/gms/common/internal/zzx;->zzb(ZLjava/lang/Object;)V

    goto/16 :goto_0

    :cond_1
    move v0, v2

    goto :goto_1

    :cond_2
    move v0, v2

    goto :goto_2

    :cond_3
    move v1, v2

    goto :goto_3
.end method

.method static synthetic zzc(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/Object;)Lcom/google/android/gms/internal/zzmo;
    .locals 1

    invoke-static {p0, p1}, Lcom/google/android/gms/internal/zzur;->zzb(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/Object;)Lcom/google/android/gms/internal/zzmo;

    move-result-object v0

    return-object v0
.end method

.method private static zzgR(Ljava/lang/String;)V
    .locals 9

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    const-string v3, "empty recurrence id"

    invoke-static {v0, v3}, Lcom/google/android/gms/common/internal/zzx;->zzb(ZLjava/lang/Object;)V

    sget-object v4, Lcom/google/android/gms/internal/zzur;->zzbze:[Ljava/lang/String;

    array-length v5, v4

    move v3, v2

    :goto_1
    if-ge v3, v5, :cond_2

    aget-object v6, v4, v3

    invoke-virtual {p0, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    :goto_2
    const-string v7, "recurrence id must not contain %s"

    new-array v8, v1, [Ljava/lang/Object;

    aput-object v6, v8, v2

    invoke-static {v0, v7, v8}, Lcom/google/android/gms/common/internal/zzx;->zzb(ZLjava/lang/String;[Ljava/lang/Object;)V

    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_1

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_2

    :cond_2
    return-void
.end method


# virtual methods
.method public batchUpdateReminder(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/util/List;)Lcom/google/android/gms/common/api/PendingResult;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/GoogleApiClient;",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/reminders/model/Task;",
            ">;)",
            "Lcom/google/android/gms/common/api/PendingResult",
            "<",
            "Lcom/google/android/gms/common/api/Status;",
            ">;"
        }
    .end annotation

    const-string v0, "New tasks required on update."

    invoke-static {p2, v0}, Lcom/google/android/gms/common/internal/zzx;->zzb(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/reminders/model/Task;

    const-string v1, "New task required on update."

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/zzx;->zzb(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v0}, Lcom/google/android/gms/reminders/model/Task;->getTaskId()Lcom/google/android/gms/reminders/model/TaskId;

    move-result-object v1

    const-string v4, "Task id required on update."

    invoke-static {v1, v4}, Lcom/google/android/gms/common/internal/zzx;->zzb(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v0}, Lcom/google/android/gms/reminders/model/Task;->getLocation()Lcom/google/android/gms/reminders/model/Location;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Lcom/google/android/gms/reminders/model/Task;->getLocation()Lcom/google/android/gms/reminders/model/Location;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/internal/zzur;->zza(Lcom/google/android/gms/reminders/model/Location;)V

    :cond_0
    invoke-interface {v0}, Lcom/google/android/gms/reminders/model/Task;->getDueDate()Lcom/google/android/gms/reminders/model/DateTime;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Lcom/google/android/gms/reminders/model/Task;->getDueDate()Lcom/google/android/gms/reminders/model/DateTime;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/internal/zzur;->zza(Lcom/google/android/gms/reminders/model/DateTime;)V

    invoke-interface {v0}, Lcom/google/android/gms/reminders/model/Task;->getLocation()Lcom/google/android/gms/reminders/model/Location;

    move-result-object v1

    if-nez v1, :cond_2

    invoke-interface {v0}, Lcom/google/android/gms/reminders/model/Task;->getLocationGroup()Lcom/google/android/gms/reminders/model/LocationGroup;

    move-result-object v1

    if-nez v1, :cond_2

    const/4 v1, 0x1

    :goto_1
    const-string v4, "Cannot snooze to both location and time."

    invoke-static {v1, v4}, Lcom/google/android/gms/common/internal/zzx;->zzb(ZLjava/lang/Object;)V

    :cond_1
    invoke-static {v0}, Lcom/google/android/gms/internal/zzur;->zzb(Lcom/google/android/gms/reminders/model/Task;)Lcom/google/android/gms/reminders/model/Task;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    goto :goto_1

    :cond_3
    new-instance v0, Lcom/google/android/gms/internal/zzur$14;

    invoke-direct {v0, p0, p1, v2}, Lcom/google/android/gms/internal/zzur$14;-><init>(Lcom/google/android/gms/internal/zzur;Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/util/List;)V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->zza(Lcom/google/android/gms/internal/zzmc$zza;)Lcom/google/android/gms/internal/zzmc$zza;

    move-result-object v0

    return-object v0
.end method

.method public changeRecurrence(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/reminders/model/Recurrence;Lcom/google/android/gms/reminders/model/Task;Lcom/google/android/gms/reminders/UpdateRecurrenceOptions;)Lcom/google/android/gms/common/api/PendingResult;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/GoogleApiClient;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/reminders/model/Recurrence;",
            "Lcom/google/android/gms/reminders/model/Task;",
            "Lcom/google/android/gms/reminders/UpdateRecurrenceOptions;",
            ")",
            "Lcom/google/android/gms/common/api/PendingResult",
            "<",
            "Lcom/google/android/gms/common/api/Status;",
            ">;"
        }
    .end annotation

    const/4 v2, 0x1

    const/4 v1, 0x0

    const-string v0, "new_recurrence required"

    invoke-static {p4, v0}, Lcom/google/android/gms/common/internal/zzx;->zzb(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "task required"

    invoke-static {p5, v0}, Lcom/google/android/gms/common/internal/zzx;->zzb(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {p5}, Lcom/google/android/gms/reminders/model/Task;->getDeleted()Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {p5}, Lcom/google/android/gms/reminders/model/Task;->getDeleted()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    move v0, v2

    :goto_0
    const-string v3, "task.deleted field is readonly"

    invoke-static {v0, v3}, Lcom/google/android/gms/common/internal/zzx;->zzb(ZLjava/lang/Object;)V

    invoke-static {p2, p3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    :goto_1
    const-string v0, "new recurrenceId must be different than existing recurrenceId"

    invoke-static {v2, v0}, Lcom/google/android/gms/common/internal/zzx;->zzb(ZLjava/lang/Object;)V

    invoke-interface {p5}, Lcom/google/android/gms/reminders/model/Task;->getTaskList()Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "Must set task list"

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/zzx;->zzb(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "updateRecurrenceOption required"

    invoke-static {p6, v0}, Lcom/google/android/gms/common/internal/zzx;->zzb(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p2}, Lcom/google/android/gms/internal/zzur;->zzgR(Ljava/lang/String;)V

    invoke-static {p3}, Lcom/google/android/gms/internal/zzur;->zzgR(Ljava/lang/String;)V

    invoke-static {p4}, Lcom/google/android/gms/internal/zzur;->zza(Lcom/google/android/gms/reminders/model/Recurrence;)V

    invoke-static {p5}, Lcom/google/android/gms/internal/zzur;->zza(Lcom/google/android/gms/reminders/model/Task;)V

    new-instance v0, Lcom/google/android/gms/reminders/model/Task$Builder;

    invoke-direct {v0, p5}, Lcom/google/android/gms/reminders/model/Task$Builder;-><init>(Lcom/google/android/gms/reminders/model/Task;)V

    new-instance v1, Lcom/google/android/gms/reminders/model/RecurrenceInfo$Builder;

    invoke-direct {v1}, Lcom/google/android/gms/reminders/model/RecurrenceInfo$Builder;-><init>()V

    invoke-virtual {v1, p3}, Lcom/google/android/gms/reminders/model/RecurrenceInfo$Builder;->setRecurrenceId(Ljava/lang/String;)Lcom/google/android/gms/reminders/model/RecurrenceInfo$Builder;

    move-result-object v1

    invoke-virtual {v1, p4}, Lcom/google/android/gms/reminders/model/RecurrenceInfo$Builder;->setRecurrence(Lcom/google/android/gms/reminders/model/Recurrence;)Lcom/google/android/gms/reminders/model/RecurrenceInfo$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/reminders/model/RecurrenceInfo$Builder;->build()Lcom/google/android/gms/reminders/model/RecurrenceInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/reminders/model/Task$Builder;->setRecurrenceInfo(Lcom/google/android/gms/reminders/model/RecurrenceInfo;)Lcom/google/android/gms/reminders/model/Task$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/reminders/model/Task$Builder;->build()Lcom/google/android/gms/reminders/model/Task;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/zzur;->zzb(Lcom/google/android/gms/reminders/model/Task;)Lcom/google/android/gms/reminders/model/Task;

    move-result-object v4

    new-instance v0, Lcom/google/android/gms/internal/zzur$3;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v5, p6

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/zzur$3;-><init>(Lcom/google/android/gms/internal/zzur;Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;Lcom/google/android/gms/reminders/model/Task;Lcom/google/android/gms/reminders/UpdateRecurrenceOptions;)V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->zza(Lcom/google/android/gms/internal/zzmc$zza;)Lcom/google/android/gms/internal/zzmc$zza;

    move-result-object v0

    return-object v0

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    move v2, v1

    goto :goto_1
.end method

.method public createRecurrence(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;Lcom/google/android/gms/reminders/model/Recurrence;Lcom/google/android/gms/reminders/model/Task;)Lcom/google/android/gms/common/api/PendingResult;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/GoogleApiClient;",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/reminders/model/Recurrence;",
            "Lcom/google/android/gms/reminders/model/Task;",
            ")",
            "Lcom/google/android/gms/common/api/PendingResult",
            "<",
            "Lcom/google/android/gms/common/api/Status;",
            ">;"
        }
    .end annotation

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {p2}, Lcom/google/android/gms/common/util/zzr;->zzco(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    const-string v3, "Must provide recurrenceId on create"

    invoke-static {v0, v3}, Lcom/google/android/gms/common/internal/zzx;->zzb(ZLjava/lang/Object;)V

    const-string v0, "Must provide recurrence rule on create."

    invoke-static {p3, v0}, Lcom/google/android/gms/common/internal/zzx;->zzb(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "Must provide reminder template on create."

    invoke-static {p4, v0}, Lcom/google/android/gms/common/internal/zzx;->zzb(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {p4}, Lcom/google/android/gms/reminders/model/Task;->getTaskList()Ljava/lang/Integer;

    move-result-object v0

    const-string v3, "Must provide task list on create"

    invoke-static {v0, v3}, Lcom/google/android/gms/common/internal/zzx;->zzb(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {p4}, Lcom/google/android/gms/reminders/model/Task;->getDeleted()Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    :goto_1
    const-string v3, "Task.deleted field is readonly."

    invoke-static {v0, v3}, Lcom/google/android/gms/common/internal/zzx;->zzb(ZLjava/lang/Object;)V

    invoke-interface {p4}, Lcom/google/android/gms/reminders/model/Task;->getDueDate()Lcom/google/android/gms/reminders/model/DateTime;

    move-result-object v0

    if-nez v0, :cond_2

    move v0, v1

    :goto_2
    const-string v3, "Cannot set due_date on recurring reminder"

    invoke-static {v0, v3}, Lcom/google/android/gms/common/internal/zzx;->zzb(ZLjava/lang/Object;)V

    invoke-interface {p4}, Lcom/google/android/gms/reminders/model/Task;->getLocation()Lcom/google/android/gms/reminders/model/Location;

    move-result-object v0

    if-nez v0, :cond_3

    :goto_3
    const-string v0, "Cannot set location on recurring reminder"

    invoke-static {v1, v0}, Lcom/google/android/gms/common/internal/zzx;->zzb(ZLjava/lang/Object;)V

    invoke-static {p2}, Lcom/google/android/gms/internal/zzur;->zzgR(Ljava/lang/String;)V

    invoke-static {p3}, Lcom/google/android/gms/internal/zzur;->zza(Lcom/google/android/gms/reminders/model/Recurrence;)V

    invoke-static {p4}, Lcom/google/android/gms/internal/zzur;->zza(Lcom/google/android/gms/reminders/model/Task;)V

    new-instance v0, Lcom/google/android/gms/reminders/model/Task$Builder;

    invoke-direct {v0, p4}, Lcom/google/android/gms/reminders/model/Task$Builder;-><init>(Lcom/google/android/gms/reminders/model/Task;)V

    new-instance v1, Lcom/google/android/gms/reminders/model/RecurrenceInfo$Builder;

    invoke-direct {v1}, Lcom/google/android/gms/reminders/model/RecurrenceInfo$Builder;-><init>()V

    invoke-virtual {v1, p2}, Lcom/google/android/gms/reminders/model/RecurrenceInfo$Builder;->setRecurrenceId(Ljava/lang/String;)Lcom/google/android/gms/reminders/model/RecurrenceInfo$Builder;

    move-result-object v1

    invoke-virtual {v1, p3}, Lcom/google/android/gms/reminders/model/RecurrenceInfo$Builder;->setRecurrence(Lcom/google/android/gms/reminders/model/Recurrence;)Lcom/google/android/gms/reminders/model/RecurrenceInfo$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/reminders/model/RecurrenceInfo$Builder;->build()Lcom/google/android/gms/reminders/model/RecurrenceInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/reminders/model/Task$Builder;->setRecurrenceInfo(Lcom/google/android/gms/reminders/model/RecurrenceInfo;)Lcom/google/android/gms/reminders/model/Task$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/reminders/model/Task$Builder;->build()Lcom/google/android/gms/reminders/model/Task;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/zzur;->zzb(Lcom/google/android/gms/reminders/model/Task;)Lcom/google/android/gms/reminders/model/Task;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/zzur$18;

    invoke-direct {v1, p0, p1, v0}, Lcom/google/android/gms/internal/zzur$18;-><init>(Lcom/google/android/gms/internal/zzur;Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/reminders/model/Task;)V

    invoke-virtual {p1, v1}, Lcom/google/android/gms/common/api/GoogleApiClient;->zza(Lcom/google/android/gms/internal/zzmc$zza;)Lcom/google/android/gms/internal/zzmc$zza;

    move-result-object v0

    return-object v0

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_1

    :cond_2
    move v0, v2

    goto :goto_2

    :cond_3
    move v1, v2

    goto :goto_3
.end method

.method public createReminder(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/reminders/model/Task;)Lcom/google/android/gms/common/api/PendingResult;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/GoogleApiClient;",
            "Lcom/google/android/gms/reminders/model/Task;",
            ")",
            "Lcom/google/android/gms/common/api/PendingResult",
            "<",
            "Lcom/google/android/gms/common/api/Status;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/google/android/gms/internal/zzur;->createReminder(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/reminders/model/Task;Lcom/google/android/gms/reminders/CreateReminderOptions;)Lcom/google/android/gms/common/api/PendingResult;

    move-result-object v0

    return-object v0
.end method

.method public createReminder(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/reminders/model/Task;Lcom/google/android/gms/reminders/CreateReminderOptions;)Lcom/google/android/gms/common/api/PendingResult;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/GoogleApiClient;",
            "Lcom/google/android/gms/reminders/model/Task;",
            "Lcom/google/android/gms/reminders/CreateReminderOptions;",
            ")",
            "Lcom/google/android/gms/common/api/PendingResult",
            "<",
            "Lcom/google/android/gms/common/api/Status;",
            ">;"
        }
    .end annotation

    const/4 v1, 0x1

    const/4 v2, 0x0

    const-string v0, "Must provide task on create."

    invoke-static {p2, v0}, Lcom/google/android/gms/common/internal/zzx;->zzb(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {p2}, Lcom/google/android/gms/reminders/model/Task;->getTaskList()Ljava/lang/Integer;

    move-result-object v0

    const-string v3, "Must provide task list on create"

    invoke-static {v0, v3}, Lcom/google/android/gms/common/internal/zzx;->zzb(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {p2}, Lcom/google/android/gms/reminders/model/Task;->getDeleted()Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    :goto_0
    const-string v3, "Task.deleted field is readonly."

    invoke-static {v0, v3}, Lcom/google/android/gms/common/internal/zzx;->zzb(ZLjava/lang/Object;)V

    invoke-interface {p2}, Lcom/google/android/gms/reminders/model/Task;->getRecurrenceInfo()Lcom/google/android/gms/reminders/model/RecurrenceInfo;

    move-result-object v0

    if-nez v0, :cond_2

    move v0, v1

    :goto_1
    const-string v3, "Task recurrence info field is readonly."

    invoke-static {v0, v3}, Lcom/google/android/gms/common/internal/zzx;->zzb(ZLjava/lang/Object;)V

    invoke-interface {p2}, Lcom/google/android/gms/reminders/model/Task;->getDueDate()Lcom/google/android/gms/reminders/model/DateTime;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {p2}, Lcom/google/android/gms/reminders/model/Task;->getDueDate()Lcom/google/android/gms/reminders/model/DateTime;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/zzur;->zza(Lcom/google/android/gms/reminders/model/DateTime;)V

    invoke-interface {p2}, Lcom/google/android/gms/reminders/model/Task;->getLocation()Lcom/google/android/gms/reminders/model/Location;

    move-result-object v0

    if-nez v0, :cond_3

    invoke-interface {p2}, Lcom/google/android/gms/reminders/model/Task;->getLocationGroup()Lcom/google/android/gms/reminders/model/LocationGroup;

    move-result-object v0

    if-nez v0, :cond_3

    :goto_2
    const-string v0, "Cannot snooze to both location and time."

    invoke-static {v1, v0}, Lcom/google/android/gms/common/internal/zzx;->zzb(ZLjava/lang/Object;)V

    :cond_0
    invoke-interface {p2}, Lcom/google/android/gms/reminders/model/Task;->getLocation()Lcom/google/android/gms/reminders/model/Location;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/zzur;->zza(Lcom/google/android/gms/reminders/model/Location;)V

    invoke-static {p2}, Lcom/google/android/gms/internal/zzur;->zzb(Lcom/google/android/gms/reminders/model/Task;)Lcom/google/android/gms/reminders/model/Task;

    move-result-object v4

    new-instance v0, Lcom/google/android/gms/internal/zzur$13;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p3

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/zzur$13;-><init>(Lcom/google/android/gms/internal/zzur;Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/reminders/CreateReminderOptions;Lcom/google/android/gms/reminders/model/Task;Lcom/google/android/gms/common/api/GoogleApiClient;)V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->zza(Lcom/google/android/gms/internal/zzmc$zza;)Lcom/google/android/gms/internal/zzmc$zza;

    move-result-object v0

    return-object v0

    :cond_1
    move v0, v2

    goto :goto_0

    :cond_2
    move v0, v2

    goto :goto_1

    :cond_3
    move v1, v2

    goto :goto_2
.end method

.method public deleteRecurrence(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;Lcom/google/android/gms/reminders/UpdateRecurrenceOptions;)Lcom/google/android/gms/common/api/PendingResult;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/GoogleApiClient;",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/reminders/UpdateRecurrenceOptions;",
            ")",
            "Lcom/google/android/gms/common/api/PendingResult",
            "<",
            "Lcom/google/android/gms/common/api/Status;",
            ">;"
        }
    .end annotation

    const-string v0, "Must provide client-assigned recurrence id."

    invoke-static {p2, v0}, Lcom/google/android/gms/common/internal/zzx;->zzb(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "updateRecurrenceOption required"

    invoke-static {p3, v0}, Lcom/google/android/gms/common/internal/zzx;->zzb(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/google/android/gms/internal/zzur$2;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/google/android/gms/internal/zzur$2;-><init>(Lcom/google/android/gms/internal/zzur;Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;Lcom/google/android/gms/reminders/UpdateRecurrenceOptions;)V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->zza(Lcom/google/android/gms/internal/zzmc$zza;)Lcom/google/android/gms/internal/zzmc$zza;

    move-result-object v0

    return-object v0
.end method

.method public deleteReminder(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/reminders/model/TaskId;)Lcom/google/android/gms/common/api/PendingResult;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/GoogleApiClient;",
            "Lcom/google/android/gms/reminders/model/TaskId;",
            ")",
            "Lcom/google/android/gms/common/api/PendingResult",
            "<",
            "Lcom/google/android/gms/common/api/Status;",
            ">;"
        }
    .end annotation

    const-string v0, "Task id required on delete."

    invoke-static {p2, v0}, Lcom/google/android/gms/common/internal/zzx;->zzb(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/google/android/gms/internal/zzur$15;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/gms/internal/zzur$15;-><init>(Lcom/google/android/gms/internal/zzur;Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/reminders/model/TaskId;)V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->zza(Lcom/google/android/gms/internal/zzmc$zza;)Lcom/google/android/gms/internal/zzmc$zza;

    move-result-object v0

    return-object v0
.end method

.method public loadReminders(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/reminders/LoadRemindersOptions;)Lcom/google/android/gms/common/api/PendingResult;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/GoogleApiClient;",
            "Lcom/google/android/gms/reminders/LoadRemindersOptions;",
            ")",
            "Lcom/google/android/gms/common/api/PendingResult",
            "<",
            "Lcom/google/android/gms/reminders/RemindersApi$LoadRemindersResult;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/zzur$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/gms/internal/zzur$1;-><init>(Lcom/google/android/gms/internal/zzur;Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/reminders/LoadRemindersOptions;)V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->zza(Lcom/google/android/gms/internal/zzmc$zza;)Lcom/google/android/gms/internal/zzmc$zza;

    move-result-object v0

    return-object v0
.end method

.method public makeTaskRecurring(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/reminders/model/TaskId;Ljava/lang/String;Lcom/google/android/gms/reminders/model/Recurrence;Lcom/google/android/gms/reminders/model/Task;)Lcom/google/android/gms/common/api/PendingResult;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/GoogleApiClient;",
            "Lcom/google/android/gms/reminders/model/TaskId;",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/reminders/model/Recurrence;",
            "Lcom/google/android/gms/reminders/model/Task;",
            ")",
            "Lcom/google/android/gms/common/api/PendingResult",
            "<",
            "Lcom/google/android/gms/common/api/Status;",
            ">;"
        }
    .end annotation

    const-string v0, "task_id required"

    invoke-static {p2, v0}, Lcom/google/android/gms/common/internal/zzx;->zzb(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "recurrence required"

    invoke-static {p4, v0}, Lcom/google/android/gms/common/internal/zzx;->zzb(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "task required"

    invoke-static {p5, v0}, Lcom/google/android/gms/common/internal/zzx;->zzb(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {p5}, Lcom/google/android/gms/reminders/model/Task;->getDeleted()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string v1, "Task.deleted field is readonly."

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/zzx;->zzb(ZLjava/lang/Object;)V

    invoke-interface {p5}, Lcom/google/android/gms/reminders/model/Task;->getTaskList()Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "Must set task list"

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/zzx;->zzb(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p3}, Lcom/google/android/gms/internal/zzur;->zzgR(Ljava/lang/String;)V

    invoke-static {p4}, Lcom/google/android/gms/internal/zzur;->zza(Lcom/google/android/gms/reminders/model/Recurrence;)V

    invoke-static {p5}, Lcom/google/android/gms/internal/zzur;->zza(Lcom/google/android/gms/reminders/model/Task;)V

    new-instance v0, Lcom/google/android/gms/reminders/model/Task$Builder;

    invoke-direct {v0, p5}, Lcom/google/android/gms/reminders/model/Task$Builder;-><init>(Lcom/google/android/gms/reminders/model/Task;)V

    invoke-virtual {v0, p2}, Lcom/google/android/gms/reminders/model/Task$Builder;->setTaskId(Lcom/google/android/gms/reminders/model/TaskId;)Lcom/google/android/gms/reminders/model/Task$Builder;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/reminders/model/RecurrenceInfo$Builder;

    invoke-direct {v1}, Lcom/google/android/gms/reminders/model/RecurrenceInfo$Builder;-><init>()V

    invoke-virtual {v1, p3}, Lcom/google/android/gms/reminders/model/RecurrenceInfo$Builder;->setRecurrenceId(Ljava/lang/String;)Lcom/google/android/gms/reminders/model/RecurrenceInfo$Builder;

    move-result-object v1

    invoke-virtual {v1, p4}, Lcom/google/android/gms/reminders/model/RecurrenceInfo$Builder;->setRecurrence(Lcom/google/android/gms/reminders/model/Recurrence;)Lcom/google/android/gms/reminders/model/RecurrenceInfo$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/reminders/model/RecurrenceInfo$Builder;->build()Lcom/google/android/gms/reminders/model/RecurrenceInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/reminders/model/Task$Builder;->setRecurrenceInfo(Lcom/google/android/gms/reminders/model/RecurrenceInfo;)Lcom/google/android/gms/reminders/model/Task$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/reminders/model/Task$Builder;->build()Lcom/google/android/gms/reminders/model/Task;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/zzur;->zzb(Lcom/google/android/gms/reminders/model/Task;)Lcom/google/android/gms/reminders/model/Task;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/zzur$4;

    invoke-direct {v1, p0, p1, v0}, Lcom/google/android/gms/internal/zzur$4;-><init>(Lcom/google/android/gms/internal/zzur;Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/reminders/model/Task;)V

    invoke-virtual {p1, v1}, Lcom/google/android/gms/common/api/GoogleApiClient;->zza(Lcom/google/android/gms/internal/zzmc$zza;)Lcom/google/android/gms/internal/zzmc$zza;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public updateRecurrence(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;Lcom/google/android/gms/reminders/model/Task;Lcom/google/android/gms/reminders/UpdateRecurrenceOptions;)Lcom/google/android/gms/common/api/PendingResult;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/GoogleApiClient;",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/reminders/model/Task;",
            "Lcom/google/android/gms/reminders/UpdateRecurrenceOptions;",
            ")",
            "Lcom/google/android/gms/common/api/PendingResult",
            "<",
            "Lcom/google/android/gms/common/api/Status;",
            ">;"
        }
    .end annotation

    const-string v0, "Must provide client-assigned recurrence id."

    invoke-static {p2, v0}, Lcom/google/android/gms/common/internal/zzx;->zzb(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "Must provide new task template"

    invoke-static {p3, v0}, Lcom/google/android/gms/common/internal/zzx;->zzb(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "updateRecurrenceOption required"

    invoke-static {p4, v0}, Lcom/google/android/gms/common/internal/zzx;->zzb(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p3}, Lcom/google/android/gms/internal/zzur;->zzb(Lcom/google/android/gms/reminders/model/Task;)Lcom/google/android/gms/reminders/model/Task;

    move-result-object v4

    new-instance v0, Lcom/google/android/gms/internal/zzur$19;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/zzur$19;-><init>(Lcom/google/android/gms/internal/zzur;Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;Lcom/google/android/gms/reminders/model/Task;Lcom/google/android/gms/reminders/UpdateRecurrenceOptions;)V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->zza(Lcom/google/android/gms/internal/zzmc$zza;)Lcom/google/android/gms/internal/zzmc$zza;

    move-result-object v0

    return-object v0
.end method

.method public updateReminder(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/reminders/model/Task;)Lcom/google/android/gms/common/api/PendingResult;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/GoogleApiClient;",
            "Lcom/google/android/gms/reminders/model/Task;",
            ")",
            "Lcom/google/android/gms/common/api/PendingResult",
            "<",
            "Lcom/google/android/gms/common/api/Status;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/google/android/gms/reminders/model/Task;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/zzur;->batchUpdateReminder(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/util/List;)Lcom/google/android/gms/common/api/PendingResult;

    move-result-object v0

    return-object v0
.end method
