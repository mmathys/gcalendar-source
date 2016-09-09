.class public Lcom/google/android/gms/reminders/model/ReminderEventBuffer;
.super Lcom/google/android/gms/common/data/AbstractDataBuffer;

# interfaces
.implements Lcom/google/android/gms/common/api/Result;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/common/data/AbstractDataBuffer",
        "<",
        "Lcom/google/android/gms/reminders/model/ReminderEvent;",
        ">;",
        "Lcom/google/android/gms/common/api/Result;"
    }
.end annotation


# instance fields
.field private final zzQm:Lcom/google/android/gms/common/api/Status;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/data/DataHolder;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/google/android/gms/common/data/AbstractDataBuffer;-><init>(Lcom/google/android/gms/common/data/DataHolder;)V

    new-instance v0, Lcom/google/android/gms/common/api/Status;

    invoke-virtual {p1}, Lcom/google/android/gms/common/data/DataHolder;->getStatusCode()I

    move-result v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/common/api/Status;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/gms/reminders/model/ReminderEventBuffer;->zzQm:Lcom/google/android/gms/common/api/Status;

    return-void
.end method


# virtual methods
.method public get(I)Lcom/google/android/gms/reminders/model/ReminderEvent;
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/zzum;

    iget-object v1, p0, Lcom/google/android/gms/reminders/model/ReminderEventBuffer;->mDataHolder:Lcom/google/android/gms/common/data/DataHolder;

    invoke-direct {v0, v1, p1}, Lcom/google/android/gms/internal/zzum;-><init>(Lcom/google/android/gms/common/data/DataHolder;I)V

    return-object v0
.end method

.method public bridge synthetic get(I)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/reminders/model/ReminderEventBuffer;->get(I)Lcom/google/android/gms/reminders/model/ReminderEvent;

    move-result-object v0

    return-object v0
.end method

.method public getStatus()Lcom/google/android/gms/common/api/Status;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/reminders/model/ReminderEventBuffer;->zzQm:Lcom/google/android/gms/common/api/Status;

    return-object v0
.end method
