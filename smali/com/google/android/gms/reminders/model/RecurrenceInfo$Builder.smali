.class public Lcom/google/android/gms/reminders/model/RecurrenceInfo$Builder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/reminders/model/RecurrenceInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private zzbBL:Lcom/google/android/gms/reminders/model/Recurrence;

.field private zzbBM:Ljava/lang/String;

.field private zzbBN:Ljava/lang/Boolean;

.field private zzbBO:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/reminders/model/RecurrenceInfo;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-interface {p1}, Lcom/google/android/gms/reminders/model/RecurrenceInfo;->getRecurrence()Lcom/google/android/gms/reminders/model/Recurrence;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lcom/google/android/gms/reminders/model/RecurrenceInfo$Builder;->zzbBL:Lcom/google/android/gms/reminders/model/Recurrence;

    invoke-interface {p1}, Lcom/google/android/gms/reminders/model/RecurrenceInfo;->getRecurrenceId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/reminders/model/RecurrenceInfo$Builder;->zzbBM:Ljava/lang/String;

    invoke-interface {p1}, Lcom/google/android/gms/reminders/model/RecurrenceInfo;->getMaster()Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/reminders/model/RecurrenceInfo$Builder;->zzbBN:Ljava/lang/Boolean;

    invoke-interface {p1}, Lcom/google/android/gms/reminders/model/RecurrenceInfo;->getExceptional()Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/reminders/model/RecurrenceInfo$Builder;->zzbBO:Ljava/lang/Boolean;

    return-void

    :cond_0
    new-instance v0, Lcom/google/android/gms/reminders/model/RecurrenceEntity;

    invoke-interface {p1}, Lcom/google/android/gms/reminders/model/RecurrenceInfo;->getRecurrence()Lcom/google/android/gms/reminders/model/Recurrence;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/reminders/model/RecurrenceEntity;-><init>(Lcom/google/android/gms/reminders/model/Recurrence;)V

    goto :goto_0
.end method


# virtual methods
.method public build()Lcom/google/android/gms/reminders/model/RecurrenceInfo;
    .locals 6

    new-instance v0, Lcom/google/android/gms/reminders/model/RecurrenceInfoEntity;

    iget-object v1, p0, Lcom/google/android/gms/reminders/model/RecurrenceInfo$Builder;->zzbBL:Lcom/google/android/gms/reminders/model/Recurrence;

    iget-object v2, p0, Lcom/google/android/gms/reminders/model/RecurrenceInfo$Builder;->zzbBM:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/gms/reminders/model/RecurrenceInfo$Builder;->zzbBN:Ljava/lang/Boolean;

    iget-object v4, p0, Lcom/google/android/gms/reminders/model/RecurrenceInfo$Builder;->zzbBO:Ljava/lang/Boolean;

    const/4 v5, 0x1

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/reminders/model/RecurrenceInfoEntity;-><init>(Lcom/google/android/gms/reminders/model/Recurrence;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Z)V

    return-object v0
.end method

.method public setMaster(Ljava/lang/Boolean;)Lcom/google/android/gms/reminders/model/RecurrenceInfo$Builder;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/reminders/model/RecurrenceInfo$Builder;->zzbBN:Ljava/lang/Boolean;

    return-object p0
.end method

.method public setRecurrence(Lcom/google/android/gms/reminders/model/Recurrence;)Lcom/google/android/gms/reminders/model/RecurrenceInfo$Builder;
    .locals 1

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/google/android/gms/reminders/model/Recurrence;->freeze()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/reminders/model/Recurrence;

    :goto_0
    iput-object v0, p0, Lcom/google/android/gms/reminders/model/RecurrenceInfo$Builder;->zzbBL:Lcom/google/android/gms/reminders/model/Recurrence;

    return-object p0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setRecurrenceId(Ljava/lang/String;)Lcom/google/android/gms/reminders/model/RecurrenceInfo$Builder;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/reminders/model/RecurrenceInfo$Builder;->zzbBM:Ljava/lang/String;

    return-object p0
.end method
