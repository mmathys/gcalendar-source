.class public final Lcom/google/android/gms/internal/zzum;
.super Lcom/google/android/gms/reminders/internal/ref/zza;

# interfaces
.implements Lcom/google/android/gms/reminders/model/ReminderEvent;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/data/DataHolder;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/reminders/internal/ref/zza;-><init>(Lcom/google/android/gms/common/data/DataHolder;I)V

    return-void
.end method


# virtual methods
.method public synthetic freeze()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzum;->zzGf()Lcom/google/android/gms/reminders/model/ReminderEvent;

    move-result-object v0

    return-object v0
.end method

.method public getAccountName()Ljava/lang/String;
    .locals 1

    const-string v0, "account_name"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzum;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTask()Lcom/google/android/gms/reminders/model/Task;
    .locals 3

    new-instance v0, Lcom/google/android/gms/reminders/internal/ref/TaskRef;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzum;->mDataHolder:Lcom/google/android/gms/common/data/DataHolder;

    iget v2, p0, Lcom/google/android/gms/internal/zzum;->zzamp:I

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/reminders/internal/ref/TaskRef;-><init>(Lcom/google/android/gms/common/data/DataHolder;I)V

    return-object v0
.end method

.method public getType()I
    .locals 2

    const/4 v0, 0x1

    const-string v1, "deleted"

    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/zzum;->getInteger(Ljava/lang/String;)I

    move-result v1

    if-ne v1, v0, :cond_0

    const/4 v0, 0x2

    :cond_0
    return v0
.end method

.method public zzGf()Lcom/google/android/gms/reminders/model/ReminderEvent;
    .locals 1

    new-instance v0, Lcom/google/android/gms/reminders/model/ReminderEventEntity;

    invoke-direct {v0, p0}, Lcom/google/android/gms/reminders/model/ReminderEventEntity;-><init>(Lcom/google/android/gms/reminders/model/ReminderEvent;)V

    return-object v0
.end method
