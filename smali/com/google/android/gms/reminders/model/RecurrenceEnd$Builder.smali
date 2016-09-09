.class public Lcom/google/android/gms/reminders/model/RecurrenceEnd$Builder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/reminders/model/RecurrenceEnd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private zzbBA:Ljava/lang/Integer;

.field private zzbBB:Ljava/lang/Boolean;

.field private zzbBC:Lcom/google/android/gms/reminders/model/DateTime;

.field private zzbBz:Lcom/google/android/gms/reminders/model/DateTime;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/reminders/model/RecurrenceEnd;)V
    .locals 3

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-interface {p1}, Lcom/google/android/gms/reminders/model/RecurrenceEnd;->getEndDateTime()Lcom/google/android/gms/reminders/model/DateTime;

    move-result-object v0

    if-nez v0, :cond_0

    move-object v0, v1

    :goto_0
    iput-object v0, p0, Lcom/google/android/gms/reminders/model/RecurrenceEnd$Builder;->zzbBz:Lcom/google/android/gms/reminders/model/DateTime;

    invoke-interface {p1}, Lcom/google/android/gms/reminders/model/RecurrenceEnd;->getNumOccurrences()Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/reminders/model/RecurrenceEnd$Builder;->zzbBA:Ljava/lang/Integer;

    invoke-interface {p1}, Lcom/google/android/gms/reminders/model/RecurrenceEnd;->getAutoRenew()Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/reminders/model/RecurrenceEnd$Builder;->zzbBB:Ljava/lang/Boolean;

    invoke-interface {p1}, Lcom/google/android/gms/reminders/model/RecurrenceEnd;->getAutoRenewUntil()Lcom/google/android/gms/reminders/model/DateTime;

    move-result-object v0

    if-nez v0, :cond_1

    :goto_1
    iput-object v1, p0, Lcom/google/android/gms/reminders/model/RecurrenceEnd$Builder;->zzbBC:Lcom/google/android/gms/reminders/model/DateTime;

    return-void

    :cond_0
    new-instance v0, Lcom/google/android/gms/reminders/model/DateTimeEntity;

    invoke-interface {p1}, Lcom/google/android/gms/reminders/model/RecurrenceEnd;->getEndDateTime()Lcom/google/android/gms/reminders/model/DateTime;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/google/android/gms/reminders/model/DateTimeEntity;-><init>(Lcom/google/android/gms/reminders/model/DateTime;)V

    goto :goto_0

    :cond_1
    new-instance v1, Lcom/google/android/gms/reminders/model/DateTimeEntity;

    invoke-interface {p1}, Lcom/google/android/gms/reminders/model/RecurrenceEnd;->getAutoRenewUntil()Lcom/google/android/gms/reminders/model/DateTime;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/google/android/gms/reminders/model/DateTimeEntity;-><init>(Lcom/google/android/gms/reminders/model/DateTime;)V

    goto :goto_1
.end method


# virtual methods
.method public build()Lcom/google/android/gms/reminders/model/RecurrenceEnd;
    .locals 6

    new-instance v0, Lcom/google/android/gms/reminders/model/RecurrenceEndEntity;

    iget-object v1, p0, Lcom/google/android/gms/reminders/model/RecurrenceEnd$Builder;->zzbBz:Lcom/google/android/gms/reminders/model/DateTime;

    iget-object v2, p0, Lcom/google/android/gms/reminders/model/RecurrenceEnd$Builder;->zzbBA:Ljava/lang/Integer;

    iget-object v3, p0, Lcom/google/android/gms/reminders/model/RecurrenceEnd$Builder;->zzbBB:Ljava/lang/Boolean;

    iget-object v4, p0, Lcom/google/android/gms/reminders/model/RecurrenceEnd$Builder;->zzbBC:Lcom/google/android/gms/reminders/model/DateTime;

    const/4 v5, 0x1

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/reminders/model/RecurrenceEndEntity;-><init>(Lcom/google/android/gms/reminders/model/DateTime;Ljava/lang/Integer;Ljava/lang/Boolean;Lcom/google/android/gms/reminders/model/DateTime;Z)V

    return-object v0
.end method

.method public setEndDateTime(Lcom/google/android/gms/reminders/model/DateTime;)Lcom/google/android/gms/reminders/model/RecurrenceEnd$Builder;
    .locals 1

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/google/android/gms/reminders/model/DateTime;->freeze()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/reminders/model/DateTime;

    :goto_0
    iput-object v0, p0, Lcom/google/android/gms/reminders/model/RecurrenceEnd$Builder;->zzbBz:Lcom/google/android/gms/reminders/model/DateTime;

    return-object p0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setNumOccurrences(Ljava/lang/Integer;)Lcom/google/android/gms/reminders/model/RecurrenceEnd$Builder;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/reminders/model/RecurrenceEnd$Builder;->zzbBA:Ljava/lang/Integer;

    return-object p0
.end method
